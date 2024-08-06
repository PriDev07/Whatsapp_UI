import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> img = [
    "https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw",
    "https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw",
    "https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw","https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw",
    "https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw",
    "https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw",
    "https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw",
    "https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw",
    "https://imgs.search.brave.com/EgWghAC4HIrszry2TVdL8ejsLAtHsWFMAsfHOZr6d8Q/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLmRh/aWx5bWFpbC5jby51/ay8xcy8yMDI0LzA3/LzMwLzA2Lzg3OTI5/ODgzLTAtaW1hZ2Ut/YS01N18xNzIyMzE3/OTE0NjE5LmpwZw",
  ];
  final List<String> name = ["Priyanshu", "Lohani", "Devsthanam","Devsthanam","Devsthanam","Devsthanam","Devsthanam","Devsthanam","Devsthanam"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
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
        scrollDirection: Axis.vertical,
        primary: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search....",
                    prefixIcon: Icon(Icons.search_outlined),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 239, 236, 236),
                    borderRadius: BorderRadius.circular(25)),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.archive_outlined,size: 30,),
                      SizedBox(width: 30,),
                      Text("Archived",style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: name.length,
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
                                backgroundImage: NetworkImage("${img[index]}"),
                                radius: 25,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${name[index]}",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19),
                                  ),
                                  Text(
                                    "${name[index]}",
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
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.add_box),backgroundColor: Colors.green,),
    );
  }
}