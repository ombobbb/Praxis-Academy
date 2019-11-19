import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      //home: new Text("Cool")
      debugShowCheckedModeBanner: false,
      home: new MyStatelessWidget()));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold provide functionality of appbar, body of app etc
    return new Scaffold(
        appBar: new AppBar(title: new Text("Stateless Widget")),
        body: new Container(
            //adding padding around card
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new MyCard(
                      title: new Text("I love You",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.face,
                          size: 40.0, color: Colors.redAccent)),
                  new MyCard(
                      title: new Text("Today is a Good Day",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.today,
                          size: 40.0, color: Colors.brown)),
                  new MyCard(
                      title: new Text("Hard Work for Your Future",
                          style: new TextStyle(fontSize: 20.0)),
                      icon:
                          new Icon(Icons.work, size: 40.0, color: Colors.blue))
                ])));
  }
}

class MyCard extends StatelessWidget {
  //adding constructor
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
        //adding bottom padding on card
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
            child: new Container(
                //adding padding inside card
                padding: new EdgeInsets.all(15.0),
                child: new Column(children: <Widget>[this.title, this.icon]))));
  }
}
