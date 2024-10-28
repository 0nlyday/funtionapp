import 'package:flutter/material.dart';

class HowtoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[200], // สีพื้นหลังของ AppBar
        title: Text(
          'ตะไคร้', // ชื่อของหน้าจอ
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // ปุ่มย้อนกลับ
          onPressed: () {
            Navigator.pop(context); // กลับไปหน้าก่อนหน้า
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search), // ปุ่มค้นหา
            onPressed: () {
              // กำหนดการทำงานเมื่อกดปุ่มค้นหา (สามารถเพิ่มฟังก์ชันได้)
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/takrai.png'), // รูปภาพเมนูอาหาร (อาจต้องปรับเป็นเส้นทางรูปภาพที่ถูกต้อง)
            SizedBox(height: 16),
            Text(
              'วิธีการทำ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black), // เส้นกรอบของกล่องส่วนผสม
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1. นำพริกขี้ฟ้าแห้ง กะปิ...', style: TextStyle(fontSize: 16)),
                      Text('2. นำหม้อตั้งไฟ...', style: TextStyle(fontSize: 16)),
                      Text('3. ตามด้วยใส่กุ้ง...', style: TextStyle(fontSize: 16)),
                      Text('4. ปรุงรสด้วยน้ำมะขาม...', style: TextStyle(fontSize: 16)),
                      Text('5. คนให้เข้ากัน...', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // กำหนดการทำงานเมื่อกดปุ่ม "ส่วนผสม"
              },
              child: Text('ส่วนผสม'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen[200], // สีพื้นหลังปุ่ม
              ),
            ),
            SizedBox(height: 16), // เพิ่มระยะห่างระหว่างปุ่ม
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // เมื่อกดปุ่ม "เสร็จสิ้น" จะกลับไปหน้าก่อนหน้า
              },
              child: Text('เสร็จสิ้น'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // สีพื้นหลังปุ่ม "เสร็จสิ้น"
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // ไอคอนหน้าแรก
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), // ไอคอนรายการโปรด
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow), // ไอคอนปุ่มเล่น
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // ไอคอนโปรไฟล์
            label: '',
          ),
        ],
        selectedItemColor: Colors.black, // สีของไอคอนที่ถูกเลือก
        unselectedItemColor: Colors.grey, // สีของไอคอนที่ไม่ได้เลือก
      ),
    );
  }
}
