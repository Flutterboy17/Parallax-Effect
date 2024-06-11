import 'package:flutter/material.dart';
import 'package:parallex_effect_movie/data/images_data.dart';
import '../utils/app_colors.dart';

class SliderDots extends StatelessWidget {
  const SliderDots({
    super.key,
    required this.data,
    required this.offset,
  });

  final List<DataModel> data;
  final double offset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 50,
        left: 24,
        right: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(dataList.length, (index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
              height: 10,
              width: offset.round() == index ? 30 : 10,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(
                    width: offset.round() == index ? 1 : 0,
                    color: textColor),
                color: offset.round() == index
                    ? hightlightColor
                    : textColor,
                borderRadius: BorderRadius.circular(5),
              ),
            );
          }),
        ));
  }
}
