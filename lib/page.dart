import 'package:flutter/material.dart';
import 'Moduls/Moduls.dart';
import 'detals_page.dart';

class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);
  static List<Moduls> lisCar = [
    Moduls(
        "Gentra",
        "Garz /120 km",
        "Toshken v, 2022 ,2 oktyabr",
        "Metalka ",
        "images/gentra.jpg",
        "8 000",
        "Toshkent",
        "Sedan",
        "Avtomat",
        "Oldi",
        "Ha",
        "Saka diska ,Tumnaga qarshi chiroqlar,Yon oynalari tanirovka qilingan,Old oyna 30 % tanirovga ,Kondisaner bor,Salon classik,Tumanga qarshi chiroqlar"),
    Moduls(
        "Malibu",
        "Garz /220 km",
        "Sirdaryo v, 2020 ,3 yanvar",
        "Oq ",
        "images/malibu.jpg",
        "10 000",
        "Sirdaryo",
        "Sedan",
        "Avtomat",
        "Oldi",
        "Yo'q",
        "Tumanga qarshi chiroqlar ,Yon va oldi orqa oynalar tanirovka qilinmagan ,Yengil qotishmail diskalar,Classic salon ,Zamonaviy monitor  audio pler ,Oldi chiroqlar Italik "),
    Moduls(
        "Cobalt",
        "Benzin /300 km",
        "Farg'ona v, 2022 ,12 dekabr",
        "Qora ",
        "images/cobalt.jpg",
        "9 000",
        "Farg'ona",
        "Sedan",
        "Avtomat",
        "Oldi",
        "Ha",
        "Tumnga qarchi chiroqlar ,Tshqi chiroq;ar almashtrilmagan ,Yengil qoshmali tiskalar, Oldi orqa va yon oynalar Tanirovka qilinmagan ,"),
    Moduls(
        "Nexia",
        "Benzin /3 000 km",
        "Andijon v, 2010 ,1 avgust",
        "Qora ",
        "images/nexia.jpg",
        "7 000",
        "Andijon",
        "Sedan",
        "Avtomat",
        "Oldi",
        "Yo'q",
        "Saka diska ,Tumnaga qarshi chiroqlar,Yon oynalari tanirovka qilingan,Old oyna 30 % tanirovga ,Kondisaner bor,Salon classik,Tumanga qarshi chiroqlar"),
    Moduls(
        "Gentra",
        "Garz /23 000 km",
        "Sirdaryo v, 2012 ,21 iyul",
        "Kulirang ",
        "images/ravon.jpg",
        "10 000",
        "Sirdaryo",
        "Sedan",
        "Avtomat",
        "Oldi",
        "Yo'q",
        "Saka diska ,Tumnaga qarshi chiroqlar,Yon oynalari tanirovka qilingan,Old oyna 30 % tanirovga ,Kondisaner bor,Salon classik,Tumanga qarshi chiroqlar"),
    Moduls(
        "Mersades Bens",
        "Benzin /12 00 km",
        "Toshken , 2021 ,20 noyabr",
        "Oq ",
        "images/mersadesbens.jpg",
        "30 000",
        "Toshkent",
        "Sedan",
        "Avtomat",
        "Oldi",
        "Ha",
        "Saka diska ,Tumnaga qarshi chiroqlar,Yon oynalari tanirovka qilingan,Old oyna 30 % tanirovga ,Kondisaner bor,Salon classik,Tumanga qarshi chiroqlar"),
    Moduls(
        "Lada",
        "Garz /80 000 km",
        "Samarqand v,2011,2 avgust",
        "Qora ",
        "images/lada.jpg",
        "13 000",
        "Samarqand",
        "Sedan",
        "Avtomat",
        "Oldi",
        "Ha",
        "Saka diska ,Tumnaga qarshi chiroqlar,Yon oynalari tanirovka qilingan,Old oyna 30 % tanirovga ,Kondisaner bor,Salon classik,Tumanga qarshi chiroqlar"),
    Moduls(
        "Tahoya",
        "Benzin /12 000 km",
        "Sirdaryo v, 2010 ,12 noyabr",
        "Qora ",
        "images/tahoya.jpg",
        "70 000",
        "Sirdaryo",
        "Sedan",
        "Avtomat",
        "Oldi",
        "Ha",
        "Saka diska ,Tumnaga qarshi chiroqlar,Yon oynalari tanirovka qilingan,Old oyna 30 % tanirovga ,Kondisaner bor,Salon classik,Tumanga qarshi chiroqlar"),
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              "Avtoelon",
              style: TextStyle(
                  fontSize: 25.0, fontFamily: 'Avtoelon', color: Colors.blue),
            ),
            content: Text("Dasturidan chqishni xohlaysizmi?"),
            actions: [
              ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pop(true);
                  },
                  child: Text("Ha")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text("Yo'q")),
            ],
          ),
        );
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blueAccent),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: size.width * 0.2,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.02),
                    child: Text(
                      "USER",
                      style: TextStyle(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.02),
                    child: const Text(
                      "Username@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),


                ],
              ),),
              ListTile(title:
              Text(
                "Inbox",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: size.width * 0.08),
              ),leading:Icon(
                Icons.inbox_rounded,
                size: size.width * 0.1,
                color: Colors.blue,
              ),),
              ListTile(title: Text(
                "Save",
                style: TextStyle(color: Colors.blue, fontSize: size.width * 0.08),
              ),leading: Icon(
                Icons.archive,
                size: size.width * 0.1,
                color: Colors.blue,
              ),),
              ListTile(title:  Text(
                "Send",
                style: TextStyle(color: Colors.blue, fontSize:  size.width * 0.08),
              ),leading:  Icon(
                Icons.send,
                size: size.width * 0.1,
                color: Colors.blue,
              ),),
              ListTile(title:  Text(
                "App News",
                style: TextStyle(color: Colors.blue, fontSize: size.width * 0.08),
              ),leading:  Icon(
                Icons.newspaper,
                size: size.width * 0.1,
                color: Colors.blue,
              ),),
              ListTile(title:  Text(
                "Settings",
                style: TextStyle(color: Colors.blue, fontSize: size.width * 0.08),
              ),leading: Icon(
                Icons.settings,
                size: size.width * 0.1,
                color: Colors.blue,
              ),),
              ListTile(title:  Text(
                "Login Outlined",
                style: TextStyle(color: Colors.blue, fontSize: size.width * 0.08),
              ),leading: Icon(
                Icons.login_outlined,
                size: size.width * 0.1,
                color: Colors.blue,
              ),),

            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
          title: const Text("Avtoelon"),
          titleTextStyle:
              TextStyle(fontSize: size.height * 0.04, fontFamily: 'Avtoelon'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            myCard(lisCar[0], context),
            myCard(lisCar[1], context),
            myCard(lisCar[2], context),
            myCard(lisCar[3], context),
            myCard(lisCar[4], context),
            myCard(lisCar[5], context),
            myCard(lisCar[6], context),
            myCard(lisCar[7], context),
          ],
        ),
      ),
    );
  }

  Widget myCard(Moduls moduls, BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Delespage(
                      moduls: moduls,
                    )));
      },
      child: Card(
        margin: const EdgeInsets.all(1.0),
        elevation: 72,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.4,
              margin: const EdgeInsets.all(2.0),
              color: Colors.black12,
              child: Image.asset(moduls.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text(
                      moduls.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text(moduls.gazOrBenzin),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text(
                      moduls.dateAbout,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text(
                      moduls.about,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
