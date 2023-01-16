import 'package:flutter/material.dart';
import 'package:olixapp2/Moduls/Moduls.dart';
import 'package:like_button/like_button.dart';

class Delespage extends StatefulWidget {
  final Moduls moduls;

  const Delespage({Key? key, required this.moduls}) : super(key: key);

  @override
  State<Delespage> createState() => _DelespageState();
}

class _DelespageState extends State<Delespage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          widget.moduls.name,
          style: const TextStyle(color: Colors.black),
        ),
        actions: [
          const SizedBox(
            width: 22,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            width: 22,
          ),
          const LikeButton(),
          const SizedBox(
            width: 22,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Image.asset(
                widget.moduls.imageUrl,
                fit: BoxFit.fitWidth,
                height: 210,
              )),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Text(
                "  ${widget.moduls.many}",
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const Text(
                "  " "y.e",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
          Text("   ${widget.moduls.name} ${widget.moduls.dateAbout}"),
          Card(
            shadowColor: Colors.grey,
            surfaceTintColor: Colors.lightBlueAccent,
            elevation: 2,
            margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Shahar",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
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
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Kozov",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
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
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Uzatish qutisi",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
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
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Rangi",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
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
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Uzatma",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
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
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Kami bor",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
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
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Divigatel",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 124,
                    ),
                    Text(widget.moduls.gazOrBenzin),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Card(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: const [
                      Text(
                        "To'liq xarakteriska",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
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
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: size.width * 0.5,
                height: 40,
                color: Colors.blue,
                child: const Text(
                  "Yozish",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: (size.width * 0.9) * 0.5,
                height: 40,
                color: Colors.green,
                child: const Text(
                  "Qong'iroq qilish",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
