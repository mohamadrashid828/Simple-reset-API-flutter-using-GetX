import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'morinfo_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Prodects'),
        centerTitle: true,
      ),
      body:controller.obx((data) {
      return ListView.builder(
        itemCount: data!.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
            onTap: (){
              Get.to(MorinfoView(data[index]),fullscreenDialog: true );
            },
            tileColor: Colors.teal[100],
            leading:Text(data[index].id.toString()) ,
            title: Text(data[index].title??""),
          ),
        ));
      },)
    );
  }
}
