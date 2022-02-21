import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  var number1 = 0, number2 = 0, sum = 0;

  final TextEditingController txt1 = new TextEditingController(text: "0");
  final TextEditingController txt2 = new TextEditingController(text: "0");

  void penjumlahan(){
    setState(() {
      number1 = int.parse(txt1.text);
      number2 = int.parse(txt2.text);
      sum = number1 + number2;
    });
  }
  void pengurangan(){
    setState(() {
      number1 = int.parse(txt1.text);
      number2 = int.parse(txt2.text);
      sum = number1 - number2;
    });
  }
  void perkalian(){
    setState(() {
      number1 = int.parse(txt1.text);
      number2 = int.parse(txt2.text);
      sum = number1 * number2;
    });
  }
  void pembagian(){
    setState(() {
      number1 = int.parse(txt1.text);
      number2 = int.parse(txt2.text);
      sum = number1 ~/ number2;
    });
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculator")),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hasil Perhitungan : $sum",
              textAlign: TextAlign.left,
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold, 
                  color: Color.fromARGB(255, 61, 59, 59),
                  ),
              
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 30.0),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 236, 237, 240),
                filled: true,
                hintText: "Input Pertama",
                hintStyle: TextStyle(color: Color.fromARGB(255, 128, 128, 128)),
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                // enabledBorder: InputBorder.none
              ),
              controller: txt1,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 15.0),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 236, 237, 240),
                filled: true,
                hintText: "Input Kedua",
                hintStyle: TextStyle(color: Color.fromARGB(255, 128, 128, 128)),
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                // enabledBorder: InputBorder.none
              ),
              controller: txt2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 25.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+",
                  style: TextStyle(fontSize: 20),),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: penjumlahan,
                  height: 48.0,
                  minWidth: 138,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0)),
                ),
                new MaterialButton(
                  child: new Text("-",
                  style: TextStyle(fontSize: 30),),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: pengurangan,
                  height: 48.0,
                  minWidth: 138,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0)),
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*",
                  style: TextStyle(fontSize: 25),),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: perkalian,
                  height: 48.0,
                  minWidth: 138,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0)),
                  
                ),
                new MaterialButton(
                  child: new Text("/",
                  style: TextStyle(fontSize: 23),),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: pembagian,
                  height: 48.0,
                  minWidth: 138,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
