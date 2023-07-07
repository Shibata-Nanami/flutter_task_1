import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //カラム数
            crossAxisSpacing: 20,
            // Widget間のスペース（上下）
            mainAxisSpacing: 20,
            // 全体の余白
          ),
          itemCount: 6, //要素数
          itemBuilder: (context, index) {
            //要素を戻り値で返す
            return Container(
              color: Colors.blue,
            );
          },
          shrinkWrap: true,
        ),
      ),
      // child: ListView.builder(　　//※ここでエラーが出ます
      //   shrinkWrap: true,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       tileColor: Colors.blue[50],
      //     );
      //   },
      //   itemCount: 3,
      // ),
    );
  }
}
