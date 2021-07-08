import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {

  @override
  _AddExpenseState createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Add Expense"),),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(40),
          
          child: Container(
            
            width: MediaQuery.of(context).size.width ,
            height: 500, 
            decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(15),
boxShadow: [
BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 5,
  blurRadius: 7,
  offset: Offset(0,3),
)
],

            ),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText:"Select Trip Number"
                  ),
                  
                ),
                getSpaceWidget(),
                TextField(
                  decoration: InputDecoration(
                    hintText:"Select Expense Reason"
                  ),
                  
                ),
               getSpaceWidget(),
     
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  // color: Colors.red,
                  child: Row(
                    children: [ 
                Flexible(
                  child: TextField(
                    
                    decoration: InputDecoration(
                      hintText:"Amount"
                    
                    ),
                    
                  ),
                ),
 Container(
                  width: 40,
                  height: 20,
                ),

                 Flexible(
                  child: TextField(
                    
                    decoration: InputDecoration(
                      hintText:"Expense value"
                    
                    ),
                    
                  ),
                ),

// TextField(
//                 decoration: InputDecoration(
//                   hintText:"Select Expense Reason"
//                 ),
                  
//               ),

                    ],
                  ),
                ),
           
              getSpaceWidget(),
                TextField(
                  decoration: InputDecoration(
                    hintText:"Remarks (if any)"
                  ),
                  
                ),
  getSpaceWidget(),

                Row(
                  children: [
                    Text("Upload Document"),
                     Text(" (Optional)",style: TextStyle(color: Colors.grey),)
                  ],
                ),

                getSpaceWidget(),

 Row(
                  children: [
                    Container(
                  width: 40,
                  height: 40,
                  color: Colors.red,
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset("lib/images/addDoucment.jpg"),
                  ),
                )
                  ],
                ),
               
getSpaceWidget(),
getSpaceWidget(),

Container(
  height: 40,
  width: MediaQuery.of(context).size.width,
  child: Center(
    child: Container(
        height: 40,
        width: 100,
        
        decoration: BoxDecoration(
color: Colors.orange,
borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        alignment: Alignment.center,
        child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
    ),
  ),
)

              ],
            ),

          ),
        ),
      ),
    );
  }


  Widget getSpaceWidget(){
    return   Container(
                width: MediaQuery.of(context).size.width,
                height: 20,
              );
  }
}