// File: databasic.dart

import 'package:flutter/material.dart';

// คลาสสำหรับเก็บข้อมูลพืช
class PlantInfo {
  final String name; // ชื่อพืช
  final String imageUrl; // URL รูปภาพ
  final String family; // วงศ์พืช
  final String description; // คำอธิบายทั่วไป
  final String origin; // ถิ่นกำเนิด
  final List<String> characteristics; // ลักษณะเด่น
  
  PlantInfo({
    required this.name,
    required this.imageUrl,
    required this.family,
    required this.description,
    required this.origin,
    required this.characteristics,
  });
}

class PlantDetailPage extends StatelessWidget {
  final plantInfo = PlantInfo(
    name: 'ตะไคร้',
    imageUrl: 'assets/images/lemongrass.jpg',
    family: 'Poaceae',
    description: '''
เป็นพืชล้มลุก ในวงศ์หญ้า (Poaceae)
ความสูงประมาณ 4-6 ฟุต ใบยาวเรียว
ปลายใบมีขนหนาม ลำต้นรวมกันเป็นกอ มีกลิ่นหอม
เป็นพืชยาวมีดอกเล็กฝอยเป็นจำนวนมาก
ตะไคร้เป็นพืชที่สามารถนำส่วนต้นหัวไปประกอบอาหาร
และจัดเป็นพืชสมุนไพร''',
    origin: 'ตะไคร้มีถิ่นกำเนิดในประเทศอินโดนีเซีย ศรีลังกา พม่า อินเดีย ไทย ในทวีปอเมริกาใต้ และคองโก',
    characteristics: [
      'ลำต้นอวบน้ำ',
      'มีกลิ่นหอมเฉพาะตัว',
      'ใบยาวเรียว',
      'เจริญเติบโตเป็นกอ'
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(plantInfo.name),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // ฟังก์ชันค้นหา
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // รูปภาพพืช
            Image.asset(
              plantInfo.imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // ข้อมูลพืช
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'เป็นพืชล้มลุก ในวงศ์${plantInfo.family}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    plantInfo.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    plantInfo.origin,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าแรก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'ชื่นชอบ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'แชร์',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'โปรไฟล์',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}