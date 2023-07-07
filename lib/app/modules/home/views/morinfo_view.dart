import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../prodect_model.dart';

class MorinfoView extends GetView {
  Prodect Prodect1;

  MorinfoView(this.Prodect1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(Prodect1.category.toString()),
        centerTitle: true,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
          
            children: [
             
              Container(
                alignment: Alignment.topCenter,
                height: Get.height/2,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(Prodect1.image.toString(),height: 250, ),
                ),
              )
              ,Positioned(
             
                child: Container(
                  width: Get.width,
                 height:Get.height/2,
                  decoration:const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(151, 22, 22, 22),
                      Colors.transparent,
                    ],
                    stops: [0,0.5],
                    begin: Alignment.bottomCenter, 
                    end: Alignment.topCenter)
                  ),
             child: Align(
              alignment: Alignment(0, 0.8),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               
                children: [Container(width: Get.width-150, child: Text(Prodect1.title.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),Text(Prodect1.price.toString()+"  \$",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             
                ],
               ),
             ),
             
               ),
              )
           ,

            ],
            
          ),
         const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text("Discription",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
               Expanded(
                 child: Container(
                  padding: EdgeInsets.all(8),
                   child: SingleChildScrollView(child: Text(Prodect1.description.toString(),style: TextStyle(fontSize: 16,),textAlign: TextAlign.justify,)),
                 ),
               )
        ],
      )
      
    );
  }
}
