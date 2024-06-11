import 'package:flutter/material.dart';
import '../data/images_data.dart';
import '../utils/app_colors.dart';
import '../widget/rating_widget.dart';
import '../widget/sliderdots.dart';
import '../widget/slideritem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController controller;
  double offset = 0.0;

  @override
  void initState() {
    controller = PageController()
      ..addListener(() {
        setState(() {
          offset = controller.page ?? 0.0;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex = (offset).round();
    if (currentIndex < 0) {
      currentIndex = 0;
    } else if (currentIndex >= dataList.length) {
      currentIndex = dataList.length - 1;
    }
    final currentItem = dataList[currentIndex];

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: dataList.length,
            controller: controller,
            itemBuilder: (context, index) {
              final data = dataList[index];
              return SliderItem(
                image: data.image,
                offset: offset - index,
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    shadowColor1,
                    shadowColor2,
                    shadowColor3
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentItem.title,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:textColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  RatingWidget(currentItem: currentItem),
                   SizedBox(height: 80),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: SliderDots(data: dataList, offset: offset),
          ),
        ],
      ),
    );
  }
}
