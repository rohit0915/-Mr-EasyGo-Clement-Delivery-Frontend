import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatDriverScreen extends StatefulWidget {
  const ChatDriverScreen({super.key, required this.title});

  final String title;

  @override
  State<ChatDriverScreen> createState() => _ChatDriverScreenState();
}

class _ChatDriverScreenState extends State<ChatDriverScreen> {
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
          SizedBox(height: 40.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10.h),
              Container(
                margin: EdgeInsets.only(top: 5.h),
                height: 60.h,
                width: 60.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/user.jpg"),
                  ),
                ),
              ),
              SizedBox(width: 10.h),
              Expanded(
                child: ListTile(
                  title: Text(
                    widget.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ronald Richards",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "+1 999 222 222",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10.h),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.info_outline),
              ),
              SizedBox(width: 10.h),
            ],
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
                          color: const Color(0xff60C560),
                          tail: true,
                          isSender: isSender,
                          textStyle: TextStyle(
                            color: Colors.white,
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
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                    )),
                SizedBox(
                  width: 10.w,
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
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.mic, color: Colors.black),
                      border: InputBorder.none,
                      fillColor: Color(0xffEBEBEB),
                      filled: true,
                      hintText: 'Send a message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Image.asset("assets/images/green_chat.png"),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
