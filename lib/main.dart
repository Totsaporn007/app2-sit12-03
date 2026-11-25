import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C0F14),
      appBar: AppBar(
        backgroundColor: Color(0xFF0C0F14),
        title: const Text(
          'n.uea_17', //หัวซ้าย
          style: TextStyle(
            color: Colors.white, //สีอักษร
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, size: 28, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //ชิดซ้าย
        children: [
          Row(
            children: [
              SizedBox(width: 10, height: 20),
              ClipOval(
                //ตัดเป็นวงรี
                child: Image.asset(
                  "assets/oldtot.jpg", //ดึงจากเครื่อง
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              ClipOval(),
              Row(
                children: [
                  SizedBox(width: 40), //โพสต์
                  Column(
                    children: [
                      Text(
                        "33",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text("โพสต์", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 40), //ผู้ติดตาม
                  Column(
                    children: [
                      Text(
                        "108",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text("ผู้ติดตาม", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 40), //กำลังติดตาม
                  Column(
                    children: [
                      Text(
                        "309",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "กำลังติดตาม",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10, width: 20),

              Text(
                "ทศพร กินรอน",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                "World turns its back? I'm the one standing right beside you.",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                //การขยาย
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text(
                    "ติดตาม",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0095f6),
                    foregroundColor: Colors.white,

                    //โค้ง
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                //เว้นระยะห่าง
                width: 10, //เว้นแนวนอน
                height: 80, //เว้นแนวตั้ง
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () => {},
                  child: Text(
                    "ส่งข้อความ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xff262d35),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 110, height: 20),
              Icon(Icons.grid_on, size: 35, color: Colors.white),
              SizedBox(width: 138, height: 20),
              Icon(Icons.person_pin, size: 35, color: Colors.white),
            ],
          ),
          SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNK3stnuYqsOfj6Hr5DFz8nj4_z1KBHwbr__7arqTyOg&s=10",
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFwRXu6tBSft5iTJTFoQ0qKQ4pEqrkiUOhvZI0PV6W_g&s=10",
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKdIEvwK3-YW_zdGPGWl0Y6BYyyVSimtG4csyr3xtcXQ&s=10",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
