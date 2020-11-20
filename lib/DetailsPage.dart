import 'package:flutter/material.dart';
import 'models/Record.dart';
import 'helper/URLLauncher.dart';
// 1
class DetailPage extends StatelessWidget {
final Record record;
// 2
DetailPage({this.record});

@override
Widget build(BuildContext context) {
return new Scaffold(
appBar: new AppBar(
title: new Text(record.name),
),
body: new ListView(
children: <Widget>[
Hero(
tag: "avatar_" + record.name,
child: new Image.network(
record.photo
),
),
// 3
GestureDetector(
onTap: () {
URLLauncher().launchURL(record.url);
},
child: new Container(
padding: const EdgeInsets.all(32.0),
child: new Row(
children: [
// First child in the Row for the name and the
// Release date information.
new Expanded(
// Name and Address are in the same column
child: new Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// Code to create the view for name.
new Container(
padding: const EdgeInsets.only(bottom: 8.0),
child: new Text(
"Name: " + record.name,
style: new TextStyle(
fontWeight: FontWeight.bold,
),
),
),
// Code to create the view for address.
new Text(
"Address: " + record.address,
style: new TextStyle(
color: Colors.grey[500],
),
),
],
),
),
// Icon to indicate the phone number.
new Icon(
Icons.phone,
color: Colors.red[500],
),
new Text(' ${record.contact}'),
],
),
)
),
]
)
);
}
}