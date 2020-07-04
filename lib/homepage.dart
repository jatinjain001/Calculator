import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double  num1 = 0, num2 = 0;
  double   sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void domul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void dodiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum=num1/num2;
      
    });
  }

  void doclear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Calculator"),
      ),
      body: new Container(
          child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("output: $sum"),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter number 2"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new RaisedButton(onPressed: doAddition, child: new Text("+")),
                Padding(padding: const EdgeInsets.only(right: 20.0)),
                new RaisedButton(onPressed: doSub, child: new Text("-")),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new RaisedButton(onPressed: domul, child: new Text("*")),
                Padding(padding: const EdgeInsets.only(right: 20.0)),
                new RaisedButton(onPressed: dodiv, child: new Text("/"))
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new RaisedButton(
                  onPressed: doclear,
                  child: Text("Clear"),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
