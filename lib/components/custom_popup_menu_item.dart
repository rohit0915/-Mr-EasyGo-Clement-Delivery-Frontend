import 'package:flutter/material.dart';

class CustomPopupMenuItem extends StatelessWidget {
  final String text;
  final bool isActive;

  const CustomPopupMenuItem({
    super.key,
    required this.isActive,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio.adaptive(
          groupValue: true,
          value: true,
          onChanged: null,
          fillColor: isActive
              ? WidgetStateProperty.all(
                  const Color(0xffF1006A),
                )
              : WidgetStateProperty.all(Colors.grey),
        ),
        const SizedBox(width: 10),
        Text(text.toUpperCase(), style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
