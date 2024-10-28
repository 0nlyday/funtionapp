import 'package:flutter/material.dart';

class IngredientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // แอปบาร์ด้านบนที่แสดงชื่อเมนูและไอคอนค้นหา
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // ปุ่มกลับไปหน้าก่อนหน้า
          },
        ),
        title: Text(
          'ตะไคร้', // ชื่อเมนู
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // ฟังก์ชันการค้นหา
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // รูปภาพของเมนูที่ด้านบน
            Image.asset(
              'assets/images/takrai_soup.jpg', // ใส่รูปภาพของเมนูที่นี่
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),

            // ส่วนที่แสดงส่วนผสม
            Text(
              'ส่วนผสม', // หัวข้อ "ส่วนผสม"
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),

            // รายการส่วนผสม
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black), // ขอบรอบส่วนของส่วนผสม
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ingredientItem('พริกขี้ฟ้าแห้ง', '4 เม็ด'),
                  ingredientItem('หอมแดง', '5 หัว'),
                  ingredientItem('กะปิ', '1 ช้อนโต๊ะ'),
                  ingredientItem('ผักกูด', '4½ ถ้วยตวง'),
                  ingredientItem('น้ำ', '1¾ ถ้วยตวง'),
                  ingredientItem('น้ำปลา', '1 ช้อนโต๊ะ'),
                  ingredientItem('น้ำตาลปี๊บ', '1 ช้อนโต๊ะ'),
                  ingredientItem('น้ำและเนื้อมะขามเปียก', '¼ ถ้วยตวง'),
                  ingredientItem('กุ้ง', '4 ตัว'),
                ],
              ),
            ),
            SizedBox(height: 16),

            // ปุ่ม "วิธีการทำ"
            ElevatedButton(
              onPressed: () {
                // ฟังก์ชันสำหรับไปที่หน้าวิธีการทำ
              },
              child: Text('วิธีการทำ'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[200],
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      // แถบ Navigation ด้านล่าง
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        backgroundColor: Colors.green[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }

  // ฟังก์ชันสร้างแต่ละรายการของส่วนผสม
  Widget ingredientItem(String name, String amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name, // ชื่อของส่วนผสม
            style: TextStyle(fontSize: 18),
          ),
          Text(
            amount, // ปริมาณของส่วนผสม
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
