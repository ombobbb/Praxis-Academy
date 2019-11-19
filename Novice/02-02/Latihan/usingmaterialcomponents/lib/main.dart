import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Menjalankan TutorialHome (Using Material Components)
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Tess',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu Navigasi',
          onPressed: () {},
        ),
        title: Text('Example Title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ),
        ],
      ),

      //Body
      body: Center(
        child: Text('Halooo'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Add',
        onPressed: () {},
      ),
    );
  }
}
