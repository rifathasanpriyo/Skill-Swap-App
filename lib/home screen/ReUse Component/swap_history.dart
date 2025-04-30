import 'package:flutter/material.dart';

class SwapHistory extends StatelessWidget {
    final String Pimage;
    final String Pname ;
    final String PSwapTile;
    final String PSkill;
    final int Plevel;
SwapHistory({ required this.Pimage, required this.Pname, required this.PSwapTile, required this.PSkill, required this.Plevel});


  // const SwapHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10), // Rounded corners for a clean look
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1), // Shadow color with opacity
        spreadRadius: 2, // Spread the shadow
        blurRadius: 5, // Blur the shadow for a soft effect
        offset: Offset(0, 4), // Position of the shadow (horizontal, vertical)
      ),
    ],
  ),
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                Pimage,
                height: 70,
                width: 70,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Pname, // Name
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),

                   Text(
                    PSwapTile,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: true, // Allow wrapping of text
                  ),
                  Text(
                    "Skill:${PSkill}", // Skills
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Level: ${Plevel}", // Skill Level
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 5),
                 
                ],
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