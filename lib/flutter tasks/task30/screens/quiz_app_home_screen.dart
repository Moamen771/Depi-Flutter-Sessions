import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizAppHomeScreen extends StatelessWidget {
  QuizAppHomeScreen({super.key});

  final question = ''.obs;
  final questionIndex = 0.obs;
  final score = 0.obs;
  final List<String> countries = ['Egypt', 'USA', 'France', 'UK'];
  final List<String> capitals = ['Cairo', 'Ws', 'Paris', 'London'];
  final TextEditingController answerController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final isTextFieldEnabled = false.obs;
  final isStarted = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              Obx(
                () => Text(
                  'Question ${questionIndex.value + 1} of ${countries.length}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Obx(
                () => Text(
                  question.value,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: Obx(
                  () => TextFormField(
                    controller: answerController,
                    enabled: isTextFieldEnabled.value,
                    textInputAction: TextInputAction.done,
                    autofocus: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your answer";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(
                    () => ElevatedButton(
                      onPressed: questionIndex.value == 0 ? start : restart,
                      child: Text(
                        questionIndex.value == 0 ? 'Start' : 'Restart',
                      ),
                    ),
                  ),
                  Obx(
                    () => ElevatedButton(
                      onPressed: isStarted.value ? next : null,
                      child: const Text(
                        'Next',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void start() {
    question.value =
        'What is the capital of ${countries[questionIndex.value]}?';
    isTextFieldEnabled.value = true;
    isStarted.value = true;
  }

  void restart() {
    questionIndex.value = 0;
    score.value = 0;
    question.value = '';
    answerController.text = '';
    isTextFieldEnabled.value = false;
    isStarted.value = false;
  }

  void next() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    if (questionIndex.value >= countries.length) {
      return;
    }
    if (answerController.text.toLowerCase() ==
        capitals[questionIndex.value].toString().toLowerCase()) {
      score.value++;
    }
    if (answerController.text.isNotEmpty) {
      answerController.text = '';
      questionIndex.value++;
    }
    if (questionIndex.value < countries.length) {
      question.value =
          'What is the capital of ${countries[questionIndex.value]}?';
    } else {
      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your score is ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                score.value.toString(),
                style: TextStyle(
                    color: score.value > countries.length / 2
                        ? Colors.green
                        : Colors.red,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  restart();
                  isStarted.value = false;
                  Get.back();
                },
                child: const Text('Restart'),
              ),
            ],
          ),
        ),
      );
    }
  }
}
