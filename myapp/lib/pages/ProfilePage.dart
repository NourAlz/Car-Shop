import 'package:flutter/material.dart';
import 'login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

String prof = getUser();

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 20.0, left: 10, top: 15),
            child: Row(
              children: <Widget>[
                const Icon(
                  Icons.person_2_rounded,
                  size: 70.0,
                ),
                const SizedBox(width: 8.0),
                Text(
                  prof,
                  style: TextStyle(fontSize: 30.0, color: Theme.of(context).colorScheme.primary),
                ),
              ],
            ),
          ),
          _buildPath(context, 'My Orders', '/Orders'),
          _buildPath(context, 'Shipping Addresses', '/Address'),
          _buildPath(context, 'Payment Methods', '/Payment'),
          _buildPath(context, 'Setting', '/Setting')
        ],
      ),
    );
  }

  Widget _buildPath(BuildContext context, String name, String path) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, path);
      },
      child: Container(
        height: 100,
        child: Card(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
