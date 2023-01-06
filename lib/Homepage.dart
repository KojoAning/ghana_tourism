import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghana_tourism/live_events.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const login());
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _selectedColor = Color(0xff1a73e8);
  final _unselectedColor = Colors.white;

  final _iconTabs = [
    Tab(
        icon: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Icon(CupertinoIcons.calendar), Text('Today')],
    )),
    Tab(
        icon: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          CupertinoIcons.dot_radiowaves_left_right,
          size: 19,
        ),
        Text('Live')
      ],
    )),
    Tab(
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Icon(Icons.upcoming_rounded), Text('Upcoming')],
      ),
    )
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    String formatter = new DateFormat.MMMMd('en_US').format(now);
    String day = new DateFormat.EEEE('en_US').format(now);

    // 2016-01-25
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Color(0xFF121212),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(170),
              child: AppBar(
                toolbarHeight: 100,
                bottom: TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  tabs: _iconTabs,
                  unselectedLabelColor: Color.fromARGB(255, 172, 171, 171),
                  labelColor: _selectedColor,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    color: _selectedColor.withOpacity(0.2),
                  ),
                ),
                elevation: 0,
                backgroundColor: Color(0xFF121212),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '$day,' + formatter.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Satoshi',
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'View Today , Live or Upcoming Events',
                      style: TextStyle(
                          fontFamily: 'Satoshi2',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(children: [
              Center(child: Text('datap')),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: live_events(),
              ),
              Center(child: Text('datap')),
            ])),
      ),
    );
  }
}
