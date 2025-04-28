import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizHomeScreen extends StatelessWidget {
  QuizHomeScreen({super.key});

  final question = ''.obs;
  final questionIndex = 0.obs;
  final score = 0.obs;
  final List<String> countries = ['Egypt', 'USA', 'France', 'UK'];
  final List<String> capitals = ['Cairo', 'Ws', 'Paris', 'London'];
  var cities = <String>[
    'Cairo',
    'Ws',
    'Paris',
    'London',
    'Tokyo',
    'Berlin',
    'Ottawa',
    'Canberra',
    'Rome',
    'Madrid',
  ].obs;
  var master;
  final TextEditingController answerController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final isTextFieldEnabled = false.obs;
  final isStarted = false.obs;
  final chances = 2.obs;

  @override
  Widget build(BuildContext context) {
    master = cities.toList();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
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
                  'You have $chances chances',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => DropdownMenu<String>(
                  dropdownMenuEntries: [
                    for (var item in cities)
                      DropdownMenuEntry(label: item, value: item)
                  ],
                  width: double.infinity,
                  controller: answerController,
                  hintText: 'Select a city',
                  enabled: isStarted.value,
                  enableSearch: true,
                  enableFilter: true,
                  requestFocusOnTap: true,
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
                          ? const SizedBox.shrink()
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
                          ? const SizedBox.shrink()
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
    cities.assignAll(master);
    cities.shuffle();
  }

  void restart() async {
    questionIndex.value = 0;
    if (chances.value <= 0) {
      // ToDO: Option 1

      // Get.dialog(
      //   AlertDialog(
      //     backgroundColor: Colors.white,
      //     content: Column(
      //       mainAxisSize: MainAxisSize.min,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       spacing: 5,
      //       children: [
      //         const Text(
      //           'You have consummed all your available chances\n\nPay for more chances',
      //           textAlign: TextAlign.center,
      //           style: TextStyle(fontSize: 20),
      //         ),
      //         const SizedBox(
      //           height: 24,
      //         ),
      //         ElevatedButton(
      //           onPressed: () {
      //             chances.value = 2;
      //             restart();
      //             isStarted.value = false;
      //             Get.back();
      //           },
      //           style: ElevatedButton.styleFrom(
      //             backgroundColor: Colors.green.shade600,
      //             foregroundColor: Colors.white,
      //             padding: const EdgeInsets.all(8),
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(12),
      //             ),
      //           ),
      //           child: const Text('Pay to restart'),
      //         ),
      //       ],
      //     ),
      //   ),
      // );

      // ToDO: Option 2

      Get.snackbar(
        "error",
        'You have zero chances, the app will crash now',
        backgroundColor: Colors.white,
        colorText: Colors.black,
        icon: const Icon(
          Icons.error,
          color: Colors.red,
        ),
      );
      await Future.delayed(
        const Duration(milliseconds: 2500),
        () => exit(1),
      );
    }
    chances.value--;
    score.value = 0;
    question.value = '';
    answerController.clear();
    isTextFieldEnabled.value = false;
    isStarted.value = false;
    cities.assignAll(master);
    cities.shuffle();
  }

  void next() {
    if (questionIndex.value >= countries.length) {
      return;
    }
    if (answerController.text.isEmpty) {
      return;
    }
    if (answerController.text.toLowerCase() ==
        capitals[questionIndex.value].toLowerCase()) {
      score.value++;
    }
    cities.remove(answerController.text);
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
    isStarted.value = false;
    Get.dialog(
      AlertDialog(
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 5,
          children: [
            const Text(
              'Your score is ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              score.value.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: score.value > countries.length / 2
                      ? Colors.green
                      : Colors.red,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              score.value > countries.length / 2
                  ? 'Great job!'
                  : 'Better luck next time!',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                restart();
                isStarted.value = false;
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}
