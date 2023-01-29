import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            TextButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(Icons.edit_location),
              label: const Text('Edit Location'),
            )
          ],
        ),
      ),
    );
  }
}
