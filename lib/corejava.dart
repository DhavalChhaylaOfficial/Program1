import 'package:flutter/material.dart';
import 'Login.dart';

class MalePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Core Java'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(child: Image.asset('assets/java.png')),
      ),
      // Add the ElevatedButton here
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the login page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginDemo(),
              ),
            );
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
