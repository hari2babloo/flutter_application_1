import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/icecream.dart';
import 'package:flutter_application_1/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Comp1(),
    );
  }
}

class Comp1 extends StatefulWidget {
  const Comp1({super.key});

  @override
  State<Comp1> createState() => _Comp1State();
}

class _Comp1State extends State<Comp1> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    Profile(),
    Icecream(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comp1'),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('statement');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
          NavigationDestination(icon: Icon(Icons.icecream), label: 'Ice cream'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
