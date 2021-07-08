import 'package:flutter/material.dart';
import 'package:icloudtms/Controllers/HelpViewController.dart';
import 'package:icloudtms/Controllers/History.dart';
import 'package:icloudtms/Controllers/LocalTrips.dart';
import 'package:icloudtms/Controllers/Message.dart';
import 'package:icloudtms/Controllers/Settings.dart';
import 'package:icloudtms/TripDetail.dart';

import 'Expense.dart';

class DriverTrips extends StatefulWidget {
  // const DriverTrips({ Key? key }) : super(key: key);

  @override
  _DriverTripsState createState() => _DriverTripsState();
}

class _DriverTripsState extends State<DriverTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  //        leading: Builder(
  //    builder: (BuildContext context) {
  //      return IconButton(
  //        icon: const Icon(Icons.menu),
  //        onPressed: () { Scaffold.of(context).openDrawer(); },
  //        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
  //      );
  //    },
  //  ),
      appBar: AppBar(title: Text("CONVOY",style: TextStyle(fontWeight: FontWeight.w900,fontSize:18 )),
      // leading: Builder(
      //   builder: (BuildContext context) {
      //     return IconButton(icon: const Icon(Icons.menu),
      //      onPressed: () {},
      //     //  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //      )
      //      ;
           
      //   },
      // ),
      actions: [
         IconButton(icon: const Icon(Icons.refresh), onPressed: (){})
      ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView.builder(
            
            itemCount: 3,
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
  child: Text("Trip no 221",style: TextStyle(fontWeight: FontWeight.normal),),
  
),
Text("\$500",style: TextStyle(fontWeight: FontWeight.bold),)
                    
                            ],
                          ),
                        ),

Container(
  // height: 20,
  // color: Colors.red,
  padding: EdgeInsets.only(left: 20,right: 20),
  alignment: Alignment.bottomLeft,
  child: Text("  Load#:L112  ",style: TextStyle(backgroundColor: Colors.lightBlueAccent,color: Colors.white,fontWeight: FontWeight.bold),),
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
      Expanded(child: Text("Puyallup, WA",style: TextStyle(fontWeight: FontWeight.bold)))
    ],
  ),
  // child: Text("  Load#:L112  ",style: TextStyle(backgroundColor: Colors.lightBlueAccent,color: Colors.white,fontWeight: FontWeight.bold),),
),
Container(
  // height: 30,
  padding: EdgeInsets.only(bottom: 5,top: 2,left: 50,right: 20),
  // color: Colors.red,
  alignment: Alignment.centerLeft,
  child: Text("Today 23:00 appt",style:TextStyle(fontSize: 12)),
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
      Expanded(child: Text("Willsonville, OR",style: TextStyle(fontWeight: FontWeight.bold)))
    ],
  ),
  // child: Text("  Load#:L112  ",style: TextStyle(backgroundColor: Colors.lightBlueAccent,color: Colors.white,fontWeight: FontWeight.bold),),
),
Container(
  // height: 30,
  padding: EdgeInsets.only(bottom: 5,top: 2,left: 50,right: 20),
  // color: Colors.red,
  alignment: Alignment.centerLeft,
  child: Text("Tommorow 6:30 appt",style:TextStyle(fontSize: 12)),
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
   
   drawer: Drawer(
     child: ListView(
children: [
  DrawerHeader(
    child: Container(
      // color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Container(child: Container(
                padding: EdgeInsets.only(left: 10),
                child: ClipOval(
                  // backgroundImage: Image.asset("lib/images/ben.jpg",fit: BoxFit.cover,width: 100,height: 100),
                  // radius: 50,
                  child: Image.asset("lib/images/ben.jpg",fit: BoxFit.cover,width: 80,height: 80),
                ),
                // alignment: Alignment.bottomCenter,
                // child: Align(child: Image.asset("lib/images/ben.jpg",fit: BoxFit.fill,width: 80,height: 80,alignment: Alignment.topLeft,)),
              )),
              Align(child: Image.asset("lib/images/Logo.png",width: 80,height: 80,),alignment: Alignment.topRight,)
            ],
          )
       ,
       
       Container(
         height: 10,
         width: MediaQuery.of(context).size.width,
       ),
       Container(
        //  height: 50,
        padding: EdgeInsets.only(left: 10,right: 10),

        // color: Colors.white,
        width: MediaQuery.of(context).size.width,
        // child: Text("fasdasdfsda"),
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            Text("Amritpal Singh",style: TextStyle(fontWeight: FontWeight.bold),),
            Text("Bugga Trucking",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),),
          ],
        ),
       )
        ],
      ),
    ),

  ),

  // Container(
  //               color: Colors.white,
  //               child: ListTile(
  //                 onTap: () {},
  //                 title: Text("Email"),
  //                 leading: const IconButton(icon: Icon(Icons.email), onPressed: null),
  //                 trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
  //            ),

 

getTripsGestureDetectorWidget("TRIPS", "lib/images/Home.png"),
getLocalTripsGestureDetectorWidget("LOCAL TRIPS", "lib/images/Home.png"),
getExpenseGestureDetectorWidget("EXPENSES", "lib/images/Home.png"),
getMessageGestureDetectorWidget("MESSAGES", "lib/images/Home.png"),
getHistoryGestureDetectorWidget("HISTORY", "lib/images/Home.png"),
getSettingGestureDetectorWidget("SETTINGS", "lib/images/Home.png"),
getHelpGestureDetectorWidget("HELP", "lib/images/Home.png"),
getLogoutGestureDetectorWidget("LOGOUT", "lib/images/Home.png"),
],
     ),
   ),
   
    );
  }

Widget getSettingGestureDetectorWidget(String title, String imagePath) {
return  Container(
    // color: Colors.red,
    child: ListTile(
      onTap: () {
        Navigator.pop(context);
Navigator.push(context, MaterialPageRoute(builder: (context) => Settings() ));
      },
      title: Text("SETTINGS",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.blueGrey),),
      leading: const IconButton(icon: Icon(Icons.settings), onPressed: null),
      trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
    ),
  );

}

Widget getTripsGestureDetectorWidget(String title, String imagePath) {

return  Container(
    // color: Colors.red,
    child: ListTile(
      onTap: () {
        Navigator.pop(context);
// Navigator.push(context, MaterialPageRoute(builder: (context) => TripDetail() ));
      },
      title: Text("TRIPS",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.blueGrey),),
      leading: const IconButton(icon: Icon(Icons.alt_route), onPressed: null),
      trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
    ),
  );

}
  
Widget getLogoutGestureDetectorWidget(String title, String imagePath) {
 
 return  Container(
    // color: Colors.red,
    child: ListTile(
      onTap: () {
        Navigator.pop(context);
// Navigator.push(context, MaterialPageRoute(builder: (context) => Settings() ));
      },
      title: Text("LOGOUT",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.blueGrey),),
      leading: const IconButton(icon: Icon(Icons.logout), onPressed: null),
      trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
    ),
  );

}

Widget getLocalTripsGestureDetectorWidget(String title, String imagePath) {
 
return Container(
    // color: Colors.red,
    child: ListTile(
      onTap: () {
        Navigator.pop(context);
Navigator.push(context, MaterialPageRoute(builder: (context) => LocalTrips() ));
      },
      title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.blueGrey),),
      leading: const IconButton(icon: Icon(Icons.low_priority_sharp), onPressed: null),
      trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
    ),
  );

}

Widget getExpenseGestureDetectorWidget(String title, String imagePath) {

return Container(
    // color: Colors.red,
    child: ListTile(
      onTap: () {
        Navigator.pop(context);
Navigator.push(context, MaterialPageRoute(builder: (context) => Expense() ));
      },
      title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.blueGrey),),
      leading: const IconButton(icon: Icon(Icons.request_page_sharp), onPressed: null),
      trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
    ),
  );

}

Widget getMessageGestureDetectorWidget(String title, String imagePath) {
 return  Container(
    // color: Colors.red,
    child: ListTile(
      onTap: () {
        Navigator.pop(context);
Navigator.push(context, MaterialPageRoute(builder: (context) => Message() ));
      },
      title: Text("MESSAGE",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.blueGrey),),
      leading: const IconButton(icon: Icon(Icons.message), onPressed: null),
      trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
    ),
  );
}

Widget getHistoryGestureDetectorWidget(String title, String imagePath) {
  
   return  Container(
    // color: Colors.red,
    child: ListTile(
      onTap: () {
        Navigator.pop(context);
Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryViewController() ));
      },
      title: Text("HISTORY",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.blueGrey),),
      leading: const IconButton(icon: Icon(Icons.history), onPressed: null),
      trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
    ),
  );

}

Widget getHelpGestureDetectorWidget(String title, String imagePath) {
 
return  Container(
    // color: Colors.red,
    child: ListTile(
      onTap: () {
        Navigator.pop(context);
Navigator.push(context, MaterialPageRoute(builder: (context) => HelpViewController() ));
      },
      title: Text("HELP",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.blueGrey),),
      leading: const IconButton(icon: Icon(Icons.help_outline), onPressed: null),
      trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
    ),
  );

}

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Would you like to continue learning how to use Flutter alerts?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

}
