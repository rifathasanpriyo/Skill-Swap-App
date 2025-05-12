import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpSendView extends StatelessWidget {
  const OtpSendView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Push bottom row down
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Send OTP",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Recover your account in easy steps",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 100),
                Text(
                  "Email",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 12),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'user@example.com',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    border: UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  width: double.infinity,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Color(0xFF47BA80),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Powered by ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFADADAD),
                    ),
                  ),
                  Text(
                    "NUBCC",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF47BA80),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
