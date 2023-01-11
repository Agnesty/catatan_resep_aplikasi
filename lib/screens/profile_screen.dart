import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.mode_edit_outline_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                  ),
                  child: Icon(
                    Icons.question_mark,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Agnesty',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cooker Recipe',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.call,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '0857-5678-5678',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'agnesty@gmail.com',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.note,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'My Recipe',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.people,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Tell Your Friend',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.discount,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Promotion Your Recipe',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.logout,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
