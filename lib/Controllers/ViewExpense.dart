import 'package:flutter/material.dart';

class ViewExpense extends StatefulWidget {

  @override
  _ViewExpenseState createState() => _ViewExpenseState();
}

class _ViewExpenseState extends State<ViewExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Expense"),),
      body: SafeArea(child: 
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
            // alignment: Alignment.centerLeft,
          
                padding:EdgeInsets.all(15) ,
                child: Container(
                //  height: 300,
                 width: MediaQuery.of(context).size.width,  
    alignment: Alignment.bottomLeft,
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
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    getSubDetailView("Trip No.", "11"),
    getSubDetailView("Expense Reason", "Overtime meal"),
    getSubDetailView("Expense Value", "575 CAD"),
    getSubDetailView("Expense Value", "575 CAD"),
    getSubDetailView("Remarks", "Dummy remarks for testing"),
    getuploadedDocumentView("Uploaded Document")
  ],
),

                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                  child: RaisedButton(
          onPressed: () {},
          child: const Text('Delete Expense', style: TextStyle(fontSize: 20)),
          color: Colors.red,
          textColor: Colors.white,
          elevation: 5,
        ),
              )
            ],
          ),
        ),
      )
      ),
    );
  }

Widget getSubDetailView(String title,String detail){
return SizedBox(
   width: double.infinity,
  child:   Container(
    padding: EdgeInsets.all(20),
    // alignment: Alignment.topLeft,
    // color: Colors.yellow,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(child: Text(title,style: TextStyle(color: Colors.grey,)),width: MediaQuery.of(context).size.width,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 10,
        ),
        Container(child: Text(detail),width: MediaQuery.of(context).size.width,),
        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   height: 10,
        // ),
        Divider(
          thickness: 1,
        )
      ],
    ),
  ),
);
}

Widget getuploadedDocumentView(String title){
return SizedBox(
   width: double.infinity,
  child:   Container(
    padding: EdgeInsets.all(20),
    // alignment: Alignment.topLeft,
    // color: Colors.yellow,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(child: Text(title,style: TextStyle(color: Colors.grey,)),width: MediaQuery.of(context).size.width,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 10,
        ),
        // Container(child: Text(detail),width: MediaQuery.of(context).size.width,),
        // // Container(
        // //   width: MediaQuery.of(context).size.width,
        // //   height: 10,
        // // ),
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Image.asset("lib/images/map.png")
            ],
          ),
        ),

        Divider(
          thickness: 1,
        )
      ],
    ),
  ),
);
}


}