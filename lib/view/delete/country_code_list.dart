import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CountryListPage extends StatefulWidget {
  const CountryListPage({super.key});

  @override
  State<CountryListPage> createState() => _CountryListPageState();
}

class _CountryListPageState extends State<CountryListPage> {
  // List of countries
  final List<Country> countries = [
    Country(
        name: "United States",
        code: "+1",
        flag: "assets/images/flags/Flags0.png"),
    Country(name: "India", code: "+91", flag: "assets/images/flags/Flags1.png"),
    Country(
        name: "South Africa",
        code: "+27",
        flag: "assets/images/flags/Flags2.png"),
    Country(name: "Canada", code: "+1", flag: "assets/images/flags/Flags3.png"),
    Country(
        name: "United Kingdom",
        code: "+44",
        flag: "assets/images/flags/Flags4.png"),
    Country(
        name: "Afghanistan",
        code: "+93",
        flag: "assets/images/flags/Flags5.png"),
    Country(
        name: "Bangladesh",
        code: "+880",
        flag: "assets/images/flags/Flags6.png"),
  ];

  Country? selectedCountry;

  @override
  void initState() {
    super.initState();
    selectedCountry = countries[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Get.theme.primaryColor, Get.theme.secondaryHeaderColor],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Choose a country",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final country = countries[index];
          bool isSelected = selectedCountry == country;
          return ListTile(
            onTap: () {
              setState(() {
                selectedCountry = country;
              });
              Get.back();
            },
            leading: Image.asset(
              country.flag,
              width: 20.h,
              height: 20.h,
            ),
            title: Text(
              country.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.blue : Colors.white),
            ),
            trailing: Text(
              country.code,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 14.sp),
            ),
          );
        },
      ),
    );
  }
}

// Country model
class Country {
  final String name;
  final String code;
  final String flag;

  Country({required this.name, required this.code, required this.flag});
}
