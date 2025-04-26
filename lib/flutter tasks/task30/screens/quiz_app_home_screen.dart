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
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 30,
            children: [
              Obx(
                () => Text(
                  'Question ${questionIndex.value + 1} of ${countries.length}',
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
              const SizedBox(
                height: 40,
              ),
              Row(
                spacing: 30,
                children: [
                  Expanded(
                    child: Obx(
                      () => isStarted.value && questionIndex.value == 0
                          ? const SizedBox()
                          : ElevatedButton(
                              onPressed:
                                  questionIndex.value == 0 ? start : restart,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                (questionIndex.value == 0)
                                    ? 'Start'
                                    : 'Restart',
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                    ),
                  ),
                  Expanded(
                    child: Obx(
                      () => isStarted.value == false
                          ? const SizedBox()
                          : ElevatedButton(
                              onPressed: next,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                questionIndex.value > 2 ? 'Finish' : 'Next',
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
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
        capitals[questionIndex.value].toLowerCase()) {
      score.value++;
    }
    answerController.clear();

    if (questionIndex.value == countries.length - 1) {
      finish();
      return;
    }

    questionIndex.value++;
    question.value =
        'What is the capital of ${countries[questionIndex.value]}?';
  }

  void finish() {
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
