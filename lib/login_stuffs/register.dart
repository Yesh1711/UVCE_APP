import 'package:project/login_stuffs/login.dart';
import 'package:project/login_stuffs/mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class register extends StatefulWidget {

  static const String id ='register';

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final GlobalKey<ScaffoldState>scaffoldKey =new GlobalKey<ScaffoldState>();

  void showSnackBar(title, context) {
    final SnackBar snackBar = SnackBar(
      content: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  final FirebaseAuth _auth= FirebaseAuth.instance;



  var fullNameController = TextEditingController();

  var phoneController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();


  void registerUser() async{
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print(userCredential);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text(
            "Registered Successfully. Please Login..",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => login(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, Mainpage.id, (route) => false);

          },
          child: Text('back',
            style: TextStyle(
              color: Colors.black,
            ),),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),

                SizedBox(
                  height: 20,
                ),
                Text('Create a Reader\'s Account',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Branded-Bold',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: fullNameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        onPressed: (){

                          if(fullNameController.text.length<3){
                            showSnackBar('Please proviide a valid fullname', context);
                            return;
                          }
                          if(!emailController.text.contains('@')){
                            showSnackBar('please provide a valid email address', context);
                            return;
                          }

                          if(phoneController.text.length< 10){
                            showSnackBar('please provide a valid phone number', context);
                            return;
                          }
                          if(passwordController.text.length <8){
                            showSnackBar('The password should be 8 digits', context);
                            return;
                          }
                          registerUser(

                          );
                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25),
                        ),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        child: Text('REGISTER',
                          style: TextStyle(
                            fontSize:18,
                            fontFamily: 'Brand-Bold',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(context, login.id, (route) => false);

                  },
                  child: Text(
                    'Already have a RIDER Account? Login in',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}