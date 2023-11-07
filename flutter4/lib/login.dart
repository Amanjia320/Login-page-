
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatelessWidget {
  GlobalKey  _form = GlobalKey();
   MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
              child: Form(
                key: _form,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                       Image.asset("assets/shopping.png"),
                        Text('Welcome to My Shop ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                        ),
                        SizedBox(height: 35,),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: SizedBox(
                            width:  350,
                            child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.face,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelStyle: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),

                                labelText: "UserName",
                                border: InputBorder.none,
                              ),

                            ),
                          ),
                        ),



                        SizedBox(height: 10,),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(60.0),
                            ),
                          ),
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelStyle: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),

                                labelText: "Password",
                                border: InputBorder.none,
                              ),

                            ),
                          ),
                        ),

                        SizedBox(height: 15,),

                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 60, 15, 50),
                          child: CupertinoButton(
                              child: Container(
                                 width: double.infinity,
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(16.0),
                                // height: size.height* 0.080,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Theme.of(context).primaryColor,
                                      // offset: Offset(0,25),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: Text("Log in",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              onPressed: (){},
                          ),
                        ),
                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Do not have an account?"),
                           TextButton(
                               onPressed: (){},
                               child: Text('Register Now',style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor),
                               ),
                           ),
                          ],

                        )

                      ],
                    ),
                  ),
              ),
          ),
        ),
      ),
    );
  }
}
