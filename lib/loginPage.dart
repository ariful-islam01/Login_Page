import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/newphoto2.png'),
                fit: BoxFit.cover
          )
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50,top:200),
              child: Text('Welcome\nBack',style: TextStyle(
                color: Colors.white,
                fontSize: 33,

              ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 65,top:370),
              child: const Text('Log In/Sign Up',style: TextStyle(
                  fontSize: 25
              ),
              ),
            ),

            SingleChildScrollView(
              child: Container(

                padding: EdgeInsets.only(
                  top:MediaQuery.of(context).size.height*0.5,
                  right: 60,
                  left: 60
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(onPressed: (){}, child: Text('Sign In', style: TextStyle(
                      color: Colors.deepOrangeAccent
                    ),)),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text("    Don't have an account?",style: TextStyle(
                        ),
                        ),
                        TextButton(onPressed: (){}, child: Text('Sign Up',style: TextStyle(
                          decoration: TextDecoration.underline, color: Colors.deepOrangeAccent
                        ),)),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: (){}, child: Text('Forgot Password?',style: TextStyle(
                            decoration: TextDecoration.underline, color: Colors.deepOrangeAccent
                        ),)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
