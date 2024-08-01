import 'package:flutter/material.dart';
import 'package:wallezy/view/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('30 Seconds Stopwatch'),
//         ),
//         body: StopwatchTimer(),
//       ),
//     );
//   }
// }

// class StopwatchTimer extends StatefulWidget {
//   @override
//   _StopwatchTimerState createState() => _StopwatchTimerState();
// }

// class _StopwatchTimerState extends State<StopwatchTimer> {
//   Timer? _timer;
//   int _start = 30;
//   bool _isRunning = false;

//   void startTimer() {
//     _isRunning = true;
//     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         if (_start > 0) {
//           _start--;
//         } else {
//           timer.cancel();
//           _isRunning = false;
//         }
//       });
//     });
//   }

//   void stopTimer() {
//     if (_timer != null) {
//       _timer!.cancel();
//       _isRunning = false;
//     }
//   }

//   void resetTimer() {
//     stopTimer();
//     setState(() {
//       _start = 30;
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             '$_start',
//             style: TextStyle(fontSize: 48),
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: _isRunning ? null : startTimer,
//                 child: Text('Start'),
//               ),
//               SizedBox(width: 10),
//               ElevatedButton(
//                 onPressed: _isRunning ? stopTimer : null,
//                 child: Text('Stop'),
//               ),
//               SizedBox(width: 10),
//               ElevatedButton(
//                 onPressed: resetTimer,
//                 child: Text('Reset'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
