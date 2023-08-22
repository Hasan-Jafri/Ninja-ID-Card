import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.indigo[800],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo[700],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images.jpeg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[500],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey[300],
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Hasan Jafri",
              style: TextStyle(
                  color: Colors.deepOrange[500],
                  letterSpacing: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                color: Colors.grey[300],
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "$ninjalevel",
              style: TextStyle(
                  color: Colors.deepOrange[500],
                  letterSpacing: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[200],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mohammadhasanstd@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
