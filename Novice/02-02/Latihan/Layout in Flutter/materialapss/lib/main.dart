import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}

void main() => runApp(MyApp());

// #docregion MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Danau Sentani',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Sentani, Papua',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
          Text('1,000,000 likes'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.call, color: Colors.lightBlue),
          Icon(Icons.near_me, color: Colors.lightBlue),
          Icon(Icons.share, color: Colors.lightBlue),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        'Danau Sentani adalah danau yang terletak di Papua Indonesia.'
        'Danau Sentani berada di bawah lereng Pegunungan Cagar Alam Cyclops yang memiliki luas sekitar 245.000 hektar. Danau ini terbentang antara Kota Jayapura dan Kabupaten Jayapura, Papua. Danau Sentani yang memiliki luas sekitar 9.360 hektar dan berada pada ketinggian 75 mdpl. Danau Sentani merupakan danau terluas di Papua. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pesona Sentani',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pesona Sentani'),
        ),
        // #docregion centered-text
        //body: Column(
        body: ListView(
          // #docregion text
          children: [
            Image.asset(
              'images/danau.jpg',
              width: 500,
              height: 200,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
          // #enddocregion text
        ),
        // #enddocregion centered-text
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
