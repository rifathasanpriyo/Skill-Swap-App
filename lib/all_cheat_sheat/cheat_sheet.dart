import 'package:flutter/material.dart';

class CheatSheet extends StatefulWidget {
  const CheatSheet({super.key});

  @override
  State<CheatSheet> createState() => _CheatSheetState();
}

class _CheatSheetState extends State<CheatSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY APP"),
      ),
      body: Column(
        children: [


          // Rich Text
          RichText(
              text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                TextSpan(text: "This Is Example"),
                TextSpan(
                    text: "This Is blue", style: TextStyle(color: Colors.blue)),
                TextSpan(text: "This Is 3rd line"),
              ])),


              //fitting box
              Container( 
                height: 200,
                width: 200,
                decoration: BoxDecoration(color: Colors.blue),
                child: FittedBox(
                  child: Center(
                    child: Text("This Is Fitting Box",style: TextStyle( 
                      color: Colors.white
                    ),),
                  ),
                ),
              ),
     
      //scrollview
      Expanded(
        child: CustomScrollView( 
          slivers: [ 
            SliverAppBar(floating: true,),
            SliverList(delegate: SliverChildListDelegate( 
          [ 
        
            Container(
                          padding: EdgeInsets.all(16.0),
                          color: Colors.orange,
                          child: Text("Item 1"),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          color: Colors.green,
                          child: Text("Item 2"),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          color: Colors.purple,
                          child: Text("Item 3"),
                        ),
          ]
        
            ))
          ],
        ),
      )
     


        ],
      ),
    );
  }
}
