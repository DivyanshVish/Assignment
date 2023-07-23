import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/loginimg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello!! There, \nWelcome Back",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'EduSABeginner',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in to account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(.2),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Color(0xfffe8289),
                          width: 1.5,
                        ),
                      ),
                      hintText: 'Phone Number',
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Colors.deepOrangeAccent,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            width: w * .5,
            height: h * .08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                image: AssetImage('assets/images/loginbtn.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'EduSABeginner',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: w * .08),
          RichText(
            text: const TextSpan(
              text: "Don't have an account? ",
              children: [
                TextSpan(
                  text: "Sign up",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
