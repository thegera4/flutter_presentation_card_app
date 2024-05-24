import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'My Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242424),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            const Text(
                "Gerardo Medellin",
                style: TextStyle(
                  fontFamily: 'Gotham',
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
            ),
            const Text(
                "FULL STACK DEVELOPER",
                style: TextStyle(
                    fontFamily: 'Source Sans',
                    letterSpacing: 3.0,
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )
            ),
            const SizedBox(
              height: 20.0,
              width: 150.0,
              //hex color
              child: Divider()
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+52-87-12-75-95-53',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans',
                        fontSize: 20.0
                    ),
                  )
              ),
            ),
            Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'thegera4@hotmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans',
                        fontSize: 20.0
                    ),
                )
            ),
            ),
          ],
        )
      ),
    );
  }
}