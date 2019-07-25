import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter - Expandable LIstview'),
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

  List<Map<dynamic,dynamic>>list_product;
  @override
  void initState() {
    super.initState();
    list_product=new List();
    for(var k=1;k<=12;k++)
      {
        Map map=Map();
        map.putIfAbsent(getMonth(k), ()=>getWeeks());
        list_product.add(map);

      }
    list_product.map((s){

    }).map((list)=>list).toList();

  }

  @override
  Widget build(BuildContext context) {

    List<String>list=List();

    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
backgroundColor: Colors.pink,
        title: Text(widget.title),
      ),
      body: Center(

        child: ListView(
          children: <Widget>[
            for(final map in list_product)
              for(final keys in map.keys)
            ListItem(keys,map[keys].toList())
               ,
          ],
        )
      ),

    );
  }

  String getMonth(int month)
  {
    switch(month)
    {
      case 1:
        return "January";
      case 2:
        return "Febraury";
      case 3:
        return "March";
      case 4:
        return "April";
      case 5:
        return "May";
      case 6:
        return "June";
      case 7:
        return "July";
      case 8:
        return "August";
      case 9:
        return "September";
      case 10:
        return "October";
      case 11:
        return "November";
      case 12:
        return "December";
    }
  }

  List<dynamic> getWeeks()
  {

    return ["Monday","Tuesday","Wednesday","Thursday","Friday","Saterday","Sunday",].toList();
  }
}
