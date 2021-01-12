import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: CustomCard(),
  ));
}

class CustomCard extends StatelessWidget {
  final labelColor = Colors.blue[400];
  final mainTextColor = Colors.blue[800];
  final fieldPadding = EdgeInsets.fromLTRB(0, 5, 0, 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.green[500],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpeg'),
                radius: 70,
              ),
            ),
          Divider(height: 40, color: labelColor),
          Text(
            'NAME',
            style: TextStyle(
              color: labelColor,
              fontSize: 20,
              letterSpacing: 1,
            ),
          ),
            Padding(
              padding: fieldPadding,
              child: Text(
                'Felix Avelar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: mainTextColor,
                  fontSize: 30,
                ),
              ),
            ),
            Text(
              'SCORE',
              style: TextStyle(
                color: labelColor,
                fontSize: 20,
                letterSpacing: 1,
              ),
            ),
            Padding(
              padding: fieldPadding,
              child: Text(
                '7',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: mainTextColor,
                  letterSpacing: 1,
                  fontSize: 30,
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: mainTextColor,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                    'felix@gmail.com',
                  style: TextStyle(
                    fontSize: 25,
                    color: mainTextColor,
                    letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


