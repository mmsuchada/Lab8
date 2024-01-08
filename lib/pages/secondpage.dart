import 'package:flutter/material.dart';
import 'package:lab08/pages/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Second Page"),
       ),
       body: Column(
         children: [
           Text("This is SECOND PAGE"),
           ElevatedButton(
             onPressed: (){
               Navigator.pop(context);
             }, 
             child: Text("Go Back"),
             ),
             Divider(
              ElevatedButton(
             onPressed: (){
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThirdPage(
                    data: data, name: name),)
                );
             }, 
             child: Text("Go Back"),
             ),
             )
         ],
       ),
     );
  }
}

