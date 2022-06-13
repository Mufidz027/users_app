import 'package:flutter/material.dart';

import '../models/barber.dart';

// ignore: must_be_immutable
class BarberDetailsScreen extends StatefulWidget {
  Barber? model;
  // ignore: use_key_in_widget_constructors
  BarberDetailsScreen({
    this.model,
  });
  @override
  // ignore: library_private_types_in_public_api
  _BarberDetailsScreenState createState() => _BarberDetailsScreenState();
}

class _BarberDetailsScreenState extends State<BarberDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          color: Colors.black87,
        ),
        title: Text(widget.model!.barberName.toString()),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Boking Barbershop"),
        icon: const Icon(Icons.add_box_outlined),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Image.network(
            widget.model!.thumbnailUrl.toString(),
          ),

          //implement item counter

          //title
          Padding(
            padding: const EdgeInsets.only(left: 7.0, right: 8.0, top: 6.0),
            child: Text(
              // ignore: prefer_interpolation_to_compose_strings
              widget.model!.barberName.toString() + ":",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 11, 124, 230),
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
          ),

          //info
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 6.0),
            child: Text(
              widget.model!.barberInfo.toString(),
              textAlign: TextAlign.justify,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
