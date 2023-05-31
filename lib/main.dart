import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/TravelModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _mainpagestate();
}

class _mainpagestate extends State<MainPage> {
  int _selectedIndex = 0;
  double imageSize = 55;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          //top app
          Container(
            color: Color.fromARGB(0, 245, 188, 16),
            width: double.infinity,
            height: size.height / 1.9,
            child: Stack(
              children: [
                //photo background image
                Container(
                  width: double.infinity,
                  height: size.height / 2.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(62),
                      bottomRight: Radius.circular(62),
                    ),
                    image: DecorationImage(
                      image: AssetImage(travelList[_selectedIndex].img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //header BTN
                Positioned(
                  right: 0,
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(185, 255, 255, 255),
                          ),
                          child: Icon(CupertinoIcons.left_chevron),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(174, 255, 255, 255),
                          ),
                          child: Icon(CupertinoIcons.heart),
                        ),
                      ],
                    ),
                  ),
                ),
                // list image
                Positioned(
                  right: 0,
                  top: 105,
                  child: SizedBox(
                    width: 110,
                    height: double.maxFinite,
                    child: ListView.builder(
                      itemCount: travelList.length,
                      itemBuilder: (context, index) {
                        return imageitem(index);
                      },
                    ),
                  ),
                )
                //name and location------
                ,
                Positioned(
                  bottom: 70,
                  left: size.width / 11,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          travelList[_selectedIndex].name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.placemark_fill,
                            color: Colors.white,
                          ),
                          Text(travelList[_selectedIndex].locaiton,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          //buttom app-------
          Expanded(
            child: Container(
              color: Color.fromARGB(0, 19, 195, 92),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                  color: Color.fromARGB(50, 0, 0, 0),
                                  width: 2)),
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Temp"),
                                Text(travelList[_selectedIndex].temp),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                  color: Color.fromARGB(50, 0, 0, 0),
                                  width: 2)),
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Rating"),
                                Text(travelList[_selectedIndex].rating),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                  color: Color.fromARGB(50, 0, 0, 0),
                                  width: 2)),
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Distance"),
                                Text(travelList[_selectedIndex].distance),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 17, 25, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 28,
                            child: Text(
                              "Description",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w400),
                            ),
                          ),
                          ExpandableText(
                            travelList[_selectedIndex].description,
                            expandText: "Red more",
                            collapseText: "collapse...",
                            animation: true,
                            collapseOnTextTap: true,
                          ),
                          SizedBox(
                            height: 65,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total Price"),
                                  Text(
                                    travelList[_selectedIndex].price + ' \$',
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                child: Icon(
                                  CupertinoIcons.arrow_right,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column imageitem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 255, 255, 255), width: 3.7),
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(travelList[index].img)),
              ),
              width: _selectedIndex == index ? imageSize + 15 : imageSize,
              height: _selectedIndex == index ? imageSize + 15 : imageSize,
              duration: const Duration(milliseconds: 500),
            ),
          ),
        ),
      ],
    );
  }
}
