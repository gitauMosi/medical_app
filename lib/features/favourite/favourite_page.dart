import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourites", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: const Center(child: Text("No Data Found", style: TextStyle(fontWeight: FontWeight.bold),)),
    );
  }
}