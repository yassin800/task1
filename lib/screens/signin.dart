import 'package:flutter/material.dart';
import 'package:task1/reusable_components/countrycode.dart';
import 'package:task1/reusable_components/get_started_button.dart';
import 'package:task1/reusable_components/textcontainer.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontroller = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: size.height * 0.30,
            width: double.infinity,
            child: Image.asset(
              'assets/jason-leung-479251-unsplash.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Welcome To Fashion Daily',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20),
            child: Row(
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: const [
                      Text(
                        'Help',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Icon(
                        Icons.help_center_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 12),
            child: Text('Phone Number '),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: SizedBox(
              height: 50,
              child: TextContainer(
                controller: phonecontroller,
                text: 'eg : 934834045403',
                preffix: Container(
                  child: CountryCode(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            height: 50,
            child: GetStarted(
              function: () {},
              background: Color.fromARGB(255, 11, 134, 234),
              text: 'Sign In',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'or',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            height: 50,
            child: GetStarted(
                border: Colors.blue,
                function: () {},
                background: Colors.white,
                text: 'Sign with Google',
                textcolor: Colors.blue),
          ),
          const SizedBox(
            height: 20.0,
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
                  'Register here',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, right: 25, top: 10),
            child: Expanded(
                child: Text(
              'use the application according to policy rules Any kinds of violations will be subject to sanctions',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
    );
  }
}
