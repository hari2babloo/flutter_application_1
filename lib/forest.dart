import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Forest extends StatelessWidget {
  const Forest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Forest'),
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
            Image.asset('assets/bg.jpeg'),
            Container(
              color: Colors.green,
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Forest',
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
      ),
    );
  }
}
