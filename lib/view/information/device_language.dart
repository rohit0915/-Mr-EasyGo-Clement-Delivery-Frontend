import 'package:flutter/material.dart';

class DeviceLanguage extends StatefulWidget {
  const DeviceLanguage({super.key});

  @override
  State<DeviceLanguage> createState() => _DeviceLanguageState();
}

class _DeviceLanguageState extends State<DeviceLanguage> {
  final List<String> _languages = [
    "English (en)",
    "French (fr)",
    "Spanish (es)",
    "German (de)",
    "Portuguese (pt)",
    "Russian (ru)",
    "Chinese (zh)"
  ];

  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Device Language",
            style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.underline,
                decorationColor: Colors.amber),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return ListTile(
              selected: index == _selectedIndex,
              selectedColor: Colors.black,
              selectedTileColor: const Color(0xffFCFBF6),
              title: Text(_languages[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            );
          },
          itemCount: _languages.length,
          shrinkWrap: true,
        )
      ],
    ));
  }
}
