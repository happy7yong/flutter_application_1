import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Business Card',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: const Text(
          'Business Card',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 240, 240),
        elevation: 0.0,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // starts top left side
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.all(19),
                child: CircleAvatar(
                  backgroundImage: AssetImage('../assets/chaeyoung.png'),
                  //backgroundColor: Colors.amberAccent,
                  radius: 90.0,
                ),
              ),
            ),
            Text('Chaeyoung Yong',
                style: TextStyle(
                    color: Color.fromARGB(255, 136, 87, 87),
                    letterSpacing: 0.5,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            Divider(
              height: 60.0,
              color: Color.fromARGB(255, 150, 150, 150),
            ),
            Text('ID',
                style: TextStyle(
                    color: Color.fromARGB(255, 53, 47, 47),
                    letterSpacing: -0.7)),
            SizedBox(
              height: 5.0,
            ), // control height + width
            Text('C189037',
                style: TextStyle(
                    color: Color.fromARGB(255, 53, 47, 47),
                    letterSpacing: 0.4,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),

            SizedBox(
              height: 30.0,
            ),
            Text('Major',
                style: TextStyle(
                    color: Color.fromARGB(255, 53, 47, 47),
                    letterSpacing: -0.7)),
            SizedBox(
              height: 5.0,
            ),
            Text('Software Engineering',
                style: TextStyle(
                    color: Color.fromARGB(255, 53, 47, 47),
                    letterSpacing: 0.5,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.star_border),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  'Designing',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.sentiment_very_satisfied),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  'Reacting with empathy',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.brightness_3),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  'Putting off sleep',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
