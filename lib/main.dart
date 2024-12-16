import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '自傳App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: homePage(),
  ));
}

Widget homePage() {
  return Scaffold(
    appBar: AppBar(
      title: Text('首頁'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              runApp(MaterialApp(
                title: '自傳App',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: bioPage(),
              ));
            },
            child: Text('進入'),
          ),
        ],
      ),
    ),
  );
}

Widget bioPage() {
  return Scaffold(
    appBar: AppBar(
      title: Text('我的自傳'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Text(
          '''
我的名字是何佩臻，來自台灣彰化縣。

從小我對於運動充滿了熱情，國小參加了田徑隊、國中參加籃球隊，代表學校參加比賽。
後來因為運動受傷，所以沒有繼續走運動這條路。

後來，我在網上看到有人參加資安的比賽，看到他們的攻防戰，雖然都看不懂，但就是覺得他們好帥。
因此，我大學選擇了資訊工程系這個科系！

雖然現在我讀這個科系讀到很迷茫，有點不知道之後要幹嘛...
但我希望，未來我能夠繼續深耕資訊工程的領域，貢獻自己的能力，並持續學習和成長。
          ''',
          style: TextStyle(fontSize: 20),
        ),
      ),
    ),
  );
}
