// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:animations/animations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// 🌎 Project imports:
import '/Const/AppConst.dart';
import '/Models/CourseModel.dart';
import '/Models/DailyTips.dart';
import '/Models/ReccomendedVideo.dart';
import '/Models/WeekInfo.dart';
import '/Screens/Home_Screen/HomePage/Widgets/daily_tips.dart';
import '/Widget/error_widget.dart';
import '/bloc/SimpleLoader/bloc/course_loader_bloc.dart';
import '/bloc/SimpleLoader/bloc/daily_tips_loader_bloc.dart';
import '/bloc/SimpleLoader/bloc/recommended_videos_loader_bloc.dart';
import '/bloc/SimpleLoader/bloc/week_info_loader_bloc.dart';
import '/bloc/SimpleLoader/simpleloader_bloc.dart';
import '/data/course_repository.dart';
import '/data/daily_tips_repository.dart';
import 'Widgets/category_card.dart';
import 'Widgets/recommendation_card.dart';
import 'Widgets/week_info_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _RecommendationSection(),
            _DailyTipsSection(),
            _CategorySection(),
            _WeekByWeekSection(),
          ],
        ),
      ),
    );
  }
  //TODO:Build the search box for v2
  // Widget _buildSearchBox() {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 24),
  //     child: Container(
  //       height: 56,
  //       decoration: BoxDecoration(
  //         borderRadius: const BorderRadius.all(Radius.circular(13)),
  //         border: Border.all(
  //           color: Color(0xFFE0E0E0),
  //         ),
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 24.0),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               'Search for Content',
  //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
  //             ),
  //             Icon(AppIcons.search_outline)
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

String _getAssetUrl(int index) {
  switch (index) {
    case 0:
      return 'assets/images/first_trimester.png';
      break;
    case 1:
      return 'assets/images/second_trimester.png';
      break;
    case 2:
      return 'assets/images/third_trimester.png';
      break;
    case 3:
      return 'assets/images/exercise.png';
      break;
    case 4:
      return 'assets/images/labour_and_delivery.png';
      break;
    default:
      return 'assets/images/first_trimester.png';
      break;
  }
}

class _DailyTipsSection extends StatelessWidget {
  _DailyTipsSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 24, bottom: 16),
          child: Text(
            'Daily Tips',
            style: AppFontStyles.headtext,
          ),
        ),
        Container(
          child: BlocBuilder<DailyTipsLoaderBloc, SimpleloaderState>(
            builder: (context, state) {
              if (state is SimpleloaderLoaded) {
                List<DailyTips> _data = state.data;
                return DailyTipsCard(_data);
              }
              if (state is SimpleloaderError) {
                return Container(
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.warning_amber_rounded,
                          size: 48,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Uh Oh',
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w700,
                              fontSize: 24),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Can\'t get the data right now\n keep calm and try again',
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Container(
                height: 200,
                child: Center(
                  child: SpinKitThreeBounce(
                    color: AppColors.primary,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _RecommendationSection extends StatefulWidget {
  @override
  _RecommendationSectionState createState() => _RecommendationSectionState();
}

class _RecommendationSectionState extends State<_RecommendationSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 24, bottom: 16),
          child: Text(
            'Recommended Videos',
            style: AppFontStyles.headtext,
          ),
        ),
        Container(
            height: 103,
            child: BlocBuilder<RecommendedVideosLoaderBloc, SimpleloaderState>(
              builder: (context, state) {
                if (state is SimpleloaderLoaded) {
                  final List<RecommendedVideo> videoList = state.data;
                  return Container(
                    height: 103,
                    child: ListView.builder(
                      itemCount: videoList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        print(videoList[index]);
                        return RecommendationCard(
                          item: videoList[index],
                        );
                      },
                    ),
                  );
                }
                return Center(
                  child: const SpinKitThreeBounce(color: AppColors.primary),
                );
              },
            )),
      ],
    );
  }
}

class _CategorySection extends StatefulWidget {
  @override
  _CategorySectionState createState() => _CategorySectionState();
}

class _CategorySectionState extends State<_CategorySection> {
  CourseContentRepository _repository = CourseContentRepository();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 259,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 30),
            child: Text(
              'Category',
              style: AppFontStyles.headtext,
            ),
          ),
          BlocBuilder<CourseLoaderBloc, SimpleloaderState>(
            builder: (context, state) {
              if (state is SimpleloaderLoaded && state.data != []) {
                List<CourseModel> _list = state.data;
                return Container(
                  height: 207,
                  child: ListView.builder(
                    itemCount: _list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      CourseModel _model = _list[index];
                      _model.imgUrl = _getAssetUrl(index);
                      return CategoryCard(
                        courseModel: _model,
                      );
                    },
                  ),
                );
              }
              return Expanded(
                child: Center(
                  child: const SpinKitThreeBounce(color: AppColors.primary),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _WeekByWeekSection extends StatelessWidget {
  _WeekByWeekSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 30),
            child: Text(
              'Week by week',
              style: AppFontStyles.headtext,
            ),
          ),
          BlocBuilder<WeekInfoLoaderBloc, SimpleloaderState>(
            // bloc: WeekInfoLoaderBloc()..add(StartLoading()),
            builder: (context, state) {
              if (state is SimpleloaderLoading) {
                return Container(
                  width: double.infinity,
                  height: 400,
                  child: Center(
                    child: const SpinKitThreeBounce(color: AppColors.primary),
                  ),
                );
              }
              if (state is SimpleloaderLoaded) {
                return WeekByWeekContainer(
                  data: state.data,
                );
              }
              return CustomErrorWidget();
            },
          ),
        ],
      ),
    );
  }
}

class WeekByWeekContainer extends StatelessWidget {
  final List<WeekInfo> data;
  const WeekByWeekContainer({
    this.data,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedBuilder: (_, openContainer) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          padding: const EdgeInsets.only(top: 26),
          decoration: BoxDecoration(
            gradient: AppGradient.primaryGradient,
            borderRadius: const BorderRadius.all(Radius.circular(40)),
          ),
          child: WeekInfoCard(data),
        );
      },
      openBuilder: (_, closeContainer) {
        return Container(
          decoration: BoxDecoration(
            gradient: AppGradient.primaryGradient,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: WeekInfoCard(
                data,
                showFullData: true,
              ),
            ),
          ),
        );
      },
    );
  }
}
