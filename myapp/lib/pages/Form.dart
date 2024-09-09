import 'package:flutter/material.dart';
import 'package:myapp/components/button.dart';

class FormPage extends StatefulWidget{
  const FormPage({super.key});

  _FormPageState createState() => _FormPageState();
}

List<Info> info = [];
List<Info> getInfo() => info;

class _FormPageState extends State<FormPage>{
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController zipcodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Page')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            TextField(
              controller: cityController,
              decoration: InputDecoration(labelText: 'City'),
            ),
            TextField(
              controller: countryController,
              decoration: InputDecoration(labelText: 'Country'),
            ),
            TextField(
              controller: zipcodeController,
              decoration: InputDecoration(labelText: 'Zip Code'),
            ),
            const SizedBox(height: 20,),

            Button(
              onTap: () {
                Info item = Info(
                  name: nameController.text,
                  address: addressController.text,
                  city: cityController.text,
                  country: countryController.text,
                  zipcode: zipcodeController.text,
                );
                setState(() {
                  info.add(item);
                  Navigator.pushNamed(context, '/Address');
                });
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class Info {
  final String name;
  final String address;
  final String city;
  final String country;
  final String zipcode;
  bool checked;

  Info({required this.name, required this.address, required this.city, required this.country, required this.zipcode, this.checked = false});
}
