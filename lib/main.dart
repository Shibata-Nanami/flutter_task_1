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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                const _Blackbox(),
                GridView.builder(
                  padding: const EdgeInsets.all(25),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    //カラム数
                    crossAxisCount: 3,
                    // Widget間のスペース（上下）
                    crossAxisSpacing: 20,
                    // 全体の余白
                    mainAxisSpacing: 20,
                  ),
                  //要素数
                  itemCount: 6,
                  //要素を戻り値で返す
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.blue,
                    );
                  },
                  shrinkWrap: true,
                ),
                const _Blackbox(),
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
          ),
        ),
      ),
    );
  }
}

class _Blackbox extends StatelessWidget {
  const _Blackbox();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 260,
      color: Colors.black,
    );
  }
}
