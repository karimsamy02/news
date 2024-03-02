import 'package:flutter/material.dart';
import 'package:news/repository/api.dart';
import 'package:news/screens/home_screen.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(


        body: Container(
          height: 200,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
      
          ) ,
          child:Column(
            children: [
             SizedBox(
               height: 15,
             ),
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
              IconButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home_Screen()));
              },
                  icon: Icon(Icons.arrow_back))  ,
                SizedBox(
                  width: 9,
                ),
                Text('hallow in my app'),
      
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}
