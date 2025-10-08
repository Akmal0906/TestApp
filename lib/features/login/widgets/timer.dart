import 'dart:async';

import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  final void Function(int seconds) setTimer;
  final VoidCallback onTimerEnd;
  final int seconds;

  const TimerWidget({
    super.key,
    required this.onTimerEnd,
    required this.seconds,
    required this.setTimer,
  });

  @override
  // ignore: library_private_types_in_public_api
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late DateTime _endTime;
  late int _remainingSeconds;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.seconds;
    _endTime = DateTime.now().add(Duration(seconds: _remainingSeconds));
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      setState(() {
        _remainingSeconds = _endTime.difference(now).inSeconds;
        if (_remainingSeconds <= 0) {
          _timer.cancel();
          _remainingSeconds = 0;
          widget.onTimerEnd();
        } else {
          widget.setTimer(_remainingSeconds);
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final minutes = _remainingSeconds ~/ 60;
    final seconds = _remainingSeconds % 60;
    final timeString =
        "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";

    return Text(
      timeString,
      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
    );
  }
}
