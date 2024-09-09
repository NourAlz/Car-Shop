import 'package:flutter/material.dart';
import 'Form.dart';

class Address extends StatefulWidget{
  const Address({super.key});

  _AddressState createState() => _AddressState();
}
List<Info> mine = getInfo();

class _AddressState extends State<Address>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shipping Address",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: mine.length,
        itemBuilder: (context, index) {
          return Stack(children: <Widget>[
              Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Name: ${mine[index].name}',
                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20, fontWeight: FontWeight.bold),),
                
                Text('Address: ${mine[index].address}',
                style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 16),),
                
                Text('City: ${mine[index].city}',
                style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 16),),
                
                Text('Country: ${mine[index].country}',
                style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 16),),
                
                Text('Zip Code: ${mine[index].zipcode}', 
                style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 16),),

                Row(children: <Widget>[
                   Checkbox(
            value: mine[index].checked,
            onChanged: (bool? value) {
              setState(() {
                mine[index].checked = value!;
              });
            }
                   ),
                    const Text('Use This Shipping Address',
                    style: TextStyle(color: Colors.white, fontSize: 14)),
                ],)
                
              ],
            ),
          ),
          Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red,),
                  onPressed: () {
                    setState(() {
                      mine.removeAt(index);
                    });
                  },
                ),
              ),
          ],);
          
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: () {
          Navigator.pushNamed(context, '/FormPage');
        },
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.background,),
      ),
    );
  }
}
