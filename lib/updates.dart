import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text("Updates"),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.qr_code_scanner_outlined,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.camera_alt_outlined,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.search_outlined,
              ),
              Icon(
                Icons.more_vert_outlined,
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Container(
                child: Text(
                  "Status",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                  ),
                                  Text(
                                    "My Status",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              )),
                        ],
                      );
                    }),
              ),
              Divider(
                color: Color.fromARGB(255, 215, 211, 211),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Channels",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Explore   >",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw"),
                                radius: 25,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Check",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19),
                                  ),
                                  Text(
                                    "check",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "7:00 pm",
                                    style: TextStyle(color: Colors.green),
                                  )),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                  child: Center(child: Text("1")),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
              Container(
                child: Text(
                  "Find channels",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                width: 100.w,
                height: 21.h,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 35.w,
                        margin: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 33,
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "Devsthanam",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 28.w,
                              height: 3.h,
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 19, 150, 23),
                                    fontWeight: FontWeight.w500),
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 180, 230, 192),
                                  borderRadius: BorderRadius.circular(20)),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 215, 211, 211))),
                      );
                    }),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                alignment: Alignment.center,
                width: 33.w,
                height: 3.8.h,
                child: Text(
                  "Explore more",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(child: FloatingActionButton(onPressed: null,child: Icon(Icons.abc),elevation: 3,backgroundColor: Color.fromARGB(255, 243, 234, 231),),),
          SizedBox(height: 1.h,),
          FloatingActionButton(onPressed: null,child: Icon(Icons.camera_alt),backgroundColor: Colors.green,)
          ],
      ),
    );
  }
}
