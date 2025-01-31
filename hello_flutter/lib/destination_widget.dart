import 'package:flutter/material.dart';

class DestinationWidget extends StatelessWidget {
  DestinationWidget({required this.destinationName});

  final String destinationName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(destinationName),
        Image(
          image: NetworkImage('https://picsum.photos/30'),
        )
      ],
    );
  }
}