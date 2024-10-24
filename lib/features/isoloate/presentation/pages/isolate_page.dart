import 'dart:isolate';

import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_widget/app_button.dart';
import '../../../../config/colors.dart';

class IsolatePage extends StatefulWidget {
  static const routeName = '/dashboard/isoloate';
  const IsolatePage({super.key});

  @override
  State<IsolatePage> createState() => _IsolatePageState();
}

class _IsolatePageState extends State<IsolatePage> {
  int slowFib(int n) => n <= 1 ? 1 : slowFib(n - 1) + slowFib(n - 2);
  void fib40() async {
    var result = await Isolate.run(() => slowFib(40));
    print('Fib(40) = $result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const CircularProgressIndicator(),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text('Run Heavy Task'),
                onPressed: () => useIsolate(),
                //runHeavyTaskWithOutIsolate(4000000000),
              ),
              AppButton(
                backgroundColor: AppColors.kPrimary,
                title: "Without Isolation".tr,
                action: () {
                  runHeavyTaskWithOutIsolate(4000000000);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                backgroundColor: AppColors.kPrimary,
                title: "With Isolation".tr,
                action: () {
                  useIsolate();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                backgroundColor: AppColors.kPrimary,
                title: "Use Computation".tr,
                action: () {
                  useComputation();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                backgroundColor: AppColors.kPrimary,
                title: "slowFib".tr,
                action: () {
                  fib40();
                },
              ),
            ],
          ),
        ));
  }

  useComputation() async {
    try {
      int value = await compute(_calculate, 4000000);
      print(value);
    } catch (e) {
      print("computation error");
      print(e.toString());
      print("computation error");
    }
  }

  int _calculate(int value) {
    print("computation value");
    print(value);
    print("computation value");
    for (var i = 0; i < value; i++) {
      value += i;
    }
    return value;
  }

  useIsolate() async {
    final ReceivePort receivePort = ReceivePort();
    try {
      await Isolate.spawn(
          runHeavyTaskIWithIsolate, [receivePort.sendPort, 4000000000]);
    } catch (e) {
      debugPrint('Isolate Failed');
      debugPrint(e.toString());
      debugPrint('Isolate Failed');
      receivePort.close();
    }
    final response = await receivePort.first;

    print('Result: $response');
  }

  int runHeavyTaskIWithIsolate(List<dynamic> args) {
    SendPort resultPort = args[0];
    int value = 0;
    for (var i = 0; i < args[1]; i++) {
      value += i;
    }
    Isolate.exit(resultPort, value);
  }

  int runHeavyTaskWithOutIsolate(int count) {
    int value = 0;
    for (var i = 0; i < count; i++) {
      value += i;
    }
    print(value);
    return value;
  }
}
