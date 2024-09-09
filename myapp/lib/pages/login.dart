import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/components/button.dart';
import 'package:myapp/components/logtext.dart';
import 'package:myapp/components/squaretile.dart';


String password = '', user = '';
String getPass() => password;
String getUser() => user;

class LoginPage extends StatelessWidget{
  LoginPage({super.key});

  final usernameCont = TextEditingController();
  final passCont = TextEditingController();
  
  
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 80,),
          Icon(Icons.lock,
          size: 100,
          color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 15,),
          Text('Tell us Who You Are',
          style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 18, fontWeight: FontWeight.bold),),
          
          const SizedBox(height: 25,),
          LogTextField(
            controller: usernameCont,
            hint: 'Username',
            obsecure: false,
            ),
          const SizedBox(height: 10,),
          LogTextField(
            controller: passCont,
            hint: 'Password',
            obsecure: true,
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 14),
                  )
                ],
              ),
            ),

            const SizedBox(height: 25,),
            Button(onTap: () {
              if(passCont.text.toString() == '' || usernameCont.text.toString() == ''){
                  Fluttertoast.showToast(
                    msg: "Please fill in the information",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 2,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 14.0
                  );
              }else{
                password = passCont.text;
                user = usernameCont.text;
                Navigator.pushNamed(context, '/IntroPage');
              }
            }, 
              child: Text('Sign In', 
              style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontSize: 20
              ),)
            ),

            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  Text('Or Continue With', 
                  style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 14),),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Square(imgPath: 'assets/images/google.png'),
                SizedBox(width: 25,),
                Square(imgPath: 'assets/images/apple.png')
                
              ],
            ),

            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?', style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),),

                const SizedBox(width: 5,),
                const Text('Register now', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),)
              ],
            )
        ],
      ),
    );
  }
}