import 'package:flutter/material.dart';

class TripDetail extends StatefulWidget {
  // const TripDetail({ Key? key }) : super(key: key);

  @override
  _TripDetailState createState() => _TripDetailState();
}

class _TripDetailState extends State<TripDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: AppBar(title: Text("Trip Details",style: TextStyle(fontWeight: FontWeight.w900,fontSize:18 )),
      appBar: AppBar(title: Text("ABC - 1234",style: TextStyle(fontWeight: FontWeight.w900),),
      actions: [
        IconButton(icon: const Icon(Icons.autorenew_rounded,size: 30,), onPressed: (){})
      ],
      ),
      body: SafeArea(
        child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                 
getSpaceWidget(),
getStartDateTimeWidget(),
getSpaceWidget(),
getConveyIdDetailWidget(),
getSpaceWidget(),
refIdView(),
getSpaceWidget(),
getLoadDescriptionView(),
getSpaceWidget(),
getQuantityView(),
getSpaceWidget(),
getTRAILERView(),
getSpaceWidget(),
getWEIGHTView(),
getSpaceWidget(),
getLoadTypeView(),
getSpaceWidget(),
getBLNUMBERView(),
getSpaceWidget(),
getPONUMBERView(),
getSpaceWidget(),


                ],
              ),
            ),
        ),
      ),
    );
  }

  Widget getMapImageWidget(){

return  Container(
                    width: MediaQuery.of(context).size.width,
                    // padding: EdgeInsets.all(10),
                    // height: 150,
                    // color: Colors.blue,
                    alignment: Alignment.center,
                    child: Image.asset("lib/images/map.png"),
                    
                  );

  }

  Widget getSpaceWidget(){
  return Container(
    height: 10,
    width: MediaQuery.of(context).size.width,
    // color: Colors.red,

   
  );
}

Widget getConveyIdDetailWidget(){
  return Container(
    // height: 60,
    width: MediaQuery.of(context).size.width,
    // color: Colors.black,
     child: Row(
      children: [
        Expanded(
          child: Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10,right: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("LOAD NUMBER"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left: 10,right: 10),
                   alignment: Alignment.centerLeft,
                  child: Text("ABC - 1234",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          ),
        ),
       
        Container(
          height: 60,
          width: 1,
          color: Colors.grey,
        ),
 Expanded(
          child: Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10,right: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("TRIP NUMBER"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left: 10,right: 10),
                   alignment: Alignment.centerLeft,
                  child: Text("TRP - T2345",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          ),
        ),
       
      ],
    ),
  );
}
Widget getStartDateTimeWidget(){
  return Container(
    // height: 30,
    width: MediaQuery.of(context).size.width,
    color: Colors.lightBlue[100],
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
    child: Text("STARTS TODAY",style: TextStyle( color: Colors.black),),
  );
}

Widget refIdView(){
  return Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("DELIVERY TIME"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left:10,right: 5),
                   alignment: Alignment.centerLeft,
                  child: Text("WEDNESDAY 23, 2021",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          );
}

Widget getQuantityView(){
  return Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("QUANTITY"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left:10,right: 5),
                   alignment: Alignment.centerLeft,
                  child: Text("23.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          );
}

Widget getLoadDescriptionView(){
  return Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("LOAD DESCRIPTION"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left:10,right: 5),
                   alignment: Alignment.centerLeft,
                  child: Text("antenna is connected to the output of a radio transmitter and electrically simulates an antenna, to allow the transmitter to be adjusted.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          );
}

Widget getTRAILERView(){
  return Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("TRAILER NUMBER"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left:10,right: 5),
                   alignment: Alignment.centerLeft,
                  child: Text("NOT AVAILABLE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          );
}



Widget getLoadTypeView(){
  return Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("LOAD TYPE"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left:10,right: 5),
                   alignment: Alignment.centerLeft,
                  child: Text("BAG",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          );
}

Widget getWEIGHTView(){
  return Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("WEIGHT"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left:10,right: 5),
                   alignment: Alignment.centerLeft,
                  child: Text("32.5 KG",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          );
}

Widget getBLNUMBERView(){
  return Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("BL NUMBER"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left:10,right: 5),
                   alignment: Alignment.centerLeft,
                  child: Text("N1ET4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          );
}

//PO NUMBER
Widget getPONUMBERView(){
  return Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only( top: 5,left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("PO NUMBER"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5, top: 5,left:10,right: 5),
                   alignment: Alignment.centerLeft,
                  child: Text("----",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                )
              ],
            ),
          );
}

}