import 'package:codigo6_whatsapp/data/data_dummy.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  final String image;
  final String name;

  const ChatDetailPage({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  DataDummy mandarina = DataDummy();
  bool isTyping = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9E1D8),
      appBar: AppBar(
        leadingWidth: 20,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white12,
              backgroundImage: NetworkImage(widget.image),
            ),
            const SizedBox(
              width: 7.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const Text(
                    "Last seen today 11:00 am",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.phone,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          ListView.builder(
            itemCount: mandarina.messages.length,
            itemBuilder: (BuildContext context, int index) {
              // print(mandarina.messages[index].type);
              return Align(
                alignment: mandarina.messages[index].type == "me"
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: mandarina.messages[index].type == "me"
                        ? const Color(0xffE7FFDC)
                        : Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 10.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              mandarina.messages[index].message,
                            ),
                            const SizedBox(
                              width: 50.0,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 8,
                        child: Row(
                          children: const [
                            Text(
                              "12:30",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Icon(
                              Icons.check,
                              size: 13,
                              color: Color(0xff53BDEB),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 7.0,
              ),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Message",
                        prefixIcon: const Icon(
                          Icons.sentiment_satisfied_alt,
                          color: Color(0xff8796A2),
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.attach_file_outlined,
                              color: Color(0xff8796A2),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.camera_alt_rounded,
                              color: Color(0xff8796A2),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: 14.0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (String value) {
                        if (value.isNotEmpty) {
                          isTyping = true;
                        } else {
                          isTyping = false;
                        }
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                        color: Color(0xff00A884),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isTyping ? Icons.send : Icons.mic,
                        size: 28.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
