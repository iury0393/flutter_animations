import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Flutter Anima'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueAccent,
        label: Text('Info'),
        icon: Icon(
          Icons.announcement,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #1',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #2',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #3',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #4',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #5',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #6',
                    style: TextStyle(fontSize: 20),
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
