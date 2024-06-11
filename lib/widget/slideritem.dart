import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key, required this.image, required this.offset});
  final String image;
  final double offset;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        alignment: Alignment(-offset * 5, 0),
      ),
    );
  }
}
