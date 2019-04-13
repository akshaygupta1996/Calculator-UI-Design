import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => new _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: new Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.black),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black,

                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("C")),
                              Flexible(flex: 1, child: CustomButton("+/-")),
                              Flexible(flex: 1, child: CustomButton("%")),
                              Flexible(flex: 1, child: CustomButton("\u00F7"))
                            ],
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("7")),
                              Flexible(flex: 1, child: CustomButton("8")),
                              Flexible(flex: 1, child: CustomButton("9")),
                              Flexible(flex: 1, child: CustomButton("X"))
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("4")),
                              Flexible(flex: 1, child: CustomButton("5")),
                              Flexible(flex: 1, child: CustomButton("6")),
                              Flexible(flex: 1, child: CustomButton("-"))
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("1")),
                              Flexible(flex: 1, child: CustomButton("2")),
                              Flexible(flex: 1, child: CustomButton("3")),
                              Flexible(flex: 1, child: CustomButton("+"))
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 2, child: CustomButton("0")),
                              Flexible(flex: 1, child: CustomButton(".")),
                              Flexible(flex: 1, child: CustomButton("")),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class CustomButton extends StatelessWidget {
  String text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(16.0)),
          color: Colors.white24),
      child: new Text(
        text,
        style: new TextStyle(color: Colors.white, fontSize: 26.0),
      ),
    );
  }
}
