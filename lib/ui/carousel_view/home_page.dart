import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageCarousel extends StatefulWidget {
  const HomePageCarousel({super.key});

  @override
  State<HomePageCarousel> createState() => _HomePageCarouselState();
}

class _HomePageCarouselState extends State<HomePageCarousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, realIndex) {
            // Tính toán scale dựa trên khoảng cách từ item hiện tại đến item trung tâm
            double scale = _currentIndex == index ? 1.0 : 1.2;

            return Transform.scale(
              scale: scale,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Text(
                    'Item $index',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 150,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
