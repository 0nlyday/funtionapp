import 'package:flutter/material.dart';

class MenuDetailScreen extends StatelessWidget {
  // สร้างคอนสแตนท์สำหรับสีพื้นหลังเขียวอ่อน
  static const backgroundColor = Color(0xFFB5D5B5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // กำหนดสีพื้นหลังของทั้งหน้าจอ
      backgroundColor: backgroundColor,
      
      body: SafeArea(
        child: Column(
          children: [
            // แถบด้านบนที่มีปุ่มย้อนกลับและปุ่มค้นหา
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ปุ่มย้อนกลับ
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                  // ข้อความ "ตะไคร้"
                  Text(
                    'ตะไคร้',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // ปุ่มค้นหา
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.black),
                    onPressed: () {
                      // ใส่ฟังก์ชันค้นหาที่นี่
                    },
                  ),
                ],
              ),
            ),

            // รูปภาพตะไคร้
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/lemongrass.jpg', // ต้องมีรูปในโฟลเดอร์ assets
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // ชื่อพืช "เมนูแนะนำ"
            Text(
              'เมนูแนะนำ',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            // พื้นที่สำหรับเพิ่มเนื้อหาเพิ่มเติม (ตัวอย่างเป็นพื้นที่ว่าง)
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            // แถบนำทางด้านล่าง
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border(
                  top: BorderSide(color: Colors.grey.withOpacity(0.2)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // ปุ่มหน้าแรก
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      // ใส่ฟังก์ชันนำทางไปหน้าแรก
                    },
                  ),
                  // ปุ่มรายการโปรด
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {
                      // ใส่ฟังก์ชันนำทางไปรายการโปรด
                    },
                  ),
                  // ปุ่มส่งต่อ
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // ใส่ฟังก์ชันส่งต่อ
                    },
                  ),
                  // ปุ่มโปรไฟล์
                  IconButton(
                    icon: Icon(Icons.person_outline),
                    onPressed: () {
                      // ใส่ฟังก์ชันนำทางไปหน้าโปรไฟล์
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}