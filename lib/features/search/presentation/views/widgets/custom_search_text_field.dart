import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.controller, required this.onSearch});
  final TextEditingController controller;
  final void Function(String query) onSearch;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onSearch,
      decoration: InputDecoration(
        enabledBorder: buildoutlineInputBorder(),
        focusedBorder: buildoutlineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
            controller.clear();
          },
          icon: Opacity(
            opacity: 0.8,
            child: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 22.r),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder buildoutlineInputBorder() => OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.r),
  borderSide: const BorderSide(color: Colors.white),
);
