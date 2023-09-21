import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ChangeTheme extends StatelessWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Theme"),
      centerTitle: true,),
      body: Center(child: Column(
        children: [
          IconButton(onPressed: (){
            Get.changeTheme(ThemeData.dark());
          },icon:const Icon(Icons.toggle_off_outlined),),
          IconButton(onPressed: (){
            Get.changeTheme(ThemeData.light());
          },icon:const Icon(Icons.toggle_off),),
          TextButton(onPressed: (){
            Get.toNamed("/screenone");
          }, child: Text("Go to screen one"))
        ],
      ),),);
  }
}
