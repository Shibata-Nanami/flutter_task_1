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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: 260,
                  color: Colors.black,
                ),
                GridView.builder(
                  padding: const EdgeInsets.all(25),
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
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 260,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 360,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return const Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: SizedBox(
                                  height: 80,
                                  child: Card(
                                    color: Colors.yellow,
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
