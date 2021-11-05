import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              elevation: 0,
              toolbarHeight: 320,
              backgroundColor: Colors.white,
              flexibleSpace: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select Your\nCity",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.blueGrey),
                        ),
                        SizedBox(height: 15.0),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0XFFF5F5F8),
                                border: Border.all(color: Color(0XFFF5F5F8)),
                              ),
                              height: 30.0,
                              width: 250.0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                      child: TextField(
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.all(10.0),
                                              border: InputBorder.none,
                                              hintText: "Search", hintStyle: TextStyle(color: Color(0XFFE5E5E5))))),
                                  SizedBox(
                                    width: 33.0,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.search,
                                     color: Color(0XFFE5E5E5)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 40),
                            Container(
                              child: Icon(Icons.notifications_active_sharp, color: Color(0XFFE5E5E5),),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.blueGrey),
                        ),
                        SizedBox(height: 10),
                        DefaultTabController(
                          child: TabBar(
                            labelColor: Colors.blueGrey,
                              labelStyle: TextStyle(color: Colors.blueGrey),
                              indicatorColor: Colors.blueGrey,
                              tabs: <Widget>[
                                Tab(text: "Movies",),
                                Tab(text: "Shows"),
                                Tab(text: "Dramas"),
                              ]),
                          length: 3,
                          initialIndex: 0,
                        )
                      ]),
                ),
              )),
          body: SafeArea(
            child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New Release", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),),
                    SizedBox(height: 20),
                    CarouselSlider(
                      options: CarouselOptions(height: 100.0,
                        enableInfiniteScroll: true,
                          autoPlay: true,
                        pauseAutoPlayOnTouch: true,
                        scrollDirection: Axis.horizontal,
                        // onPageChanged: callbackFunction,
                      ),
                      items: [1,2,3,4,5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              height: 100.0,
                              width: 100.0,
                              //color: Colors.green[200],
                                decoration: BoxDecoration(
                                    color: Colors.amber
                                ),
                                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                            );
                          },
                        );
                      }).toList(),
                    ),

                    // CarouselSlider.builder(
                    //   itemCount: 15,
                    //   itemBuilder: (BuildContext context, int itemIndex) =>
                    //       Container(
                    //         child: Text(itemIndex.toString()),
                    //       ),
                    // ),
                    // Row(
                    //   children: [
                    //   ],
                    // )
                  ],
                ),
              ),

            ),
            ),
          ),
        ),
      ),
    );
  }
}
