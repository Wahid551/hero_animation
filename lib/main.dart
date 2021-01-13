import 'package:flutter/material.dart';
import 'details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hero Widget'),
          backgroundColor: Colors.indigo,
        ),
        body: HeroWidget(),
      ),
    );
  }
}

class HeroWidget extends StatefulWidget {
  @override
  _HeroWidgetState createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Details(),
        ));
      },
      contentPadding: EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Nights',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[300])),
          Text('Wahid Ali',
              style: TextStyle(fontSize: 20, color: Colors.grey[600])),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        //Hero Animation
        child: Hero(
          tag: 'location_img-',
          child: Image.asset(
            'assets/flower.jpg',
            height: 50.0,
          ),
        ),
      ),
      trailing: Text('200/rs'),
    );
  }
}
