import 'package:flutter/material.dart';


class BloodPressurePage extends StatefulWidget {
  const BloodPressurePage({super.key, required this.title});
  final String title;

  @override
  State<BloodPressurePage> createState() => BloodPressurePageState();
}

class BloodPressurePageState extends State<BloodPressurePage> {

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
