import 'package:flutter/material.dart';

class LocationCard extends StatefulWidget {
  final String image;
  final String city;
  final String country;
  final double rating;
  final Function pressDetails;
  LocationCard(
      {Key? key,
      required this.image,
      required this.city,
      required this.country,
      required this.rating,
      required this.pressDetails})
      : super(key: key);

  @override
  _LocationCardState createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
