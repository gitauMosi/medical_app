import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';

class NotifacationPage extends StatelessWidget {
  const NotifacationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              NotificationTile(
                  label:
                      "Reloaded 1 of 722 libraries in 469ms (compile: 21 ms, reload: 156 ms, reassemble: 213 ms).Reloaded 1 of 722 libraries in 519ms (compile: 30 ms, reload: 154 ms, reassemble: 237 ms)."),
              NotificationTile(
                  label:
                      "Reloaded 1 of 722 libraries in 469ms (compile: 21 ms, reload: 156 ms, reassemble: 213 ms).Reloaded 1 of 722 libraries in 519ms (compile: 30 ms, reload: 154 ms, reassemble: 237 ms)."),
              NotificationTile(
                  label:
                      "Reloaded 1 of 722 libraries in 469ms (compile: 21 ms, reload: 156 ms, reassemble: 213 ms).Reloaded 1 of 722 libraries in 519ms (compile: 30 ms, reload: 154 ms, reassemble: 237 ms)."),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class NotificationTile extends StatelessWidget {
  NotificationTile({super.key, required this.label});
  String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(136, 158, 158, 158)),
      child: Column(
        children: [
          Expanded(
              child: Text(
            label,
            style: const TextStyle(color: Color.fromARGB(255, 80, 80, 80)),
          )),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "20 min Ago",
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
