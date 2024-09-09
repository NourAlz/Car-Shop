import 'package:flutter/material.dart';
import 'package:myapp/components/switch.dart';
import 'login.dart';

class SettingPage extends StatefulWidget{
  const SettingPage({super.key});

  _SettingState createState() => _SettingState();
}
String name = getUser();
String passw = getPass();

class _SettingState extends State<SettingPage>{

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),

      body: Column(
        children: <Widget>[
          const SizedBox(height: 15,),
          const Text('Personal Information', 
            style: TextStyle(color: Colors.white, fontSize: 25),),

            const SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.all(10),
              decoration:BoxDecoration(
                  border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                  ),
                borderRadius: BorderRadius.circular(1),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Full Name: ${name}',
                  style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20),),
              ),
            ),

            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration:BoxDecoration(
                  border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                  ),
                borderRadius: BorderRadius.circular(1),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Password: ${passw}',
                  style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20),),
              ),
            ),

            const SizedBox(height: 50,),
            const Text('Notifications', 
            style: TextStyle(color: Colors.white, fontSize: 25),),
            
            const SizedBox(height: 10,),
            const SwitchButton(switch1: false, text: 'Sales'),

            const SizedBox(height: 10,),
            const SwitchButton(switch1: false, text: 'New Arrivals'),

            const SizedBox(height: 10,),
            const SwitchButton(switch1: false, text: 'Delivery Status'),
        ],
      ),
    );
    
    
  }
}