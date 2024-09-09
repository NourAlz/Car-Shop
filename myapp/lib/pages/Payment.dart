import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget{
  const PaymentPage({super.key});

  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<PaymentPage>{
  int? selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Cards",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
        children: <Widget>[
          Container(height: 100,
            child: Card(
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset('assets/images/paypal.jpg',),
              ),
              title: Text('Paypal', 
                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20),),
              trailing: Radio(
                value: 1,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(val as int);
                },
              ),
            ),
          ),
          ),
        
          const SizedBox(height: 25,),
          Container(
            height: 100,
            child: Card(
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset('assets/images/visacard.jpg',),
              ),
              title: Text('Visa Card', 
                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20),),
              trailing: Radio(
                value: 2,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(val as int);
                },
              ),
            ),
          ),
          ),
          
          const SizedBox(height: 25,),
          Container(
            height: 100,
            child: Card(
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset('assets/images/master.jpg',),
              ),
              title: Text('Master card', 
                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20),),
              trailing: Radio(
                value: 3,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(val as int);
                },
              ),
            ),
          ),
          ),
        ],
            ),
      ),
    );
  }
}