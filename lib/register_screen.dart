// ignore_for_file: prefer_const_constructor, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'lib/assets/otp_icon.jpg',
                height: 200,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Enter your phone number to continue, we will send you a OTP to verify.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                          color: Colors.orange.shade100,
                          blurRadius: 10,
                          offset: Offset(0, 4))
                    ]),
                margin: EdgeInsets.only(left: 20, right: 20),
                child: InternationalPhoneNumberInput(
                  maxLength: 11,
                  initialValue: PhoneNumber(isoCode: 'PK'),
                  onInputChanged: (value) {},
                  cursorColor: Colors.orange.shade500,
                  inputDecoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Phone Number',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: device_width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.orange.shade700)),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('');
                  },
                  child: Text('Request OTP'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
