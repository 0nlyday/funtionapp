// properties.dart
// นำเข้า package ที่จำเป็น
import 'package:flutter/material.dart';

// สร้าง StatelessWidget สำหรับหน้าแสดงคุณสมบัติของสมุนไพร
class PropertiesPage extends StatelessWidget {
  final String herbName; // ชื่อสมุนไพร

  // Constructor
  const PropertiesPage({
    Key? key,
    required this.herbName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // แถบด้านบน
      appBar: AppBar(
        backgroundColor: const Color(0xFFB8D5B8), // สีพื้นหลังเขียวอ่อน
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          herbName,
          style: const TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // ตรงนี้ใส่ฟังก์ชันค้นหา
            },
          ),
        ],
      ),
      
      // เนื้อหาหลัก
      body: SingleChildScrollView(
        child: Column(
          children: [
            // รูปภาพสมุนไพร
            Image.asset(
              'assets/herb_image.jpg', // ต้องแทนที่ด้วย path จริง
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            
            // ส่วนแสดงชื่อสมุนไพร
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.grey[200],
              child: const Text(
                'lii',
                style: TextStyle(fontSize: 18),
              ),
            ),

            // ส่วนแสดงคุณสมบัติต่างๆ
            _buildPropertySection(
              'ส่วนหัว',
              'เป็นยารักษาเกลื่อน แก้ท้องอืด ท้องเฟ้อ แก้บิดสาบะพิการ แก้บวม บำรุงโลหิตดี แก้อาการขัดเบา',
            ),
            _buildPropertySection(
              'ส่วนใบสด',
              'จะช่วยลดความดันโลหิตสูง',
            ),
            _buildPropertySection(
              'ส่วนราก',
              'ใช้เป็นยาแก้ไข้หนูดี ปวดท้องและท้องเสีย',
            ),
          ],
        ),
      ),
      
      // แถบนำทางด้านล่าง
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        color: const Color(0xFFB8D5B8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // ฟังก์ชันไปหน้าหลัก
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                // ฟังก์ชันรายการโปรด
              },
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                // ฟังก์ชันแชร์
              },
            ),
            IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {
                // ฟังก์ชันโปรไฟล์
              },
            ),
          ],
        ),
      ),
    );
  }

  // วิดเจ็ตสำหรับแสดงส่วนคุณสมบัติแต่ละส่วน
  Widget _buildPropertySection(String title, String description) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}