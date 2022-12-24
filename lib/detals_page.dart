import 'package:flutter/material.dart';
import 'package:olixapp2/Moduls/Moduls.dart';
import 'package:like_button/like_button.dart';

class Delespage extends StatefulWidget {
  final Moduls moduls;

  Delespage({Key? key, required this.moduls}) : super(key: key);

  @override
  State<Delespage> createState() => _DelespageState();
}

class _DelespageState extends State<Delespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          widget.moduls.name,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          const SizedBox(
            width: 22,
          ),
          IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.share,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            width: 22,
          ),
          LikeButton(),
          const SizedBox(
            width: 22,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Image.asset(
                widget.moduls.imageUrl,
                fit: BoxFit.fitWidth,
                height: 210,
              )),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Text(
                "  " + widget.moduls.many,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Text(
                "  " + "y.e",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
          Text("   " + widget.moduls.name + " " + widget.moduls.dateAbout),
          Card(
            shadowColor: Colors.grey,
            surfaceTintColor: Colors.lightBlueAccent,
            elevation: 2,
            margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Shahar",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 136,
                    ),
                    Text(widget.moduls.ctiy),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Kozov",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 144,
                    ),
                    Text(widget.moduls.Kuzov),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Uzatish qutisi",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 96,
                    ),
                    Text(widget.moduls.sendRoom),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Rangi",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 144,
                    ),
                    Text(widget.moduls.about),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Uzatma",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(widget.moduls.sendTo),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Kami bor",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 122,
                    ),
                    Text(widget.moduls.middlYes),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Divigatel",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 124,
                    ),
                    Text(widget.moduls.gazOrBenzin),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Card(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        "To'liq xarakteriska",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.moduls.allAbout),
                ),
              ],
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        InkWell(
          onTap: () {
          },
          child: Container(
            alignment: Alignment.center,
            width: 168,
            height: 40,
            color: Colors.blue,
            child: Text(
              "Yozish",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
          },
          child: Container(
            alignment: Alignment.center,
            width: 168,
            height: 40,
            color: Colors.green,
            child: Text(
              "Qong'iroq qilish",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }


}
