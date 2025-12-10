import 'package:cast_marriage/utils/utlis';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passwan Cast',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Passwan Cast'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.asset('assets/marriage.png', fit: BoxFit.cover),
              ),
            ),
            Text(
              'Being YourForever Story',
              style: TextStyle(fontSize: 41, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Enter Your Phone Number to Join or login',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: hexToColor("ec135b"),
                minimumSize: Size(double.infinity, 50), // Full width button
              ),
              onPressed: () {
                // Handle button press
              },
              child: Text('Continue', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 30),
            Text(
              'By Continuing, you agree to our Terms of Service and Privacy Policy',
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
