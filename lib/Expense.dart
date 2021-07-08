import 'package:flutter/material.dart';
import 'package:icloudtms/Controllers/AddExpense.dart';
import 'package:icloudtms/Controllers/ViewExpense.dart';

class Expense extends StatefulWidget {
  @override
  _ExpenseState createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expenses"),
      actions: [
        //IconButton(icon: const Icon(Icons.menu)
        IconButton(icon: const Icon(Icons.add) , onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddExpense() ));
        })
      ],
      ),
      body: Stack(
children: [
  // getGradientView(),
getListView()
],
      ),
    );
  }

  Widget getListView(){
    return Container(
color: Colors.transparent,
height: MediaQuery.of(context).size.height,
width: MediaQuery.of(context).size.width,
child: ListView.builder(
  itemCount: 3,
  itemBuilder:  (BuildContext context,int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ViewExpense()));
      },
      child: Container(
color: Colors.transparent,
// height: 100,
padding: EdgeInsets.all(10),
width: MediaQuery.of(context).size.width ,
child: Center(
  child: Container(
    // color: Colors.red,
    // height: 80,
    padding: EdgeInsets.all(10),
    width:MediaQuery.of(context).size.width - 20 ,
     decoration: BoxDecoration(
          //BorderRadius.all(Radius.circular(20))
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color:  Colors.white,
          boxShadow: [
BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 5,
  blurRadius: 7,
  offset: Offset(0,3),
)
],
        ),
        child: Column(
          children: [
             Container(
               padding: EdgeInsets.all(10),
               width: MediaQuery.of(context).size.width - 20,
              //  color: Colors.red,
               child:Text("Trip Number#"),
             ),

              Container(
               padding: EdgeInsets.all(10),
               width: MediaQuery.of(context).size.width - 20,
              //  color: Colors.red,
               child:Text("11",style: TextStyle(fontWeight: FontWeight.bold),),
             )
          ],
        ),
  ),
),
      ),
    );
  },
),
    );
  }

Widget getGradientView(){
  return  Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight, //Alignment(0.1,0.0),
            colors: <Color>[
              Colors.blue,
Colors.yellow,
              // Color(0xffee0000),
              // Color(0xffeeee00),
            ]
          )
        ),
      );
}


}