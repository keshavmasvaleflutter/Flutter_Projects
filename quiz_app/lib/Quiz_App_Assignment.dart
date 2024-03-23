import 'package:flutter/material.dart';
import 'ModelClass.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List allQuestions = [
    const SingleQuestionModel(
      question: "Which of the following programming language used for building Flutter apps?",
      options: ["Java", "Kottlin", "Dart", "Swift"],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question: "What is the core building block for UI creation in Flutter?",
      options: ["Activities", "Widgets", "Fragments", "XML Layouts"],
      answerIndex: 1,
    ),
    const SingleQuestionModel(
      question: "Flutter is primarily designed for which platform development?",
      options: ["Web development only", "Backend development only", "Cross-platform mobile development", "Desktop development only"],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question: "Which widget is used to define the overall layout structure of a Flutter app?",
      options: ["Scaffold", "Text", "Container", "Column"],
      answerIndex: 0,
    ),
    const SingleQuestionModel(
      question: "What are the two main categories of widgets in Flutter?",
      options: ["Static and Dynamic", "Native and Custom", "Layout and UI", "Stateful and Stateless"],
      answerIndex: 3,
    ),
    const SingleQuestionModel(
      question: "How do you manage state changes in a Stateful widget?",
      options: ["Widget Operations", "setState method", "Global variables", "None of the above"],
      answerIndex: 1,
    ),
    const SingleQuestionModel(
      question: " What will be the output of this code: \nvoid main() {\n   for (int i = 1; i <= 5; i++) {\n    print(i);\n   }\n}",
      options: ["1 2 3 4 5 ", "5 4 3 2 1", "0 1 2 3 4", "Compile time error"],
      answerIndex: 0,
    ),
    const SingleQuestionModel(
      question: "Hot reload allows you to see changes in your Flutter app code almost instantly while developing.",
      options: ["False", "True", "", ""],
      answerIndex: 1,
    ),
  ];
  bool resultScreen = false;
  bool questionScreen = false;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswers = 0;

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(
            Color.fromARGB(255, 198, 89, 203));
      }
    } else {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 198, 89, 203));
    }
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }
    if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
      noOfCorrectAnswers += 1;
    }
    if (selectedAnswerIndex != -1) {
      if (questionIndex == allQuestions.length - 1) {
        questionScreen = false;
        setState(() {
          resultScreen = true;
        });
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex += 1;
      });
    }
  }

  void validateBackPage() {
    // if (selectedAnswerIndex == -1) {
    //   return;
    // }
    if (questionIndex > 0) {
      if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
        noOfCorrectAnswers += 1;
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex -= 1;
      });
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: const Text(
            "𝐈𝐐 𝐐𝐮𝐢𝐳",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 190, 76, 196),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
            bottomEnd: Radius.circular(2),
            bottomStart: Radius.circular(2),
          )),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(153, 223, 129, 230),
                  Color.fromARGB(153, 217, 125, 224),
                ]),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "𝑸𝒖𝒆𝒔𝒕𝒊𝒐𝒏 : ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "${questionIndex + 1}/${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                height: 120,
                width: 378,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    allQuestions[questionIndex].question,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 55,
                width: 360,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      setState(() {
                        selectedAnswerIndex = 0;
                      });
                    }
                  },
                  child: Text(
                    "A.${allQuestions[questionIndex].options[0]}",
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 55,
                width: 360,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(1),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      setState(() {
                        selectedAnswerIndex = 1;
                      });
                    }
                  },
                  child: Text(
                    "B.${allQuestions[questionIndex].options[1]}",
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 55,
                width: 360,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(2),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      setState(() {
                        selectedAnswerIndex = 2;
                      });
                    }
                  },
                  child: Text(
                    "C.${allQuestions[questionIndex].options[2]}",
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 55,
                width: 360,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(3),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      setState(() {
                        selectedAnswerIndex = 3;
                      });
                    }
                  },
                  child: Text(
                    "D. ${allQuestions[questionIndex].options[3]}",
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                FloatingActionButton(
                  onPressed: () {
                    validateBackPage();
                  },
                  backgroundColor: const Color.fromARGB(255, 190, 76, 196),
                  child: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    validateCurrentPage();
                  },
                  backgroundColor: const Color.fromARGB(255, 190, 76, 196),
                  tooltip: "Next Question",
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ]),
            ],
          ),
        ),
      );
    } else if (questionScreen == false && resultScreen == true) {
      return Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 70,
        //   title: const Text(
        //     "𝐈𝐐 𝐐𝐮𝐢𝐳",
        //     style: TextStyle(
        //       fontSize: 35,
        //       fontWeight: FontWeight.w800,
        //       color: Colors.black,
        //     ),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: const Color.fromARGB(255, 190, 76, 196),
        //   shape: const RoundedRectangleBorder(
        //       borderRadius: BorderRadiusDirectional.only(
        //     topStart: Radius.circular(2),
        //     topEnd: Radius.circular(2),
        //     bottomEnd: Radius.circular(2),
        //     bottomStart: Radius.circular(2),
        //   )),
        // ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(153, 223, 129, 230),
                Color.fromARGB(153, 217, 125, 224),
              ]
            )
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset(
                "asset/award.png",
                height: 300,
                width: 175,
              ),
              const Text(
                "Congratulations!!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "You have Successfully completed the Quiz...",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "𝐘𝐎𝐔𝐑 𝐒𝐂𝐎𝐑𝐄",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "$noOfCorrectAnswers/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  questionIndex = 0;
                  questionScreen = true;
                  noOfCorrectAnswers = 0;
                  selectedAnswerIndex = -1;
                  setState(() {});
                },
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(130, 50)),
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 198, 89, 203)
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text(
                  "Restart",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (resultScreen == false && questionScreen == false) {
      return Scaffold(
        // appBar: AppBar( 
        //   toolbarHeight: 70,
        //   title: const Text(
        //     "𝐈𝐐 𝐐𝐮𝐢𝐳",
        //     style: TextStyle(
        //       fontSize: 35,
        //       fontWeight: FontWeight.w800,                
        //       color: Colors.black,
        //     ),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: const Color.fromARGB(255, 190, 76, 196),
        //   shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadiusDirectional.only(
        //       bottomEnd: Radius.circular(2),
        //       bottomStart: Radius.circular(2),
        //     )
        //   ),
        // ),
        body: Container(
          decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("asset/Questionimg_01.png")
            // ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(153, 223, 129, 230),
                Color.fromARGB(153, 217, 125, 224),
              ]
            )
          ),
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              SizedBox(
                height: 400,
                width: 300,
                child: Image.asset("asset/Questionimg_01.png"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        questionScreen = true;
                      });
                    },
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(200, 60)),
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 205, 70, 196),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Start Quiz",
                       style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                       ),       
                    ),
                  )
                ],
              )
            ]
          ),
        ),
      );
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}