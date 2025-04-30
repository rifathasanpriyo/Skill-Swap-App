import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordResetView extends StatefulWidget {
  const PasswordResetView({super.key});

  @override
  State<PasswordResetView> createState() => _PasswordResetViewState();
}

class _PasswordResetViewState extends State<PasswordResetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  
                ],
              ),
              SizedBox(
                height: 80,
              ),
          
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Text(
            "New Password",
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
          SizedBox(
            height: 20,
          ),
          Text(
            "Confirm Password",
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
          SizedBox(height: 80,),
          Container(
                    width: 336,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(0xFF47BA80),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Reset Password",
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
         
            ]
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
                      "M360 ICT",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF47BA80),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
          ]
        )
       )
    );
  }
}