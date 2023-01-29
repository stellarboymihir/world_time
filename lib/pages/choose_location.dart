import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);


  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  void getData() async{
  //  Simulate network request for a username
    String username = await Future.delayed(const Duration(seconds: 3), () {
     return 'yoshi';
    });
    // Simulate network request to get bio of the username
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'vegan, musician & egg collector';
    });
    print('$username - $bio');
  }
  int counter = 0;
  @override
  void initState() {
    super.initState();
    getData();
    print('hey there!');
    // print('initState function ran');
  }
  @override
  Widget build(BuildContext context) {
    print('built function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter ++;
          });
        },
        child: Text('counter is $counter'),
      ),

    );
  }
}
