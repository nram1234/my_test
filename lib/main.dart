import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> a = [];

Future ref()async{
  await Future.delayed(Duration(seconds: 2));
  if(_counter+10<a.length){
    _counter+=10;
    setState(() {

    });
  }
}
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 45; i++) {
      a.add("number $i");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: RefreshIndicator(
              child: ListView.builder(
                itemCount: _counter,
                itemBuilder: (context, pos) {
                  return Container(height: 100,color: Colors.blue,child: Text(a[pos]),);
                },
              ),
              onRefresh: ref ,)),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
