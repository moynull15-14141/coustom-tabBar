import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tst2/Message.dart';
import 'package:tst2/Phone.dart';
import 'package:tst2/Video.dart';

void main() {
  runApp(tst2());
}

class tst2 extends StatefulWidget {
  const tst2({super.key});

  @override
  State<tst2> createState() => _tst2State();
}

class _tst2State extends State<tst2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('tst2'),
            centerTitle: true,
            backgroundColor: Colors.green,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  icon: Icon(Icons.phone,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  text: ('Phone'),
                ),
                Tab(
                  icon: Icon(Icons.message,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  text: ('Message'),
                ),
                Tab(
                  icon: Icon(Icons.missed_video_call,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  text: ('Video Call'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [Phone(), Video(), Message()],
          ),
        ),
      ),
    );
  }
}
