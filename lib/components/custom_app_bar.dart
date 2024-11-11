import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: InkWell(
          onTap: () {
            onTap!();
          },
          child: const Icon(Icons.arrow_back)),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            decorationStyle: TextDecorationStyle.solid,
            decoration: TextDecoration.underline,
            decorationColor: Colors.amber),
      ),
    );
  }
}
