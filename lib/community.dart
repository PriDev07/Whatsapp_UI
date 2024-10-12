import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(179, 239, 237, 237),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          "Communities",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
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
              Icon(
                Icons.more_vert_outlined,
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 10.h,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 3.w),
                    width: 6.h,
                    height: 6.h,
                    child: Icon(
                      Icons.groups_3,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 206, 204, 204),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "New community",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            ListView.builder(
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Container(
                        margin: EdgeInsets.only(top: 2.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 3.w),
                                  width: 6.h,
                                  height: 6.h,
                                  child: Icon(
                                    Icons.groups_3,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 206, 204, 204),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "CodePrinz",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Divider(),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 5.h,
                                        height: 5.h,
                                        child: Icon(
                                          Icons.mic,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 206, 204, 204),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Announcements",
                                            style: TextStyle(
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 19),
                                          ),
                                          Text(
                                            "Welcome to CodePrinz guys",
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "7:00 pm",
                                            style:
                                                TextStyle(color: Colors.green),
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
                            ),
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Check",
                                                  style: TextStyle(
                                                      color: Color(0xff000000),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 19),
                                                ),
                                                Text(
                                                  "check",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "7:00 pm",
                                                  style: TextStyle(
                                                      color: Colors.green),
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
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                children: [
                                  Text(
                                    ">",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    "View all",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
