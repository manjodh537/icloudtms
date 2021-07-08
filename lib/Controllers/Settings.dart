import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  // const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {


bool notificationsOn = false;
bool lockApplicationInBackground = false;

bool useFingerPrint = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [


               ListTile(
                // onTap: () {},
              
              
                title: Text("Common"),
                // //Icon(Icons.menu)
                // leading: const IconButton(icon: Icon(Icons.access_alarms), onPressed: null),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                    // selected: true,
                  onTap: () {},
                  title: Text("Language"),
                  subtitle: Text("English"),
                  //Icon(Icons.menu)
                  leading: const IconButton(icon: Icon(Icons.language), onPressed: null),
                  trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
                ),
              ),
               Container(
                color: Colors.white,
                child: ListTile(
                    // selected: true,
                  onTap: () {},
                  title: Text("Notifications"),
                  //Icon(Icons.menu)
                  leading: const IconButton(icon: Icon(Icons.notifications), onPressed: null),
                 trailing: Switch(value:notificationsOn , onChanged: (result ) {
                   setState(() {
                     notificationsOn = result;
                   });
                 }),
                  // trailing: 
                  //const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
                ),
              ),

// Account Details

   ListTile(
title: Text("Account"),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                    // selected: true,
                  onTap: () {},
                  title: Text("Phone"),
                  leading: const IconButton(icon: Icon(Icons.phone), onPressed: null),
                  trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
                ),
              ),
               Container(
                color: Colors.white,
                child: ListTile(
                  onTap: () {},
                  title: Text("Email"),
                  leading: const IconButton(icon: Icon(Icons.email), onPressed: null),
                  trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
             ),

              ),
            //    Container(
            //     color: Colors.white,
            //     child: ListTile(
            //       onTap: () {},
            //       title: Text("Logout"),
            //       leading: const IconButton(icon: Icon(Icons.logout), onPressed: null),
            //       trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
            //  ),
             
              // ),


// Security

   ListTile(
title: Text("Security"),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                    // selected: true,
                  onTap: () {},
                  title: Text("Lock App in background"),
                  leading: const IconButton(icon: Icon(Icons.lock_clock), onPressed: null),
                  // trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
                trailing: Switch(value:lockApplicationInBackground , onChanged: (result ) {
                   setState(() {
                     lockApplicationInBackground = result;
                   });
                 }),
                ),
              ),

                Container(
                color: Colors.white,
                child: ListTile(
                    // selected: true,
                  onTap: () {},
                  title: Text("Use fingerprint"),
                  leading: const IconButton(icon: Icon(Icons.fingerprint), onPressed: null),
                  // trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
                trailing: Switch(value:useFingerPrint , onChanged: (result ) {
                   setState(() {
                     useFingerPrint = result;
                   });
                 }),
                ),
              ),

                Container(
                color: Colors.white,
                child: ListTile(
                    // selected: true,
                  onTap: () {},
                  title: Text("Rate us"),
                  leading: const IconButton(icon: Icon(Icons.rate_review_rounded), onPressed: null),
                   trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
                
                ),
              ),

//Misc 

 ListTile(
title: Text("Misc"),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                    // selected: true,
                  onTap: () {},
                  title: Text("Terms and conditions"),
                  leading: const IconButton(icon: Icon(Icons.dock), onPressed: null),
                  trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
                ),
              ),

 ListTile(
// title: Text(""),
              ),

               Container(
                color: Colors.white,
                child: ListTile(
                  onTap: () {},
                  title: Text("Logout"),
                  leading: const IconButton(icon: Icon(Icons.logout), onPressed: null),
                  // trailing: const IconButton(icon: Icon(Icons.navigate_next), onPressed: null) ,
             ),
               ),
             


            ],
          ),
        )
      ),
    );
  }
}