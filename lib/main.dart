
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0;

  @override
  void initState() {
    // TODO: implement initState
    print("initState");
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("didChangeDependencies");

    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
      child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Demo2(),

          Text("value $count"),
          RaisedButton(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),child: Text("Click me"),textColor: Colors.white,
              color: Colors.yellow,
              onPressed: (){
            setState(() { count++;});
          })
        ],
      ),
    ),
    );
  }
  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    print("didUpdateWidget");
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
  @override
  void setState(fn) {
    print("setState");
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void dispose() {
    print("dispose");
    // TODO: implement dispose
    super.dispose();
  }
}

class Demo2 extends StatefulWidget {
  @override
  _Demo2State createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  @override
  void didUpdateWidget(Demo2 oldWidget) {
    print("didUpdateWidget");
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
}


