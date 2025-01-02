import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

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
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const MyApp();
            }));
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
                Text('Title',
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
