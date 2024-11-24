import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:page_transition/page_transition.dart';
import 'My_home_page.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int hours = 0;
  int minutes = 0;
  int seconds = 0;

  Duration duration = const Duration();
  Timer? timer;
  bool isRunning = false;

  @override
  void initState() {
    super.initState();
    _loadTimerState();
  }

  Future<void> _loadTimerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final startTime = prefs.getInt('startTime') ?? 0;
    final savedDuration = prefs.getInt('duration') ?? 0;

    if (startTime != 0 && savedDuration != 0) {
      final elapsedTime = DateTime.now().millisecondsSinceEpoch - startTime;
      final remainingDuration = savedDuration - elapsedTime;

      if (remainingDuration > 0) {
        setState(() {
          duration = Duration(milliseconds: remainingDuration);
          startTimer();
        });
      } else {
        // Handle negative time correctly
        setState(() {
          duration = Duration(milliseconds: remainingDuration);
          startTimer();
        });
      }
    }
  }

  Future<void> _saveTimerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('startTime', DateTime.now().millisecondsSinceEpoch);
    await prefs.setInt('duration', duration.inMilliseconds);
  }

  void startTimer() {
    if (isRunning) return;

    _saveTimerState();

    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        duration -= const Duration(seconds: 1);
        _saveTimerState(); // Continuously save the timer state
      });
    });

    setState(() {
      isRunning = true;
    });
  }

  void stopTimer({bool reset = false}) {
    if (timer != null) {
      timer?.cancel();
    }

    setState(() {
      isRunning = false;
      if (reset) {
        duration = Duration(hours: hours, minutes: minutes, seconds: seconds);
      }
    });
  }

  void resetTimer() {
    stopTimer(reset: true);
    _clearTimerState();
  }

  Future<void> _clearTimerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('startTime');
    await prefs.remove('duration');
  }

  void setTimer() {
    setState(() {
      duration = Duration(hours: hours, minutes: minutes, seconds: seconds);
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    _saveTimerState(); // Save the state before disposing
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
              child: const MyHomePage(),
              type: PageTransitionType.leftToRight,
            ),
                (Route<dynamic> route) => false,
          );
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Countdown Timer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    child: const MyHomePage(),
                    type: PageTransitionType.leftToRight,
                  ),
                      (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 50),
                  TimeInputFields(
                    onHoursChanged: (value) {
                      setState(() {
                        hours = value;
                        setTimer();
                      });
                    },
                    onMinutesChanged: (value) {
                      setState(() {
                        minutes = value;
                        setTimer();
                      });
                    },
                    onSecondsChanged: (value) {
                      setState(() {
                        seconds = value;
                        setTimer();
                      });
                    },
                  ),
                  const SizedBox(height: 40),
                  ClockDisplay(duration: duration),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: isRunning ? null : startTimer,
                        child: const Text('Start'),
                      ),
                      ElevatedButton(
                        onPressed: isRunning ? stopTimer : null,
                        child: const Text('Stop'),
                      ),
                      ElevatedButton(
                        onPressed: resetTimer,
                        child: const Text('Reset'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TimeInputFields extends StatelessWidget {
  final ValueChanged<int> onHoursChanged;
  final ValueChanged<int> onMinutesChanged;
  final ValueChanged<int> onSecondsChanged;

  TimeInputFields({
    required this.onHoursChanged,
    required this.onMinutesChanged,
    required this.onSecondsChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTimeInputField('HH', onHoursChanged),
        const SizedBox(width: 10),
        _buildTimeInputField('MM', onMinutesChanged),
        const SizedBox(width: 10),
        _buildTimeInputField('SS', onSecondsChanged),
      ],
    );
  }

  Widget _buildTimeInputField(String hint, ValueChanged<int> onChanged) {
    return SizedBox(
      width: 60,
      child: TextField(
        maxLength: 3,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          counterText: '',
          hintText: hint,
          border: const OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          onChanged(int.tryParse(value) ?? 0);
        },
      ),
    );
  }
}

class ClockDisplay extends StatelessWidget {
  final Duration duration;

  ClockDisplay({required this.duration});

  @override
  Widget build(BuildContext context) {
    final isNegative = duration.isNegative;
    final hours = duration.inHours.abs();
    final minutes = duration.inMinutes.remainder(60).abs();
    final seconds = duration.inSeconds.remainder(60).abs();

    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: isNegative ? Border.all(color: Colors.red, width: 4) : Border.all(color: Colors.blueAccent, width: 4),
      ),
      child: Center(
        child: Text(
          '${isNegative ? '-' : ''}${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: isNegative ? Colors.red : Colors.black,
          ),
        ),
      ),
    );
  }
}
