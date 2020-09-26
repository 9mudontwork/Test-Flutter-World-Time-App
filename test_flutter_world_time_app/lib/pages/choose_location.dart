import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    //  simulate network request username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'username';
    });

    //  simulate network request data of username
    String userData = await Future.delayed(Duration(seconds: 2), () {
      return 'data of username';
    });

    print('$username - $userData');
  }

  @override
  void initState() {
    super.initState();
    print('initState function run');
    getData();
    print('hey');
  }

  @override
  Widget build(BuildContext context) {
    print('Build function run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
