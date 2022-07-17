import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NikeHomePage extends StatefulWidget {
  const NikeHomePage({Key? key}) : super(key: key);

  @override
  State<NikeHomePage> createState() => _NikeHomePageState();
}

class _NikeHomePageState extends State<NikeHomePage> {
  int _selectedindex = 0;
  List<String> titleList = [
    "Nike Air Force 1 '07",
    "Air Jordan 3 Retro",
    "Nike Air Max Terrascape Plus",
    "Nike Jordan",
  ];

  List<String> titleList2 = [
    "Clothing",
    "Nike Shoes 1",
    "Nike Air 2",
    "Nike Shoes 2",
  ];

  List<String> titleList3 = [
    "Teeshirt",
    "Liverpool jersey",
    "Nike Polo",
    "Dry-Fit",
  ];

  List<String> imgList = [
    "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/b7d9211c-26e7-431a-ac24-b0540fb3c00f/air-force-1-07-shoe-WrLlWX.png",
    "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/7723da6d-daa7-44e8-aa24-f63f87987859/air-jordan-3-retro-shoe-TJf2lm.png",
    "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/d1517f84-fc40-4a9c-a028-ca8fa0ed3fe0/air-max-terrascape-plus-shoes-MjwB6k.png",
    "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/b7d9211c-26e7-431a-ac24-b0540fb3c00f/air-force-1-07-shoe-WrLlWX.png"
  ];

  List<String> imgList2 = [
    "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/c78c3d53-d78c-4221-9acf-b8697199b8bf/sportswear-essentials-t-shirt-K9vnhV.png",
    "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/3ca1ceaf-f1a2-4c4b-9986-57cc49482f55/liverpool-fc-2022-23-match-home-dri-fit-adv-football-shirt-7SPRhx.png",
    "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/94b91e3b-a074-44c0-a418-8f4af8689f3f/polo-polo-nXqXNM.png",
    "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/0d9749f0-9042-4415-8615-6c1542812bf2/dri-fit-adv-run-division-techknit-short-sleeve-running-top-qKk7B7.png"
  ];

  List<String> imgList3 = [
    "fashion1.png",
    "nike1.jpeg",
    "nike2.jpeg",
    "nike3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Welcome Kartik",
                      style: TextStyle(fontSize: 20.0),
                    ))),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedindex = 0;
                });
                print(_selectedindex);
              },
              title: Text("Home"),
              trailing: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedindex = 1;
                });

                print(_selectedindex);
              },
              title: Text("About us"),
              trailing: Icon(
                Icons.info,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedindex = 2;
                });
                print(_selectedindex);
              },
              title: Text("Logout"),
              trailing: Icon(
                Icons.logout,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: _selectedindex == 0 ? mybody() : Container(),
      appBar: AppBar(
        title: Text("Shop"),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag),
          )
        ],
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget mybody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "This Week's Highlights",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21.0),
                ),
              )),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
                itemCount: imgList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return mywidget(titleList[index], imgList[index]);
                }),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Summer Shop",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21.0),
                ),
              )),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
                itemCount: imgList2.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return summerWidget(titleList3[index], imgList2[index]);
                }),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
              child: ListView.builder(
                  itemCount: imgList3.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return mywidget2(titleList2[index], imgList3[index]);
                  })),
        ],
      ),
    );
  }

  Widget mywidget(String title, String myimage) {
    return Column(
      children: [
        SizedBox(
            height: 150,
            width: 150,
            child:
                FittedBox(fit: BoxFit.fill, child: Image.network("$myimage"))),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(width: 160, child: Text(title))
      ],
    );
  }

  Widget summerWidget(String title, String myimage) {
    return Column(
      children: [
        SizedBox(
            width: 150,
            child:
                Image.network("$myimage")),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(width: 160, child: Text(title))
      ],
    );
  }

  Widget mywidget2(String title, String myimage) {
    return Column(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/$myimage")),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
            child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        )),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
