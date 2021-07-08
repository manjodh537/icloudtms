import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:icloudtms/DriverTrips.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Login"),),
      body: SafeArea(
        child: Stack(
          children: [
         
            SingleChildScrollView(
              child: Container(
                // color: Colors.red,
                child: Column(
                  children: [
                  // baseImageView(),
getLogoContainer(),
getSpaceContainer(20),
getHelloContainer(),


                  ],
                ),
              
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget baseImageView(){
  return   Container(
             height: 200,
             width: MediaQuery.of(context).size.width,
// color: Colors.red,
alignment: Alignment.topRight,
child: Image.asset("lib/images/SideLogo.png"),
           );
}

  Widget getLogoContainer(){
return   Container(
                // color: Colors.yellow,
                height: 200,
                width: MediaQuery.of(context).size.width,
  child: Center( 
            child: Image.asset("lib/images/Logo.png",height: 200,width: 200,fit: BoxFit.contain,),
          ),
              );
  }

  Widget getSpaceContainer(double height){

return Container(
    //  color: Colors.green,
                height: height,
                width: MediaQuery.of(context).size.width,
);
  }

  Widget getSignInTextContainer(){ 
return  Container(
                      color: Colors.white,
                      height: 40,
                      width: MediaQuery.of(context).size.width - 50,
                      alignment: Alignment.center,
                      child: Text("Sign into your Account",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                    
);
  }

Widget getHelloContainer(){

return Container(
    //  color: Colors.red,
                // height: 70,
                width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                //   color: Colors.red
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
     color: Colors.white,
                height: 10,
                width: MediaQuery.of(context).size.width - 50,
),
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: MediaQuery.of(context).size.width - 50,
                      alignment: Alignment.center,
                      child: Text("Hello",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
                    ),
                    getSignInTextContainer(),
                    Container(
                      color: Colors.white,
                      height: 20,
                      width: MediaQuery.of(context).size.width - 50,
                      alignment: Alignment.center,
                      // child: Text("Hello",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
                    ),

getusernameView(),
getusernameTextView(),
getpasswordView(),
getpasswordTextView(),
bottomSpace(),
bottomButtonForSpace(),
bottomSpace(),
Container(
height: 80,
width: MediaQuery.of(context).size.width,
alignment: Alignment.bottomCenter,
child:Text("Version: 1.0") ,
),
Container(
height: 20,
width: MediaQuery.of(context).size.width,
alignment: Alignment.bottomCenter,
child:Text("Powered by iCloudTMS") ,
),

                  ],
                ),
);

}


Widget bottomButtonForSpace(){

return  Container(
                      color: Colors.white,
                      height: 60,
                      width: MediaQuery.of(context).size.width - 50,
                      // child: Container(
                      //   height: 50,
                      //   width: 150,
                      alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            navigationToHomeScreen(context);
                          },
                          child: Container(
                           height: 50,
                           width: MediaQuery.of(context).size.width - 200, 
                          alignment: Alignment.center,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(25)),
                             color: Colors.orange,
                           ),
                           child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      // 
                      // child: Text("  Username",style: TextStyle(fontSize:15,fontWeight: FontWeight.normal,color: Colors.grey),),
                    );

}

void navigationToHomeScreen(BuildContext context){
//Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));

Navigator.of(context).push(MaterialPageRoute(builder: (context) => DriverTrips()));
}

Widget bottomSpace(){

return  Container(
                      color: Colors.white,
                      height: 60,
                      width: MediaQuery.of(context).size.width - 50,
                      // alignment: Alignment.bottomLeft,
                      // child: Text("  Username",style: TextStyle(fontSize:15,fontWeight: FontWeight.normal,color: Colors.grey),),
                    );

}

Widget getusernameView(){

return  Container(
                      color: Colors.white,
                      height: 30,
                      width: MediaQuery.of(context).size.width - 50,
                      alignment: Alignment.bottomLeft,
                      child: Text("  Username",style: TextStyle(fontSize:15,fontWeight: FontWeight.normal,color: Colors.grey),),
                    );

}


Widget getusernameTextView(){

return  Container(
                      color: Colors.white,
                      height:40,
                      width: MediaQuery.of(context).size.width - 50,
                      alignment: Alignment.center,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                      ),
                      // child: Text("Username",style: TextStyle(fontSize:20,fontWeight: FontWeight.normal,color: Colors.grey),),
                    );

}

Widget getpasswordView(){

return  Container(
                      color: Colors.white,
                      height: 30,
                      width: MediaQuery.of(context).size.width - 50,
                      alignment: Alignment.bottomLeft,
                      child: Text("  password",style: TextStyle(fontSize:15,fontWeight: FontWeight.normal,color: Colors.grey),),
                    );

}

Widget getpasswordTextView(){

return  Container(
                      color: Colors.white,
                      height:40,
                      width: MediaQuery.of(context).size.width - 50,
                      alignment: Alignment.center,
                      child: TextField(
                      obscureText: true,
                      ),
                      // child: Text("Username",style: TextStyle(fontSize:20,fontWeight: FontWeight.normal,color: Colors.grey),),
                    );

}


}
