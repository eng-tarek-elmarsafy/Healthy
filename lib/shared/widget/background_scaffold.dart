import 'package:flutter/material.dart';

class BackgroundOfScaffold extends StatelessWidget {
  final String? image;
  final List<Widget> widget;
  const BackgroundOfScaffold({
    super.key,
    this.image,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: image != null
            ? DecorationImage(
                filterQuality: FilterQuality.low,
                image: AssetImage(image!),
              )
            : null,
        gradient: const RadialGradient(
          colors: [
            Color.fromARGB(255, 129, 128, 132),
            Color.fromARGB(187, 23, 10, 49),
            Color.fromARGB(255, 20, 2, 52)
          ],
          stops: [0.0, .4, 1],
          center: Alignment.center,
          radius: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget,
        ),
      ),
    );
  }
}
