
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ScreenTwo extends StatefulWidget {
  final name;
  const ScreenTwo({Key? key,required this.name}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("This is screen Two"),
        centerTitle: true,),
      body: Center(child: Column(
        children: [
          Text(widget.name,style: TextStyle(fontSize: 24),),
          TextButton(onPressed: (){
            Get.back();
          }, child: Text("go back"))
        ],
      ),),);
  }
}
