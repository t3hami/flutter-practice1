import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> products = ["Code 1"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("App Bar"),
            ),
            body: Column(children: <Widget>[
              Container(
                child: RaisedButton(
                  child: Text("Add"),
                  onPressed: () {},
                ),
                margin: EdgeInsets.all(10),
              ),
              Column(
                children: products
                    .map((element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset("images/code-img.jpg"),
                              Text(element),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ])));
  }
}
