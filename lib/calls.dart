import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text("Calls"),
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
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Favourites",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 5.h,
                      height: 5.h,
                      child: Icon(
                        Icons.heart_broken,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Add to Favourites",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recent",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage("https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw"),
                                  radius: 20,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.arrow_outward_sharp,size: 20,color: Colors.green,),
                                        SizedBox(width: 2.w,),
                                        Text(
                                          "Today, 12:00 pm",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(alignment: Alignment.topCenter,child: Icon(Icons.call_outlined))
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.call_sharp),backgroundColor: Colors.green,),
    );
  }
}
