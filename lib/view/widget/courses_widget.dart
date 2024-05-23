import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/controller/core/custom_function.dart';
import 'package:loginhomemt/controller/core/sizes.dart';

class CoursesWidget extends StatelessWidget {
  const CoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      color: AppColors.container,
      padding: const EdgeInsets.only(left: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
            child: _courseContainer(),
          );
        },
      ),
    );
  }
}

Widget _courseContainer() {
  return Container(
    height: 150,
    width: 250,
    decoration:
        BoxDecoration(color: AppColors.white, borderRadius: AppSizes.radius10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          height: 75,
          width: 220,
          decoration: BoxDecoration(
              color: AppColors.container, borderRadius: AppSizes.radius10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Course Name',
                style: CustomFunctions.style(
                    fontWeight: FontWeight.w500, size: 16),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20),
          child: Text(
            'Title',
            style: CustomFunctions.style(fontWeight: FontWeight.w500, size: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing  ',
            style: CustomFunctions.style(fontWeight: FontWeight.w500, size: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/fourstar.png',
                height: 30,
                width: 130,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: AppSizes.radius10,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColors.appBar2, AppColors.appBar1],
                    ),
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_forward_ios_sharp,
                        size: 20, color: AppColors.white),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
