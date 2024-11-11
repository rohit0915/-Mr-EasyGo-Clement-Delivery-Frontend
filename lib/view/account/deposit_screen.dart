import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/custom_app_bar.dart';

import '../../components/payment_item_widget.dart';

class DepositScreen extends StatefulWidget {
  const DepositScreen({super.key});

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  String _selectedItem = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
              title: "Deposit Online",
              onTap: () {
                Get.back();
              }),
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                _selectedItem != ""
                    ? PaymentItemWidget(
                        isShadow: true,
                        isActive: _selectedItem == "google",
                        title: "Gpay Wallet",
                        image: "assets/images/google.png",
                        onClick: () {
                          _selectedItem = "google";
                          setState(() {});
                        })
                    : const SizedBox(),
                PaymentItemWidget(
                    isShadow: true,
                    isActive: _selectedItem == "bank",
                    title: "Bank Account",
                    image: "assets/images/blank.png",
                    onClick: () {
                      _selectedItem = "bank";
                      setState(() {});
                    }),
                PaymentItemWidget(
                    isShadow: true,
                    isActive: _selectedItem == "upi",
                    title: "UPI",
                    image: "assets/images/blank.png",
                    onClick: () {
                      _selectedItem = "upi";
                      setState(() {});
                    })
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
