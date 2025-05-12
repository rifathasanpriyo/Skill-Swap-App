import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Let’s share knowledge and grow together",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    //fontWeight: FontWeight.300,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            mailAuthenticationFiled(),
            SizedBox(
              height: 30,
            ),
            SignInButton(),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Or Sign In with",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialIcon('assets/images/google.png'),
                socialIcon('assets/images/facebook.png'),
                socialIcon('assets/images/microsoft.png'),
                socialIcon('assets/images/apple.png'),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: TextStyle(fontSize: 12, color: Color(0xFFADADAD)),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF47BA80),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 50,
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

  Container SignInButton() {
    return Container(
      width: 336,
      height: 42,
      decoration: BoxDecoration(
          color: Color(0xFF47BA80), borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          "Sign In",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Column mailAuthenticationFiled() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
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
        SizedBox(
          height: 20,
        ),
        Text(
          "Password",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '**********',
            hintStyle: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            border: UnderlineInputBorder(),
            suffixIcon: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/eye icon.png')),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: rememberMe,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value!;
                    });
                  },
                ),
                Text(
                  "Remember me",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // Handle password reset navigation
              },
              child: Text(
                "Forgotten Password",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget socialIcon(String imagePath) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4),
    child: Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      child: Image.asset(
        imagePath,
        width: 24,
        height: 24,
      ),
    ),
  );
}
