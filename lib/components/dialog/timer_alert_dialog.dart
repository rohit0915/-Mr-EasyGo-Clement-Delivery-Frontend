import 'dart:async';

import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class TimerAlertDialog extends StatefulWidget {
  const TimerAlertDialog({super.key, required this.callback});

  final Function callback;

  @override
  State<TimerAlertDialog> createState() => _TimerAlertDialogState();
}

class _TimerAlertDialogState extends State<TimerAlertDialog> {
  HomeController homeController = Get.find();

  bool isTimerEnd = false;
  bool isTimerStart = false;
  Timer? _timer;
  int _counter = 0;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    setState(() {
      isTimerStart = true;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _counter++;
      });
    });
  }

  void _stopTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
    setState(() {
      isTimerEnd = true;
    });
    Timer(const Duration(seconds: 2), () {
      Get.back();
      widget.callback();
    });
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      content: Container(
        padding: const EdgeInsets.all(10),
        width: Get.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            gradient: const LinearGradient(colors: [
              Color(0xffFA832E),
              Color(0xffFC0156),
              Color(0xffD5018F),
            ], transform: GradientRotation(0.2))),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            height: 10.h,
          ),
          Text(
            !isTimerEnd ? "Timer Started" : "Timer End",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: Get.height * 0.38,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: SizedBox(
                      height: 110.h,
                      width: 90.h,
                      child: DashedCircularProgressBar.aspectRatio(
                        aspectRatio: 0.2,
                        progress: _counter / 60,
                        startAngle: 90,
                        sweepAngle: 360,
                        circleCenterAlignment: Alignment.bottomCenter,
                        foregroundColor: Colors.black,
                        backgroundColor: const Color(0xffeeeeee),
                        foregroundStrokeWidth: 3,
                        backgroundStrokeWidth: 2,
                        backgroundGapSize: 2,
                        backgroundDashSize: 1,
                        seekColor: Colors.white,
                        seekSize: 12,
                        animation: true,
                      )),
                ),
                Positioned(
                  top: Get.height * 0.14,
                  child: Text(
                    formatTime(_counter),
                    style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(
                              vertical: 15.w, horizontal: 15.w),
                        ),
                        backgroundColor: WidgetStatePropertyAll(
                          Colors.white.withOpacity(0.4),
                        ),
                        shadowColor:
                            const WidgetStatePropertyAll(Colors.transparent),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        )),
                    onPressed: () {
                      isTimerStart ? _stopTimer() : _startTimer();
                    },
                    child: !isTimerStart || isTimerEnd
                        ? const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.pause,
                            color: Colors.white,
                          ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  String formatTime(int timeInSeconds) {
    int hours = timeInSeconds ~/ 3600;
    int minutes = (timeInSeconds % 3600) ~/ 60;
    int seconds = timeInSeconds % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
