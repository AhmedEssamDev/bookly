import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageURL});
  final String? imageURL;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.grey.shade200,
          image: imageURL == null || imageURL!.isEmpty
              ? null
              : DecorationImage(
                  image: NetworkImage(imageURL!),
                  fit: BoxFit.fill,
                ),
        ),
        child: imageURL == null || imageURL!.isEmpty
            ? Center(
                child: Icon(
                  Icons.book,
                  size: 40.r,
                  color: Colors.grey.shade600,
                ),
              )
            : null,
      ),
    );
  }
}
