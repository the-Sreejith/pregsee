// 🎯 Dart imports:
import 'dart:developer';

// 🐦 Flutter imports:
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pregsee/Services/LocalNotification.dart';
import 'package:pregsee/Services/PushNotification.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
// import 'package:workmanager/workmanager.dart';

// 🌎 Project imports:
import './Const/AppConst.dart';
import './Screens/Home_screen/home.dart';
import './Screens/Login/login_page.dart';
import './Screens/Splash_screen/splash_screen.dart';
import './bloc/Authentication/authentication_bloc.dart';
import './bloc/bloc_observer.dart';
import './data/user_repository.dart';
import './route_generator.dart';
import '/bloc/SimpleLoader/bloc/course_loader_bloc.dart';
import 'ChangeNotifierControllers/week_by_week_controller.dart';
import 'Models/UserModel.dart';
import 'bloc/SimpleLoader/bloc/daily_tips_loader_bloc.dart';
import 'bloc/SimpleLoader/bloc/recommended_videos_loader_bloc.dart';
import 'bloc/SimpleLoader/bloc/week_info_loader_bloc.dart';
import 'bloc/SimpleLoader/simpleloader_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Bloc.observer = AppBlocObserver();
  UserRepository userRepository = UserRepository();

  // TODO:Remove this line after all users have migrated
  userRepository.checkFCMToken();

  FirebaseMessaging.instance.onTokenRefresh
      .listen((token) => userRepository.onFCMTokenChange(token));

  LocalNotification().intialise();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) =>
            AuthenticationBloc(userRepository)..add(AppStarted()),
      ),
      BlocProvider(
        create: (context) => WeekInfoLoaderBloc()..add(StartLoading()),
      ),
    ],
    child: MyApp(userRepository: userRepository),
  ));
}

class MyApp extends StatefulWidget {
  final UserRepository _userRepository;

  MyApp( UserRepository userRepository,Key key)
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UserRepository get userRepository => widget._userRepository;

  @override
  void initState() {
    super.initState();
    PushNotificationService notificationService = PushNotificationService();
    notificationService.setNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<WeekByWeekController>(
              create: (context) => WeekByWeekController(),
            ),
            Provider<UserModel>.value(
              value: state is Authenticated ? state.user : null,
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: (context) =>
                      RecommendedVideosLoaderBloc()..add(StartLoading())),
              BlocProvider(
                  create: (context) =>
                      DailyTipsLoaderBloc()..add(StartLoading())),
              BlocProvider(
                  create: (context) => CourseLoaderBloc()..add(StartLoading())),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Pregsee',
              theme: ThemeData(
                // buttonColor: Color(0xff841150),
                primaryColor: AppColors.primary,
                fontFamily: 'Montserrat',
                // textTheme: GoogleFonts.montserratTextTheme(
                //   Theme.of(context).textTheme,
                // ),
                bottomSheetTheme: const BottomSheetThemeData(
                  backgroundColor: Colors.transparent,
                ),
              ),
              home: getBody(state, userRepository),
              initialRoute: '/',
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          ),
        );
      },
    );
  }
}

getBody(AuthenticationState state, UserRepository userRepository) {
  if (state is Uninitialized) {
    return SplashScreen();
  } else if (state is Unauthenticated) {
    return LoginPage(
      userRepository: userRepository,
    );
  } else if (state is Authenticated) {
    log(state.user.toString());
    return Home();
  } else {
    return SplashScreen();
  }
}
