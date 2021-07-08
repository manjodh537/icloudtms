import 'package:flutter/material.dart';
import 'package:icloudtms/TripDetail.dart';

class LocalTrips extends StatefulWidget {
  // const LocalTrips({ Key? key }) : super(key: key);

  @override
  _LocalTripsState createState() => _LocalTripsState();
}

class _LocalTripsState extends State<LocalTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Trips"),
      ),
      body: SafeArea(
          child: Container(
          color: Colors.white,
          child: ListView.builder(
            
            itemCount: 1,
            itemBuilder:  (BuildContext context,int index){
               return GestureDetector(
                 onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => TripDetail()));
                 },
                 child: Container(
color: Colors.white,
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
              
                    child: Container(
                    width: MediaQuery.of(context).size.width - 60,
                    // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                //   color: Colors.red
                // ),
              
                   
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.blueGrey,width: 0.5),  
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                           color: Colors.grey.withOpacity(0.5),
  spreadRadius: 5,
  blurRadius: 7,
  offset: Offset(0,3),
                          
                        )
                      ]
                    ),
                    
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20,right: 20),
                          height: 50,
                          width: MediaQuery.of(context).size.width - 60,
                          child: Row(
                            children: [
Expanded(
  child: Text("Trip no T465",style: TextStyle(fontWeight: FontWeight.normal),),
  
),
Text("\$350",style: TextStyle(fontWeight: FontWeight.bold),)
                    
                            ],
                          ),
                        ),

Container(
  // height: 20,
  // color: Colors.red,
  padding: EdgeInsets.only(left: 20,right: 20),
  alignment: Alignment.bottomLeft,
  child: Text("  Load#:L102  ",style: TextStyle(backgroundColor: Colors.lightBlueAccent,color: Colors.white,fontWeight: FontWeight.bold),),
),

Container(
  // height: 30,
  // color: Colors.red,
  padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom:2),
  alignment: Alignment.bottomLeft,
  child: Row(
    children: [
      Container(
        height: 20,
        width: 20,
        
        decoration: BoxDecoration(
          //BorderRadius.all(Radius.circular(20))
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color:  Colors.black,
        ),
      ),
      Container(
        height: 20,
        width: 10,
        color:  Colors.transparent,
      ),
      Expanded(child: Text("918 Oak Ridge Drive, WA",style: TextStyle(fontWeight: FontWeight.bold)))
    ],
  ),
  // child: Text("  Load#:L112  ",style: TextStyle(backgroundColor: Colors.lightBlueAccent,color: Colors.white,fontWeight: FontWeight.bold),),
),
Container(
  // height: 30,
  padding: EdgeInsets.only(bottom: 5,top: 2,left: 50,right: 20),
  // color: Colors.red,
  alignment: Alignment.centerLeft,
  child: Text("01 July 2021",style:TextStyle(fontSize: 12)),
),

Container(
  height: 10,
  // color: Colors.red,
),

Container(
  // height: 30,
  // color: Colors.red,
  padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom:2),
  alignment: Alignment.bottomLeft,
  child: Row(
    children: [
      Container(
        height: 20,
        width: 20,
        
        decoration: BoxDecoration(
          //BorderRadius.all(Radius.circular(20))
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color:  Colors.orange,
        ),
      ),
      Container(
        height: 20,
        width: 10,
        color:  Colors.transparent,
      ),
      Expanded(child: Text("Hip hop music, OR",style: TextStyle(fontWeight: FontWeight.bold)))
    ],
  ),
  // child: Text("  Load#:L112  ",style: TextStyle(backgroundColor: Colors.lightBlueAccent,color: Colors.white,fontWeight: FontWeight.bold),),
),
Container(
  // height: 30,
  padding: EdgeInsets.only(bottom: 5,top: 2,left: 50,right: 20),
  // color: Colors.red,
  alignment: Alignment.centerLeft,
  child: Text("04 July 2021",style:TextStyle(fontSize: 12)),
),
Container(
  height: 10,
),

                      ],
                    ),
                    ),
                 ),
               );
            },
          ),
        ),

      ),
    );
  }
}

