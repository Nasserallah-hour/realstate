import 'package:flutter/material.dart';
import 'package:realstate/Constants.dart';

class homescreen extends StatefulWidget {
  const homescreen({ Key? key }) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
 double size = 40;
  @override
  Widget build(BuildContext context) {
double screenwidth = MediaQuery.of(context).size.width;
double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 50, 5, 10),
          child: Column(
            children: [
              // this row is for profile and notificiation
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    //profile
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: size,
                        width: size,
                        decoration: 
                        const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://cdn.dribbble.com/users/11938492/avatars/small/096da13ac65d21bb9750443bd7213a2c.jpg?1653825696" )))),
                    ),
                   //greeting
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Hi"),
                        Text("Shahinur Rahman",style: TextStyle(fontWeight:FontWeight.bold,))
                        ],),
                    const Spacer(),
                    //Notification bell
                    Container(
                      color: customcolor2,
                      height: size,
                      width: size,
                      child:  Icon(Icons.notifications,color:  customcolor1,),
                    )
                      ],),
              )
           ,
         
          //Search bar 
          //here we dcreate the search bar
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:  [
               Container(
                 color: customcolor2,
                 width: screenwidth*0.93,
                 height: 60,
                 child: Row(children: [
                    Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Icon(Icons.search,color: customcolor1),),
                   Text("Search your...",style: TextStyle(color: customcolor4),),
                   Spacer(),
                   Container(
                     height: double.maxFinite,
                     width: 40,
                     color: customcolor1,child: Icon(Icons.settings,color: customcolor5,),)],),)
             ],),
           ),
      
           //Categorical seperator
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text("Dream Propreties",style:TextStyle(color: customcolor4, fontSize: 24 ,fontWeight: FontWeight.bold),),
              Spacer(),
              //Selector
            Container(
              height: 25,
              width: 125,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  chip(selected: true),
                  chip(selected: false),
                  chip(selected: false),
                  chip(selected: false),
                ],
              ),
            ),          
               ],
             ),
           ),
      
             //item card goes here
          Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 statecard(screenwidth: screenwidth),
               ],
             ),
      
             //Categorical seperator
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text("Nearby Propreties",style:TextStyle(color: customcolor4, fontSize: 24 ,fontWeight: FontWeight.bold),),
              Spacer(),
              //Selector
              Text("See all",   style: new TextStyle(color: Colors.blue),)
               ],
             ),
           ),
      
      //Selector for cards
      Container(
        height: screenwidth*0.8,
        width: screenwidth*0.8,
        child:   ListView(
        
                  scrollDirection: Axis.horizontal,
        
                  children: <Widget>[
        
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: statecard(screenwidth: screenwidth),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: statecard(screenwidth: screenwidth),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: statecard(screenwidth: screenwidth),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: statecard(screenwidth: screenwidth),
                    ),
        
                  ],
        
                ),
      ),
      
            ],
            
            
          ),
        ),
      )
     
    );
  }
}

class statecard extends StatelessWidget {
  const statecard({
    Key? key,
    required this.screenwidth,
  }) : super(key: key);

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenwidth*0.8,
      width: screenwidth*0.8,
      decoration: BoxDecoration(color: customcolor2),
      child:
      Column(children: [
        //TCARD IMAGE
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
           padding: const EdgeInsets.all(5.0),
           child: Row(
             children: [
               Text("Corner dream house",style: TextStyle(color: customcolor4,fontSize: 20,fontWeight: FontWeight.bold),),
               Spacer(),
               Text("⭐",style: TextStyle(fontSize: 20),),
               Text("5.00",style: TextStyle(color: customcolor4,fontSize: 20),)
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
               Icon(Icons.paid,color: customcolor1,),
               Text("450/m",style: TextStyle(color: customcolor4,fontSize: 14,fontWeight: FontWeight.w500),)
             ],
           ),
         )
        ],
      ))
      ],)  
    
      ,
    );
  }
}

class chip extends StatelessWidget {
  
  const chip({
    
    Key? key, required this.selected,
  }) : super(key: key);
final bool selected;
  @override
  Widget build(BuildContext context) {

    if (selected) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 3,width:30,decoration: BoxDecoration(color: customcolor1),),
          );

    } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 3,width:20,decoration: BoxDecoration(color: Colors.grey),),
          );

    }
  }
}