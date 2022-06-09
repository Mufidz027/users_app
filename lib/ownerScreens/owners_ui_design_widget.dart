// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import 'package:users_app/models/barber.dart';

class OwnersUiDesignWidget extends StatefulWidget {
  Owners? model;

  OwnersUiDesignWidget({this.model});

  @override
  _OwnersUiDesignWidgetState createState() => _OwnersUiDesignWidgetState();
}

class _OwnersUiDesignWidgetState extends State<OwnersUiDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      elevation: 20,
      shadowColor: Colors.blue,
      child: SizedBox(
        height: 270,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                widget.model!.photoUrl.toString(),
                height: 220,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              widget.model!.name.toString(),
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            //
            SmoothStarRating(
              rating: widget.model!.ratings == null
                  ? 0.0
                  : double.parse(widget.model!.ratings.toString()),
              starCount: 5,
              color: const Color.fromARGB(255, 255, 230, 6),
              borderColor: Colors.black,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
