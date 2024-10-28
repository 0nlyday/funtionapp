import 'package:flutter/material.dart';

// ข้อมูลภาษาท้องถิ่นของพืชสมุนไพร
class LocalLanguageModel {
  final String scientificName;
  final Map<String, String> localNames;

  LocalLanguageModel({
    required this.scientificName,
    required this.localNames,
  });
}

// หน้าจอแสดงข้อมูลภาษาท้องถิ่น
class LocalLanguageScreen extends StatelessWidget {
  // ข้อมูลตัวอย่างของตะไคร้
  final herbData = LocalLanguageModel(
    scientificName: 'Cymbopogon citratus',
    localNames: {
      'ภาคเหนือ': 'จะไคร้ อีไคร้',
      'ภาคอีสาน': 'หัวชิงไค',
      'ภาคใต้': 'ไคร้',
      'แม่ฮ่องสอน': 'คาหอม',
      'เขมร-สุรินทร์': 'เชิดเคร็ย เหล๊าะเครย',
      'ตะเหรี่ยง-แม่ฮ่องสอน': 'หว่อวะโป'
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('ตะไคร้'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // รูปภาพพืชสมุนไพร
            Image.asset(
              'assets/images/lemongrass.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // ชื่อวิทยาศาสตร์
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ชื่อวิทยาศาสตร์:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(herbData.scientificName),
                ],
              ),
            ),
            // รายการชื่อท้องถิ่น
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: herbData.localNames.length,
              itemBuilder: (context, index) {
                String region = herbData.localNames.keys.elementAt(index);
                String name = herbData.localNames.values.elementAt(index);
                return Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  margin: EdgeInsets.only(top: 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ชื่อในท้องถิ่น$region:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(name),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'หน้าแรก'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'ถูกใจ'),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'แชร์'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'โปรไฟล์'),
        ],
        currentIndex: 0,
        onTap: (index) {
          // TODO: Implement navigation
        },
      ),
    );
  }
}