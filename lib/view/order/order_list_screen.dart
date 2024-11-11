import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/custom_app_bar.dart';
import '../../components/order_item_widget.dart';
import '../../utility/utillity.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key, required this.status});

  final String status;

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  List<String> ordersStatus = [];

  @override
  void initState() {
    for (var i = 0; i < 4; i++) {
      ordersStatus.add(widget.status);
    }
    super.initState();
  }

  String _selectedFlitter = 'All';
  String _selectedOrder = 'RECENT';
  final GlobalKey _menuFilterKey = GlobalKey();
  final GlobalKey _menuSortKey = GlobalKey();

  final Utility utility = Utility();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: widget.status == "Pending"
                    ? "New Orders"
                    : widget.status == "Running"
                        ? "Running Orders"
                        : widget.status == "Completed"
                            ? "Completed Orders"
                            : "Cancelled Orders",
                onTap: () {
                  Get.back();
                },
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          key: _menuFilterKey,
                          onTap: () => utility.showFilterMenu(
                            context,
                            _menuFilterKey,
                            (value) {
                              setState(() {
                                _selectedFlitter = value;
                              });
                            },
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/images/all.png"),
                              SizedBox(
                                width: 10.w,
                              ),
                              const Text("ALL")
                            ],
                          ),
                        ),
                        InkWell(
                          key: _menuSortKey,
                          onTap: () => utility.showSortMenu(
                            context,
                            _menuSortKey,
                            (value) {
                              setState(() {
                                _selectedOrder = value;
                              });
                            },
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Recent".toUpperCase(),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Image.asset("assets/images/all.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Total 60 (\$ 00,000)",
                      style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: Get.height * 0.77,
                      width: Get.width,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return OrderItemWidget(
                              ordersStatus: ordersStatus,
                              index: index,
                              stateSetter: setState);
                        },
                        itemCount: ordersStatus.length,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
