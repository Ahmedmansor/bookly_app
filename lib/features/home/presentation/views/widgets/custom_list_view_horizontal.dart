import 'package:bookly_app/core/utils/app_setting.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class CustomListViewHor extends StatelessWidget {
  const CustomListViewHor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSettings.defultSize * 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
