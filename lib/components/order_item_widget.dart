import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muvit_driver/utility/utillity.dart';
import 'package:muvit_driver/view/order/order_detai_screen.dart';

import '../view/chat/chat_screen.dart';

class OrderItemWidget extends StatefulWidget {
  const OrderItemWidget({
    super.key,
    required this.ordersStatus,
    required this.index,
    required this.stateSetter,
  });

  final List<String> ordersStatus;
  final int index;
  final StateSetter stateSetter;

  @override
  State<OrderItemWidget> createState() => _OrderItemWidgetState();
}

class _OrderItemWidgetState extends State<OrderItemWidget> {
  final Utility utility = Utility();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      surfaceTintColor: Colors.white,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
            padding: EdgeInsets.all(15.h),
            decoration: BoxDecoration(
              color: widget.ordersStatus[widget.index] == "Pending"
                  ? Colors.amber
                  : widget.ordersStatus[widget.index] == "Completed"
                      ? Colors.green
                      : Colors.grey,
              gradient: widget.ordersStatus[widget.index] == "Running"
                  ? const LinearGradient(colors: [
                      Color(0xffFA832E),
                      Color(0xffFB0058),
                      Color(0xffC30083),
                    ])
                  : null,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/order.png"),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Project: Helper",
                          style: TextStyle(
                              fontFamily: GoogleFonts.fjallaOne().fontFamily,
                              fontSize: 18.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        SizedBox(
                          width: Get.width * 0.5,
                          child: RichText(
                            text: const TextSpan(
                              text: '(Furniture Move) ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '19 Aug 2023, 05:00 PM',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: const Text(
                        "minimum Guaranteed Earning",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "\$ 4000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          fontFamily: GoogleFonts.fjallaOne().fontFamily,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0.h, horizontal: 10.h),
            child: Column(
              children: [
                widget.ordersStatus[widget.index] != "Cancelled"
                    ? Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Note : ',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF20168)),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'Earnings will be increased accordingly upon job demands',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      fontSize: 11.sp),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          )
                        ],
                      )
                    : const SizedBox(),
                Row(
                  children: [
                    ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                const WidgetStatePropertyAll(Colors.white),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                side:
                                    BorderSide(color: Colors.black, width: 1.w),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                            )),
                        onPressed: () {
                          utility.makePhoneCall(
                            "tel:${"0123456789"}",
                          );
                        },
                        label: const Text(
                          "Call",
                          style: TextStyle(color: Colors.black),
                        ),
                        icon: const Icon(
                          Icons.call,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                const WidgetStatePropertyAll(Colors.white),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                side:
                                    BorderSide(color: Colors.black, width: 1.w),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                            )),
                        onPressed: () {
                          Get.to(() => const ChatScreen());
                        },
                        label: const Text(
                          "Chat",
                          style: TextStyle(color: Colors.black),
                        ),
                        icon: const Icon(
                          Icons.chat,
                          color: Colors.black,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const OrderDetailScreen());
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10.h),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              widget.ordersStatus[widget.index] == "Pending"
                                  ? "assets/images/point.png"
                                  : "assets/images/dot.png",
                            ),
                            SizedBox(
                              height: 15.h,
                              child: const VerticalDivider(
                                color: Colors.black,
                              ),
                            ),
                            Image.asset(
                              widget.ordersStatus[widget.index] ==
                                          "Completed" ||
                                      widget.ordersStatus[widget.index] ==
                                          "Cancelled"
                                  ? "assets/images/dot.png"
                                  : "assets/images/point.png",
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "1901 Thornridge Cir. Shiloh, Hawaii",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Text(
                              "2464 Royal Ln. Mesa, New Jersey",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          if (widget.ordersStatus[widget.index] == "Running") {
                            widget.ordersStatus[widget.index] = "Completed";
                          }
                          widget.stateSetter(() {});
                        },
                        child: Text(
                          widget.ordersStatus[widget.index] == "Pending" ||
                                  widget.ordersStatus[widget.index] ==
                                      "Cancelled"
                              ? "Cancel".toUpperCase()
                              : widget.ordersStatus[widget.index] == "Running"
                                  ? "Mark As Completed".toUpperCase()
                                  : "Delete Entry".toUpperCase(),
                          style: const TextStyle(color: Colors.grey),
                        )),
                    Row(
                      children: [
                        widget.ordersStatus[widget.index] == "Completed"
                            ? const Icon(
                                Icons.done,
                                color: Colors.green,
                              )
                            : widget.ordersStatus[widget.index] == "Running"
                                ? Image.asset("assets/images/running.png")
                                : const SizedBox(),
                        TextButton(
                          onPressed: () {
                            if (widget.ordersStatus[widget.index] ==
                                "Pending") {
                              widget.ordersStatus[widget.index] = "Running";
                            }
                            if (widget.ordersStatus[widget.index] ==
                                "Cancelled") {
                              widget.ordersStatus[widget.index] = "Running";
                            }

                            widget.stateSetter(() {});
                          },
                          child: Text(
                            widget.ordersStatus[widget.index] == "Pending" ||
                                    widget.ordersStatus[widget.index] ==
                                        "Cancelled"
                                ? "Accept Order".toUpperCase()
                                : widget.ordersStatus[widget.index] == "Running"
                                    ? "Running".toUpperCase()
                                    : "Completed".toUpperCase(),
                            style: TextStyle(
                                color: widget.ordersStatus[widget.index] ==
                                        "Completed"
                                    ? Colors.green
                                    : const Color(0xffF40062)),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
