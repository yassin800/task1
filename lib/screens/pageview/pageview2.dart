import 'package:flutter/material.dart';
import 'package:task1/reusable_components/get_started_button.dart';

class PageView2 extends StatelessWidget {
  const PageView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: size.height * 0.17,
            child: Image.asset('assets/0dcfb548989afdf22afff75e2a46a508.jpg'),
          ),
          SizedBox(
            height: size.height * 0.35,
            child: Image.asset('assets/sammy-finance.png'),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 25),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    'Buy Any Food from your favourite restaurant',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 25.0),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    'we are constantly adding your favourite restaurant throughout the territoryand around your area carefully selected ',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: GetStarted(
              function: () {
                Navigator.pushNamed(context, '/signin');
              },
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(fontSize: 18, color: Colors.teal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
