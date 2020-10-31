import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: -250,
                  right: -200,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[200], shape: BoxShape.circle),
                    height: size.height + 150,
                    width: size.width + 150,
                  ),
                ),
                Positioned(
                    bottom: -200,
                    left: -100,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[200], shape: BoxShape.circle),
                      height: 300,
                      width: 300,
                    )),
                Positioned(
                    top: 60,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[900], shape: BoxShape.circle),
                      height: 150,
                      width: 150,
                    )),
                Container(
                    height: size.height,
                    width: size.width,
                    child: Column(children: [
                      Container(
                          height: size.height-200,
                          width: size.width,
                          margin: EdgeInsets.only(
                            top: 200,
                          ),
                          child: Stack(children: [
                            Column(
                              children: [
                                Container(
                                  height: size.width -100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: Offset(5, 5),
                                            blurRadius: 10,
                                            color: Colors.black26,
                                          )
                                        ]),
                                    margin: EdgeInsets.all(20),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [
                                      Text('LOGIN',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blue[800],
                                              fontSize: 40)),
                                      TextField(
                                          decoration: InputDecoration(
                                             hintText: 'Email (Required)')),
                                      TextField(
                                          decoration: InputDecoration(
                                              hintText: 'Password (Required)')),
                                          SizedBox(height:10),
                                          GestureDetector(
                                            child:Text('Forgot password?',style: TextStyle(fontFamily: 'OpenSans'))
                                          )
                                    ]),
                                ),
                                SizedBox(height:25),

                                Text('or Login With',style: TextStyle(fontFamily: 'OpenSans')),
                                SizedBox(height: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      color:Colors.blue[700],
                                    boxShadow: [
                                      BoxShadow(
                                        offset:Offset(5,5),
                                        blurRadius: 10,
                                        color:Colors.black38
                                      )
                                    ]
                                  ),
                                  height:40,
                                  width:200,
                                  child: Row(
                                    children:[
                                      Image(image: AssetImage('images/fblogo.png'),height: 25,),
                                      Text(' Login with Facebook')                                    ]
                                  )
                                ),
                                SizedBox(height: 10),
                                Container(
                                    decoration: BoxDecoration(
                                        color:Colors.blue[700],
                                        boxShadow: [
                                          BoxShadow(
                                              offset:Offset(5,5),
                                              blurRadius: 10,
                                              color:Colors.black38
                                          )
                                        ]
                                    ),
                                    height:40,
                                    width:200,
                                    child: Row(
                                        children:[
                                          Image(image: AssetImage('images/google_g.png')),
                                          Text(' Login with Google')                                    ]
                                    )
                                )
                              ],
                            ),
                            Positioned(
                              bottom: 185,
                              right: 50,
                              child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue[900], shape: BoxShape.circle),
                                    height:  50,
                                    width:  50,
                                    child: Center(
                                        child: Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.white,
                                        )
                                    ),
                                  )
                              ),
                            ),
                          ]))
                    ])),
            Positioned(
            bottom: 20,
            right: 30,
              child: Text('Register',style:TextStyle(color:Colors.blue[800],fontWeight: FontWeight.w900))
            )
            ],
             )

            ),
          ),
        ),
      );
  }
}