import 'package:flutter/material.dart';

class Imagegallery extends StatefulWidget {

  final String img1;
  final String img2;
  final String img3;
  final String img4;

  const Imagegallery(this.img1, this.img2, this.img3, this.img4, {super.key});

  @override
  State<Imagegallery> createState() => _ImagegalleryState();
}

class _ImagegalleryState extends State<Imagegallery> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.network(widget.img1, width: 150,),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.network(widget.img2, width: 150,),
            )
          ],
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.network(widget.img3, width: 150,),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.network(widget.img4, width: 150,),
            )
          ],
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ],
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}