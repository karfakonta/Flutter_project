import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter App',
      home: Scaffold(
        body: const MyStatefulWidget(),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('My Login Page'),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.add_alert), onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('you press bell icon')));
            },
            ),
          ],
        ),
        ),
      );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          const SizedBox(height: 20),
          Container(
            height: 150,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
              boxShadow: const[
                BoxShadow(
                  color: Colors.red,
                  spreadRadius: 5,
                  offset: Offset(0, 0)
                ),
              ],
            ),
            child: const Text('Container 2', style: TextStyle(fontSize: 25)),
          )
        ],
      )
    );
}
}
