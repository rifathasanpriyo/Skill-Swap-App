import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sd_skill_swap/home%20screen/ReUse%20Component/swap_history.dart';
import 'package:sd_skill_swap/skill%20Upload/view/skill_upload_screen.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 206,
                  decoration: BoxDecoration(
                    color: Color(0xFFeaf6f0),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF838383)),
                            ),
                            Text(
                              'Ahmed Ariyan',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text.rich(
                          TextSpan(
                            text:
                                'Let’s ', // Default style for the first part
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    'exchange', // Custom style for the word "healthy"
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Colors.green, // Green color for "healthy"
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' knowledge', // Default style for the last part
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Second Container (Image)
                Positioned(
                  left: 190, // Position the container as needed
                  child: Container(
                    width: 217, // Set a width for the image container
                    height: 206, // Set a height for the image container
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/dfsf.png'), // Your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                        child: ClipOval(
                      child: Image.asset(
                        'assets/images/rifathasan.jpg',
                        height: 70,
                        width: 70,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Get.to(SkillUploadScreen());
              },
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Shadow color with opacity
                      spreadRadius: 2, // Spread the shadow
                      blurRadius: 5, // Blur the shadow for a soft effect
                      offset: Offset(
                          0, 4), // Position of the shadow (horizontal, vertical)
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text("Upload A New Skill"),
                      Image.asset(
                        'assets/images/upload.png',
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Swap History",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10,),

           SwapHistory(Pimage: 'assets/images/zisan.png', Pname: "Zisan Islam", PSwapTile: "Swap Flutter Skills for Figma Designs", PSkill: "Figma, Adobe, Data Entry", Plevel: 2),
           SizedBox(height: 10,),

             SwapHistory(Pimage: 'assets/images/zisan.png', Pname: "Zisan Islam", PSwapTile: "Swap Flutter Skills for Figma Designs", PSkill: "Figma, Adobe, Data Entry", Plevel: 2),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
