import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  //Hero Animation
                  child: Hero(
                tag: 'location_img-',
                child: Image.asset(
                  'assets/flower.jpg',
                  height: 360,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              )),
              SizedBox(height: 30),
              ListTile(
                title: Text('Wahid Ali',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey[800])),
                subtitle: Text(' night stay for only ',
                    style: TextStyle(letterSpacing: 1)),
              ),
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text('Wahid ALi is a Software Engineer',
                      style: TextStyle(color: Colors.grey[600], height: 1.4))),
            ],
          ),
        ));
  }
}
