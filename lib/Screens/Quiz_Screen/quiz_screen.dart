// 🎯 Dart imports:
import 'dart:ui';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/Const/AppConst.dart';
import '/Models/CourseContent.dart';
import 'Widgets/option.dart';

class QuizScreen extends StatefulWidget {
  final List<Question> questions;
  QuizScreen(this.questions);
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuesOption> _status;
  int currentIndex = 0, noOfCorrectAnswer = 0;
  Question currentQuestion;
  bool isCurrentAnswered = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = widget.questions[currentIndex];
    _status = List.generate(
        currentQuestion.options.length, (index) => QuesOption.initial);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: AppGradient.primaryGradient,
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: LinearProgressIndicator(
                      color: AppColors.secoundry,
                      value: (currentIndex + 1) / widget.questions.length,
                      minHeight: 18,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 12,
                      bottom: 30,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Question ${currentIndex + 1}',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFCDE9FF),
                            ),
                          ),
                          TextSpan(
                            text: '/ ${widget.questions.length}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFD8D8D8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    currentQuestion.question,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Spacer(),
                  ...List.generate(
                    currentQuestion.options.length,
                    (index) => Option(
                      text: currentQuestion.options[index],
                      index: index,
                      optionStatus: _status[index],
                      onPress: () {
                        _quizAnswered(index);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                    ),
                    child: GestureDetector(
                      onTap: _nextQuestion,
                      child: Text(
                        'Skip Question',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      onWillPop: _willPopCallback,
    );
  }

  Future<bool> _willPopCallback() async {
    final value = await showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
                "Are you sure you want to exit? The  progress won't be saved"),
            actions: <Widget>[
              TextButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: Text('Yes, exit'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
    return value == true;
  }

  _nextQuestion() {
    if (widget.questions.length > (currentIndex+1)) {
      setState(() {
        currentIndex++;
        currentQuestion = widget.questions[currentIndex];
        isCurrentAnswered = false;
        _status = List.generate(
          currentQuestion.options.length,
          (index) => QuesOption.initial,
        );
      });
    } else {
      // Navigator.popUntil(context, ModalRoute.withName('/coursePlayer'));
      Navigator.popAndPushNamed(context,'/diamondEarned',arguments: noOfCorrectAnswer);
      // Navigator.pop(context);
    }
  }

  _quizAnswered(int answeredOptionIndex) {
    if (!isCurrentAnswered) {
      isCurrentAnswered = true;
      if (answeredOptionIndex == currentQuestion.answer) {
        setState(() {
          _status[answeredOptionIndex] = QuesOption.correct;
          noOfCorrectAnswer++;
        });
        _showBottomSheet(
          isCorrect: true,
          reason: 'You did a great job, Keep it up',
        );
      } else {
        setState(() {
          _status[answeredOptionIndex] = QuesOption.incorrect;
          _status[currentQuestion.answer] = QuesOption.correct;
        });
        _showBottomSheet(
          isCorrect: false,
          reason:
              'This is the reason for the being wrong in the first place, If you are good in the topic go watch the videos of this topic',
        );
      }
    }
  }

  _showBottomSheet({bool isCorrect, String reason}) {
    showModalBottomSheet(
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async {
            final bool foo = await _willPopCallback();
            if (foo) {
              Navigator.pop(context);
              Navigator.pop(context);
              return true;
            } else {
              return false;
            }
          },
          child: _ResultBottomSheetWidget(
            isCorrect: isCorrect,
            reason: reason,
            onTap: () {
              Navigator.of(context).pop();
              _nextQuestion();
            },
          ),
        );
      },
    );
  }

  // PageController _pageController;
  // List<Question> questions;
  // int _currentPage;
  // List<Answer> _progress = [];

  // @override
  // void initState() {
  //   questions = widget.questions;
  //   _currentPage = 1;
  //   _pageController = PageController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return WillPopScope(
  //     child: SafeArea(
  //       child: Scaffold(
  //         body: Container(
  //           decoration: BoxDecoration(
  //             color: Color(0xFFCAE7FE),
  //             image: DecorationImage(
  //               image: AssetImage('assets/images/quiz_bg.png'),
  //               repeat: ImageRepeat.repeat,
  //               colorFilter: new ColorFilter.mode(
  //                   Colors.black.withOpacity(0.2), BlendMode.dstATop),
  //             ),
  //           ),
  //           child: Column(
  //             children: [
  //               Flexible(
  //                 flex: 1,
  //                 child: Container(
  //                   padding:
  //                       const EdgeInsets.only(left: 24, top: 10, right: 10),
  //                   child: Row(
  //                     children: [
  //                       Flexible(
  //                         child: ClipRRect(
  //                           borderRadius: BorderRadius.all(Radius.circular(10)),
  //                           child: LinearProgressIndicator(
  //                             value: (_currentPage) / questions.length,
  //                             backgroundColor: Colors.black12,
  //                             valueColor: AlwaysStoppedAnimation<Color>(
  //                                 AppColors.primary),
  //                             minHeight: 12,
  //                           ),
  //                         ),
  //                       ),
  //                       IconButton(
  //                         icon: Icon(Icons.close),
  //                         onPressed: () => print('quiz close pressed'),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //               Flexible(
  //                 flex: 5,
  //                 child: PageView.builder(
  //                   physics: NeverScrollableScrollPhysics(),
  //                   controller: _pageController,
  //                   itemCount: questions.length,
  //                   itemBuilder: (context, index) => QuestionCard(
  //                     question: questions[index],
  //                     onNextButtonPressed: (answer) {
  //                       print('onNextButton');
  //                       nextQuestion(answer);
  //                     },
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //     onWillPop: _willPopCallback,
  //   );
  // }

  // void nextQuestion(Answer answer) {
  //   _progress.add(answer);
  //   if (_currentPage < questions.length) {
  //     _pageController.nextPage(
  //         duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
  //     // _progress.add(answer);
  //     setState(() {
  //       _currentPage++;
  //     });
  //     print('Skipping to Next Question pressed');
  //   } else {
  //     int score = 0;
  //     _progress.forEach((element) {
  //       print('one Checked and...');
  //       if (element == Answer.correct) {
  //         print('one correct answer');
  //         score = score + 1;
  //       }
  //     });
  //     int diamondIncrease = score ~/ 2;
  //     UserRepository userRepository = UserRepository();
  //     userRepository.addDiamond(diamondIncrease);
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => DiamondIncrease(diamondIncrease)));
  //   }
  // }
}

class _ResultBottomSheetWidget extends StatelessWidget {
  final String reason;
  final bool isCorrect;
  final VoidCallback onTap;
  const _ResultBottomSheetWidget(
      {this.isCorrect, this.reason, this.onTap, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 335,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        children: [
          Text(
            isCorrect ? 'Correct Answer' : 'Wrong Answer',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              // Image.asset('temp/Asset 1.png'),
              Container(width: 100, height: 125, child: Placeholder()),
              SizedBox(width: 30),
              Expanded(
                child: Text(
                  reason,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(170, 52),
              primary: AppColors.secoundry,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text(
              'Next Question',
              style: AppFontStyles.buttontext,
            ),
          ),
        ],
      ),
    );
  }
}
