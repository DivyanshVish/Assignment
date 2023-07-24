import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Enter The OTP',
          style: TextStyle(
            fontFamily: 'EduSABeginner',
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color(0xfffe8289),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Column(
          children: [
            const SizedBox(height: 80),
            /* -------------------------- Using OTP Text Field -------------------------- */
            OTPTextField(
              length: 4,
              width: w,
              fieldWidth: 50,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
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
                  "Verify",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'EduSABeginner',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* ------------------- Another way for the OTP Text Field ------------------- */

// TextFormField(
// decoration: InputDecoration(
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(30),
// borderSide: const BorderSide(
// color: Color(0xfffe8289),
// ),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(30),
// borderSide: const BorderSide(
// color: Color(0xfffe8289),
// ),
// ),
// hintText: 'Enter OTP',
// hintStyle: const TextStyle(
// color: Color(0xfffe8289),
// ),
// prefixIcon: const Icon(
// Icons.lock,
// color: Color(0xfffe8289),
// ),
// ),
// ),
