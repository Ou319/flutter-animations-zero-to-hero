// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListAnimation extends StatefulWidget {
  const ListAnimation({super.key});

  @override
  State<ListAnimation> createState() => _ListAnimationState();
}

class _ListAnimationState extends State<ListAnimation> {
  final ScrollController _scrollController = ScrollController();
  bool closeAppbar = false;
    double myTopcontainer = 0.0;
    List<Widget> mylist = [
      MyCardItem(
        title: 'Messages',
        subtitle: 'You have 5 unread',
        icon: Icons.message,
        bgColor: Colors.blueAccent,
      ),
      MyCardItem(
        title: 'Notifications',
        subtitle: '3 new alerts',
        icon: Icons.notifications,
        bgColor: Colors.deepOrange,
      ),
      MyCardItem(
        title: 'Profile',
        subtitle: 'Update your info',
        icon: Icons.person,
        bgColor: Colors.green,
      ),
      MyCardItem(
        title: 'Profile',
        subtitle: 'Update your info',
        icon: Icons.person,
        bgColor: Colors.green,
      ),
      MyCardItem(
        title: 'Profile',
        subtitle: 'Update your info',
        icon: Icons.person,
        bgColor: Colors.green,
      ),
      MyCardItem(
        title: 'Profile',
        subtitle: 'Update your info',
        icon: Icons.person,
        bgColor: Colors.green,
      ),
      MyCardItem(
        title: 'Profile',
        subtitle: 'Update your info',
        icon: Icons.person,
        bgColor: Colors.green,
      ),
      MyCardItem(
        title: 'Profile',
        subtitle: 'Update your info',
        icon: Icons.person,
        bgColor: Colors.green,
      ),
      MyCardItem(
        title: 'Profile',
        subtitle: 'Update your info',
        icon: Icons.person,
        bgColor: Colors.green,
      ),
    ];

    @override
    void initState() {
      super.initState();
      _scrollController.addListener(() {
        double vallue = _scrollController.offset /100;
        setState(() {
          myTopcontainer = vallue;
          closeAppbar = vallue > 0.1;
        });
      });
    }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AnimatedOpacity(
            opacity: closeAppbar ? 0 : 1,
            duration: Duration(milliseconds: 500),
            child: Column(
              children: [
                //app bar
                Row(children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Lecture",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "view all >",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ]),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _BuildListitem("First", "Thats me", Icons.favorite_border,
                          const Color.fromARGB(206, 255, 255, 0)),
                      _BuildListitem(
                          "Second",
                          "Thats me",
                          Icons.favorite_border,
                          const Color.fromARGB(202, 24, 255, 255)),
                      _BuildListitem(
                          "Second",
                          "Thats me",
                          Icons.favorite_border,
                          const Color.fromARGB(176, 213, 24, 255)),
                      _BuildListitem("Thred", "Thats me", Icons.favorite_border,
                          const Color.fromARGB(160, 0, 255, 145))
                    ],
                  ),
                )
              ],

              //content app bar
            ),
          ),
          Expanded(
            child: ListView.builder(
                controller: _scrollController,
                itemCount: mylist.length,
                itemBuilder: (context, index) {
                  double opacity = 1.0;

                  if (myTopcontainer > 0.5) {
                    opacity = (index + 0.5 - myTopcontainer).clamp(0.0, 1.0);

                  }

                  return Opacity(
                    opacity: opacity,
                    child: Column(
                      children: [
                        Transform(
                          transform: Matrix4.identity()..scale(opacity,opacity),
                          alignment: Alignment.center,
                          child: Align(
                            heightFactor: 1,
                            child: mylist[index],
                          )
                         ,
                        )
                      ],
                    ),
                  );

                  //fits condition here
                }),
          )
        ],
      )),
    );
  }

  _BuildListitem(String title, String subtitle, IconData icon, Color color) {
    return Container(
        width: 140.0,
        height: 190.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Stack(
          children: [
            Positioned(
                child: Text(title,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            Positioned(
                child: Text(subtitle,
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                top: 30.0),
            Positioned(
              child: Icon(icon, size: 24, color: Colors.blue),
              right: 8.0,
              bottom: 8.0,
            ),
          ],
        ));
  }
}

class MyCardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color bgColor;

  const MyCardItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 32, color: Colors.white),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              Text(subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
