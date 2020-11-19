import 'package:flutter/material.dart';
import 'home.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tiny Tannies Memory Game"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => FlipCardGane(
                                    Start.gameon,
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 200.0),
                            height: 90,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 6,
                                      color: Colors.black45,
                                      spreadRadius: 0.10,
                                      offset: Offset(4, 4))
                                ]),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 210.0),
                            height: 80,
                            width: double.infinity,
                            child: Column(
                              children: <Widget>[
                                Center(
                                    child: Text(
                                  "Start",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black26,
                                          blurRadius: 2,
                                          offset: Offset(1, 2),
                                        ),
                                      ]),
                                )),
                              ],
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 300),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "Time will start after button is pressed",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
