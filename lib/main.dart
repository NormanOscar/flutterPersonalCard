import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layouts in Flutter',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 32, 52, 76),
          fontFamily: 'Comfortaa',
        ),
      home: const LayoutPage(),
    );
  }
}

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Personal Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 55,89,130),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/portrait.png'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 2, color: Colors.white),
                ),
              ),
              const Text(
                'Oscar Norman',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: ContactCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Text(
              'Student at Linnaeus University',
              style: TextStyle(
                color: Color.fromARGB(255, 32, 52, 76),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          contactListTile(Icons.phone, '+46 733 70 62 10'),
          contactListTile(Icons.email, 'on222gf@student.lnu.se'),
          contactListTile(Icons.web, 'https://lnu.se'),
        ],
      ),
    );
  }
}

Widget contactListTile(IconData iconName, String contactText) {
  return ListTile(
    leading: Icon(
      iconName,
      color: Colors.teal,
    ),
    title: Text(
      contactText,
      style: const TextStyle(
        color: Color.fromARGB(255, 32, 52, 76),
        fontSize: 19,
      ),
    ),
  );
}