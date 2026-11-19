import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Demo App", textAlign: TextAlign.start)),
      body: Column(
        children: [
          Row(
            spacing: 20,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text("Hello"),
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.yellow,
                child: Text("Hello 2"),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Element one includes all the logos"),
                const Text("Element one includes all the partners"),
                const Text("A title"),
              ],
            ),
          ),
          Align(
            alignment: AlignmentGeometry.topStart,
            child: Image.asset(
              height: 200,
              width: 100,
              "assets/images/manel.jpeg",
            ),
          ),
        ],
      ),
    );
  }
}
