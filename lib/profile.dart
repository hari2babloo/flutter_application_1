import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/bg.jpeg'),
          Container(
            color: Colors.deepOrangeAccent,
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Profile',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                        backgroundColor: Colors.yellow)),
                Text('Description', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
