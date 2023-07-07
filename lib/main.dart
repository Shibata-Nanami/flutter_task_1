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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GridView.builder(
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
          SizedBox(
            width: 360,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      height: 80,
                      child: Card(
                        color: Colors.yellow,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
