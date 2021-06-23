import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.purple,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.green, Colors.black45]),
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Image(
                  image: NetworkImage(
                    'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
