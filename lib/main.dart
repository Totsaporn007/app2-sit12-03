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
      appBar: AppBar(
        title: const Text(
          'หน้าแรก',
          style: TextStyle(
            color: Colors.pinkAccent, //สีอักษร
            backgroundColor: Colors.amber,
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: Center(child: Text("Leading")),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, size: 28, color: Colors.blue),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Row(
            children: [
              //ดึงภาพจากลิ้ง
              Image.network(
                "https://preview.redd.it/show-me-the-most-disturbing-doremon-meme-you-own-here-is-v0-ypr39nlw516f1.jpeg?width=640&crop=smart&auto=webp&s=302413cbf28359476f3ec3bb38562185055b46c3",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              ClipOval(
                //ตัดเป็นวงรี
                // ดึงจากไฟล์
                child: Image.asset(
                  "assets/nemo.jpeg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
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
                  child: Text("I Love you So much "),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.deepOrange,

                    //โค้ง
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(//เว้นระยะห่าง
                width: 20,//เว้นแนวนอน
                height: 100,//เว้นแนวตั้ง
              ),
              Expanded(child: OutlinedButton
                (onPressed: () => {},
                  child: Text("I hate you "),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.amberAccent
                  ),))
            ],
          ),
        ],
      ),
    );
  }
}
