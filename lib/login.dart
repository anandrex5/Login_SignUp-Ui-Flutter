import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'),
              fit: BoxFit.cover // use to fit the image
              )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          //remove the default white background
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text(
                  'Welcome\nBack',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                  ),
                ),
              ),
              //add 2 views
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100, //set color to box
                          filled: true,     //color filled to box
                          hintText: 'Email',
                          border: OutlineInputBorder(  // add line to outer to box
                            borderRadius: BorderRadius.circular(10) // add radius to box email
                          )
                        ),
                      ),
                      //to maintain gap in between these boxes
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true, // password hidden
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100, //set color to box
                            filled: true,     //color filled to box
                            hintText: 'Password',
                            border: OutlineInputBorder(  // add line to outer to box
                                borderRadius: BorderRadius.circular(10) // add radius to box email
                            )
                        ),

                      ),
                      //two button in a row
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, //Maintain gap btw SignIn button
                        children: [
                          Text('Sign In',style: TextStyle(
                            color:Color(0xff4c505b),
                            fontSize: 27, fontWeight: FontWeight.w700,
                          ),),
                          CircleAvatar(          //Circular Button
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward),  //Add Arrow
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, //space btw Signup and forgot password
                        children: [
                          TextButton(onPressed: () { //provide func on SignUp btn
                            Navigator.pushNamed(context, 'register'); //Navigate one class to another 

                          }, child: Text('Sign Up', style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),)),
                          TextButton(onPressed: () {}, child: Text('Forgot Password', style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),)),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
