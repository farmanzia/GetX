
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("This is screen one"),
        centerTitle: true,),
      body: Center(child: Column(
        children: [
         TextButton(onPressed: (){

           Get.toNamed("/screentwo");
         }, child: Text("go to screen two"))
        ],
      ),),);
  }
}
