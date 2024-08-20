import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tracking'),
        centerTitle: true,
      ),
      body: const Center(
        child:  Text("Something went wrong"),
      ),
      floatingActionButton: Container(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color.fromARGB(255, 205, 205, 205)
              ),
              child: const Icon(Icons.add),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 4),
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color.fromARGB(255, 205, 205, 205)
              ),
              child: const Icon(CupertinoIcons.minus),
            )
          ],
        ),
      ),
    );
  }
}