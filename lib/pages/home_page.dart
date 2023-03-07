import 'package:codigo6_whatsapp/pages/calls_page.dart';
import 'package:codigo6_whatsapp/pages/chat_page.dart';
import 'package:codigo6_whatsapp/pages/community_page.dart';
import 'package:codigo6_whatsapp/pages/status_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController myTabController;
  int fabIndex = 0;

  @override
  void initState() {
    super.initState();
    myTabController = TabController(length: 4, vsync: this);
    myTabController.addListener(_getFab);
  }

  @override
  void dispose() {
    super.dispose();
  }

  final List<FloatingActionButton> fabs = [
    FloatingActionButton(
      child: const Icon(Icons.groups),
      onPressed: () {},
    ),
    FloatingActionButton(
      child: const Icon(Icons.message),
      onPressed: () {},
    ),
    FloatingActionButton(
      child: const Icon(Icons.photo_camera),
      onPressed: () {},
    ),
    FloatingActionButton(
      child: const Icon(Icons.phone_forwarded),
      onPressed: () {},
    )
  ];

  void _getFab() {
    setState(() {
      fabIndex = myTabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: myTabController,
          indicatorColor: Colors.white,
          indicatorWeight: 3.5,
          labelColor: Colors.white,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
          unselectedLabelColor: Colors.white70,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.people,
              ),
            ),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      floatingActionButton: fabs[fabIndex],
      body: TabBarView(
        controller: myTabController,
        children: const [
          CommunityPage(),
          ChatPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
    );
  }
}
