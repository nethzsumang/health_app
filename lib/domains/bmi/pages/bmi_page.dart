import 'package:flutter/material.dart';


class BmiPage extends StatefulWidget {
  const BmiPage({super.key, required this.title});
  final String title;

  @override
  State<BmiPage> createState() => BmiPageState();
}

class BmiPageState extends State<BmiPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Add Record',
        child: const Icon(Icons.add),
      ),
    );
  }
}
