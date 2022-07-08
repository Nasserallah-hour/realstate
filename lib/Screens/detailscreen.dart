import 'package:flutter/material.dart';

import '../Constants.dart';
import 'homescreen.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({ Key? key }) : super(key: key);

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
double screenwidth = MediaQuery.of(context).size.width;
double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 50, 5, 10),
          child: Column(
            children: [
              //TITLE AND BUTTONS
              Row(
                children:[
               myiconbutton(size: 40,icon: Icons.arrow_back,color: customcolor1),
               Spacer(),
              Text("Details",style:TextStyle(color: customcolor4, fontSize: 24 ,fontWeight: FontWeight.bold),),
                Spacer(),
              myiconbutton(size: 40,icon: Icons.share,color: customcolor1),


                ]
               

              )
            ,Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              Container(
        height: screenwidth*0.9,
        width: screenwidth*0.9,
       
        child:
        Column(children: [
          //CARD IMAGE
         Expanded(flex: 3, child: Container(
      foregroundDecoration: const BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1656078249853-934494b07801?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8cm5TS0RId3dZVWt8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
          fit: BoxFit.cover),
      ),)),
        //tHE CARD INFORMATION
         Expanded(flex: 1,child: 
        Column(
          children: [
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(
               children: [
                 Text("Corner dream house",style: TextStyle(color: customcolor4,fontSize: 20,fontWeight: FontWeight.bold),),
                 Spacer(),
                 Text("Price",style: TextStyle(fontSize: 20),),
                 
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(5.0),
             child: Row(
               children: [
                 Icon(Icons.pin_drop,color: customcolor1,),
                 Text("Melbourne, Australia",style: TextStyle(color: customcolor4,fontSize: 14,fontWeight: FontWeight.w500),),
                 Spacer(),
               
                 Text("450/Month",style: TextStyle(color: customcolor4,fontSize: 18,fontWeight: FontWeight.bold),)
               ],
             ),
           )
         
          ],
        ))
        ],)  
      
        ,
      ),
            ],)
                      , Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text("Specifications",style:TextStyle(color: customcolor4, fontSize: 24 ,fontWeight: FontWeight.bold),),
              Spacer(),
              //Selector
              Text("See all",   style: new TextStyle(color: Colors.blue),)
               ],
             ),
           ),
            ]))
      ),
    );
  }
}