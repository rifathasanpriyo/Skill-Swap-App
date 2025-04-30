import 'package:flutter/material.dart';

class OtpFillupView extends StatelessWidget {
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();

  OtpFillupView({super.key});

  Widget otpBox(TextEditingController controller) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: "",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 32),
               Text(
                'Verify OTP',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
               SizedBox(height: 8),
               Text(
                'Recover your account in easy steps',
                style: TextStyle(fontSize: 14),
              ),
               SizedBox(height: 80),
              RichText(
                text:  TextSpan(
                  text: 'An email has been sent to ',
                  style: TextStyle(
                    
                    color: Color(0xFF838383)
                  
                  ),
                  children: [
                    TextSpan(
                      text: 'user@example.com',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                      text: '. Please enter the sent OTP.',
                    ),
                  ],
                ),
              ),
               SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  otpBox(otpController1),
                  otpBox(otpController2),
                  otpBox(otpController3),
                  otpBox(otpController4),
                ],
              ),
               SizedBox(height: 100),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF47BA80),
                    padding:  EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child:  Text(
                    'Verify OTP',
                    style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w600),
                  ),
                ),
              ),
               SizedBox(height: 16),
              Center(
                child: RichText(
                  text:  TextSpan(
                    text: "Didn't Receive a code? ",
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               Spacer(),
               Center(
                child: Text.rich(
                  TextSpan(
                    text: 'Powered by ',
                    style: TextStyle(fontSize: 12),
                    children: [
                      TextSpan(
                        text: 'M360 ICT',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}