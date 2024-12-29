// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '../../Const/AppConst.dart';
import '../../Screens/App_intro/app_intro.dart';
import '../../bloc/Authentication/authentication_bloc.dart';
import '../../bloc/Login/login_bloc.dart';
import '../../data/user_repository.dart';
import './Pages/page_barrel.dart';

const TextStyle errorStyle =
    TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold);

class LoginPage extends StatelessWidget {
  final UserRepository userRepository;

  LoginPage({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(userRepository),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  LoginBloc _loginBloc;
  String phone = '';
  String lang, selectedCategory;
  DateTime dueDate;
  String errorText = '';
  TextEditingController _textEditingController;
  int step = 1;

  @override
  void initState() {
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    // _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _loginBloc.close();
    _textEditingController.dispose();
    super.dispose();
  }

  void _blocListener(BuildContext context, LoginState loginState) {
    if (loginState is ExceptionState || loginState is OtpExceptionState) {
      String message;
      if (loginState is ExceptionState) {
        message = loginState.message;
      } else if (loginState is OtpExceptionState) {
        message = loginState.message;
      }
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Expanded(child: Text(message)), Icon(Icons.error)],
            ),
            backgroundColor: Colors.red,
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      bloc: _loginBloc,
      listener: _blocListener,
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is InitialLoginState) {
            return AppIntro();
          }
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: <Widget>[
                  Row(children: [
                    Text('$step/6'),
                    SizedBox(width: 8),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: LinearProgressIndicator(
                          value: (step - 0.1) / 6,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(AppColors.primary),
                          minHeight: 15,
                        ),
                      ),
                    )
                  ]),
                  getViewAsPerState(state),
                  Padding(
                    padding: const EdgeInsets.only(bottom:18),
                    child:errorText!=''? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          color: Colors.red,
                        ),
                        SizedBox(width: 8),
                        SizedBox(
                          width: 300,
                          child: Text(
                            errorText,
                            style: errorStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ):SizedBox(),
                  ),
                  if (showNxtBtn(state))
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(170, 52),
                        primary: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        onNextPressed(state);
                      },
                      child: Text(
                        'Next',
                        style: AppFontStyles.buttontext,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // TODO:convert to switch or make it clean
  getViewAsPerState(LoginState state) {
    if (state is SelectLanguageState) {
      return LanguagePage(onLangChange);
    } else if (state is EnterPhoneNoState) {
      return PhoneNumberInputPage(onPhoneNumberChange);
    } else if (state is OtpSentState || state is OtpExceptionState) {
      return OTPInputPage();
    } else if (state is NameInputState) {
      _textEditingController = TextEditingController(text: state.userName);
      return NameInputPage(_textEditingController);
    } else if (state is DueDateInputState) {
      return DuedateInputPage(onDueDateChanged);
    } else if (state is DueDateCalculateState) {
      // TODO:create a duedate calculate page
      // return DueDateCalculateState();
    } else if (state is CategorySelectState) {
      return CategorySelectPage(onCategoryChange);
    } else if (state is LoadingState) {
      return LoadingIndicator();
    } else if (state is LoginCompleteState) {
      return const SizedBox();
    } else {
      return PhoneNumberInputPage(onPhoneNumberChange);
    }
  }

  onNextPressed(LoginState state) {
    if (state is SelectLanguageState) {
      if (lang != null) {
        BlocProvider.of<LoginBloc>(context).add(LangSelectedEvent(lang));
        setState(() {
          errorText = '';
          step = 2;
        });
      } else {
        setState(() {
          errorText = 'Select a Language';
        });
      }
    } else if (state is EnterPhoneNoState || state is ExceptionState) {
      if (phone != '') {
        BlocProvider.of<LoginBloc>(context).add(SendOtpEvent(phoNo: phone));
        setState(() {
          errorText = '';
          step = 4;
        });
      } else {
        setState(() {
          errorText = 'Please enter a valid phone number';
        });
      }
    } else if (state is OtpSentState || state is OtpExceptionState) {
      BlocProvider.of<LoginBloc>(context).add(AppStartEvent());
    } else if (state is NameInputState) {
      if (_textEditingController.text != '' ||
          _textEditingController.text != null) {
        BlocProvider.of<LoginBloc>(context)
            .add(NameEnteredEvent(_textEditingController.text));
        setState(() {
          errorText = '';
          step = 5;
        });
      } else {
        setState(() {
          errorText = 'Please enter your name';
        });
      }
    } else if (state is CategorySelectState) {
      if (selectedCategory != null) {
        BlocProvider.of<LoginBloc>(context)
            .add(CategorySelectedEvent(selectedCategory));
        setState(() {
          errorText = '';
          step = 6;
        });
      } else {
        setState(() {
          errorText = 'Select a Category';
        });
      }
    } else if (state is DueDateInputState) {
      // DateFormat('dd-MM-yyyy').format(date)
      var minDate = DateTime.now();
      var maxDate = DateTime.now().add(Duration(days: 280));
      if (dueDate != null &&
          dueDate.isAfter(minDate) &&
          dueDate.isBefore(maxDate)) {
        BlocProvider.of<LoginBloc>(context).add(DueDateEnteredEvent(dueDate));
        BlocProvider.of<AuthenticationBloc>(context).add(LoggedIn());
        setState(() {
          errorText = '';
        });
      } else {
        setState(() {
          errorText = 'Date has to be between ${getFormatedDate(minDate)} and ${getFormatedDate(maxDate)}';
        });
      }
    } else if (state is LoadingState) {
      // return LoadingIndicator();
    } else if (state is LoginCompleteState) {
      // return const SizedBox();
    } else {
      // return NumberInput();
    }
  }

  void onPhoneNumberChange(String number, String internationalizedPhoneNumber,
      String isoCode, String dialCode) {
    setState(() {
      phone = internationalizedPhoneNumber;
    });
  }

  void onLangChange(String value) {
    setState(() {
      lang = value;
    });
  }

  void onCategoryChange(String value) {
    setState(() {
      selectedCategory = value;
    });
  }

  void onDueDateChanged(DateTime value) {
    setState(() {
      dueDate = value;
    });
  }

  showNxtBtn(LoginState state) {
    if (state is OtpSentState || state is LoadingState) {
      return false;
    }
    return true;
  }
}

String getFormatedDate(DateTime date){
  return DateFormat('dd-MM-yyyy').format(date);
}

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
