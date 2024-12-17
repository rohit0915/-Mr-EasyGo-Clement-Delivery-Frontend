import 'dart:math';

import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muvit_driver/utility/constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isSender = false;

  List<String> userMessages = [
    "How are you?",
    "Hi",
    "Hello",
  ];

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Message",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                reverse: false,
                itemBuilder: (context, index) {
                  isSender = index % 2 == 0 ? true : false;
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: isSender
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      isSender
                          ? const SizedBox()
                          : Container(
                              margin: EdgeInsets.only(bottom: 20.h, left: 10.h),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 30.h,
                                  width: 30.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey),
                                ),
                              ),
                            ),
                      Column(
                        crossAxisAlignment: isSender
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: isSender
                                  ? EdgeInsets.only(right: 10.h)
                                  : EdgeInsets.only(left: 10.h),
                              child: Text(
                                isSender ? "Admin" : "Me",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              !isSender
                                  ? SizedBox()
                                  : Padding(
                                      padding: EdgeInsets.only(right: 10.h),
                                      child: Text(
                                        "12:00 AM",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                              BubbleSpecialOne(
                                text: userMessages[index],
                                color: !isSender
                                    ? const Color(0xff555877)
                                    : const Color(0xff555877),
                                tail: true,
                                isSender: isSender,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                ),
                              ),
                              isSender
                                  ? SizedBox()
                                  : Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                        "12:00 AM",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                      !isSender
                          ? const SizedBox()
                          : Container(
                              margin:
                                  EdgeInsets.only(bottom: 20.h, right: 10.h),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 30.h,
                                  width: 30.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey),
                                ),
                              ),
                            ),
                    ],
                  );
                },
                itemCount: userMessages.length,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 5.h,
              ),
              decoration: cardDecoration.copyWith(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: <Widget>[
                  Transform.rotate(
                    angle: pi / .3,
                    child: const IconButton(
                      icon: Icon(Icons.attach_file, color: Colors.white),
                      onPressed: null,
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      onFieldSubmitted: (value) {
                        sendMessage(value);
                        _textController.clear();
                      },
                      controller: _textController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Type a Message",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontSize: 12.sp),
                        filled: false,
                      ),
                    ),
                  ),
                  VerticalDivider(
                    width: 10.w,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const IconButton(
                    icon: Icon(Icons.mic_outlined, color: Colors.white),
                    onPressed: null,
                  ),
                  Transform.rotate(
                    angle: pi / .6,
                    child: const IconButton(
                      icon: Icon(Icons.send, color: Colors.white),
                      onPressed: null,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sendMessage(String value) {
    userMessages.add(value);
    setState(() {});
  }
}
