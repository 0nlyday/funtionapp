import 'package:flutter/material.dart';

class ShowData extends StatelessWidget {
  const ShowData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB8D5B8), // สีพื้นหลังเขียวอ่อน
      appBar: AppBar(
        backgroundColor: Color(0xFFB8D5B8),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'ตะไคร้',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                'assets/images/lemongrass.jpg', // รูปภาพจากโฟลเดอร์ assets/images
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildInfoButton('ข้อมูลทั่วไป'),
                _buildInfoButton('ภาษาถิ่น'),
                _buildInfoButton('สรรพคุณ'),
                _buildInfoButton('เมนูอาหาร'),
              ],
            ),
          ),
          _buildBottomNavigationBar(),
        ],
      ),
    );
  }

  Widget _buildInfoButton(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFFB8D5B8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.favorite_border, color: Colors.black),
          Icon(Icons.send, color: Colors.black),
          Icon(Icons.person_outline, color: Colors.black),
        ],
      ),
    );
  }
}