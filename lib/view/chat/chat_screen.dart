import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/custom_app_bar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();

  List messages = [
    {"message": "Hello", "isSender": true},
    {"message": "How are you?", "isSender": false},
    {"message": "I am good. What about you?", "isSender": true},
    {"message": "I am good. What about you?", "isSender": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: <Widget>[
          CustomAppBar(
            title: widget.title,
            onTap: () {
              Get.back();
            },
          ),
          Flexible(
            child: ListView.builder(
              reverse: true,
              itemBuilder: (context, index) {
                bool isSender = messages[index]["isSender"];

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: isSender
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    // isSender
                    //     ? const SizedBox()
                    //     : Container(
                    //         margin: EdgeInsets.only(bottom: 20.h, left: 10.h),
                    //         child: ClipRRect(
                    //             borderRadius: BorderRadius.circular(50),
                    //             child: Image.asset(
                    //               'assets/images/user.jpg',
                    //               height: 35.h,
                    //               width: 35.h,
                    //             ))),
                    Column(
                      crossAxisAlignment: isSender
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //     margin: isSender
                        //         ? EdgeInsets.only(right: 10.h)
                        //         : EdgeInsets.only(left: 10.h),
                        //     child: Text(
                        //       isSender ? "Me" : "User",
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 14.sp,
                        //       ),
                        //     )),
                        BubbleSpecialThree(
                          text: messages[index]["message"],
                          color: const Color(0xffDDDDDD),
                          tail: true,
                          isSender: isSender,
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                    // !isSender
                    //     ? const SizedBox()
                    //     : Container(
                    //         margin: EdgeInsets.only(bottom: 20.h, right: 10.h),
                    //         child: ClipRRect(
                    //             borderRadius: BorderRadius.circular(50),
                    //             child: Image.asset(
                    //               'assets/images/user.jpg',
                    //               height: 35.h,
                    //               width: 35.h,
                    //             ))),
                  ],
                );
              },
              itemCount: messages.length,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(height: 1.0),
          SizedBox(
            height: 5.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 8.w,
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 5.w,
                ),
                Flexible(
                  child: TextField(
                    controller: _textController,
                    onSubmitted: (value) {
                      _textController.clear();
                      setState(() {
                        setState(() {
                          messages.add({
                            "message": _textController.text,
                            "isSender": true,
                          });
                          _textController.clear();
                        });
                      });
                    },
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.h, horizontal: 15.w),
                      suffixIcon:
                          Image.asset("assets/images/sub_chat_icon.png"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide.none),
                      fillColor: const Color(0xffEBEBEB),
                      filled: true,
                      hintText: 'Write',
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.camera_alt, color: Colors.white),
                    onPressed: () async {
                      {
                        setState(() {
                          messages.add({
                            "message": _textController.text,
                            "isSender": true,
                          });
                          _textController.clear();
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
