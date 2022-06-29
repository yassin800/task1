import 'package:flutter/material.dart';
import 'package:task1/screens/pageview/pageview1.dart';
import 'package:task1/screens/pageview/pageview2.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          MaterialButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/signin');
            },
            child: const Text(
              'SKIP',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          )
        ],
      ),
      body: PageView(
        children: const [
          PageView1(),
          PageView2(),
        ],
      ),
    );
  }
}
