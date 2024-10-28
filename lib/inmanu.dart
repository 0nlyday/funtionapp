import 'package:flutter/material.dart';

class InmanuPage extends StatelessWidget {
  const InmanuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar ด้านบนของหน้าจอ
      appBar: AppBar(
        backgroundColor: Color(0xFFC3D59F), // สีพื้นหลัง
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // กลับไปหน้าก่อนหน้า
          },
        ),
        title: Text(
          'ตะไคร้',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // จัดกลางชื่อหน้า
        actions: [
          IconButton(
            icon: Icon(Icons.search), // ไอคอนค้นหา
            onPressed: () {
              // การกระทำเมื่อกดไอคอนค้นหา
            },
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            // รูปภาพของอาหาร
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/images/แกงส้มผักกูด.png', // เปลี่ยนเป็น path รูปภาพของคุณ
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16.0), // ระยะห่างระหว่างรูปภาพกับส่วนอื่นๆ

            // ชื่อเมนูอาหาร
            Text(
              'แกงส้มผักกูด',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),

            // ปุ่ม "ส่วนผสม"
            ElevatedButton(
              onPressed: () {
                // การกระทำเมื่อกดปุ่มส่วนผสม
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200], // สีพื้นหลังปุ่ม
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
              ),
              child: Text(
                'ส่วนผสม',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black, // สีข้อความบนปุ่ม
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // ปุ่ม "วิธีการทำ"
            ElevatedButton(
              onPressed: () {
                // การกระทำเมื่อกดปุ่มวิธีการทำ
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200],
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
              ),
              child: Text(
                'วิธีการทำ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 32.0),
          ],
        ),
      ),

      // BottomNavigationBar สำหรับแถบเมนูด้านล่าง
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFC3D59F), // สีพื้นหลังแถบด้านล่าง
        selectedItemColor: Colors.black, // สีของไอคอนที่ถูกเลือก
        unselectedItemColor: Colors.black, // สีของไอคอนที่ไม่ได้ถูกเลือก
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '', // ไม่มีข้อความใต้ไอคอน
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me),
            label: '', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '', 
          ),
        ],
        onTap: (index) {
          // การกระทำเมื่อเลือกไอคอนต่างๆ บน BottomNavigationBar
          switch (index) {
            case 0:
              // โค้ดสำหรับการนำทางไปหน้าแรก
              break;
            case 1:
              // โค้ดสำหรับการนำทางไปหน้าที่ชื่นชอบ
              break;
            case 2:
              // โค้ดสำหรับการนำทางไปหน้าส่งของ
              break;
            case 3:
              // โค้ดสำหรับการนำทางไปหน้าข้อมูลส่วนตัว
              break;
          }
        },
      ),
    );
  }
}
