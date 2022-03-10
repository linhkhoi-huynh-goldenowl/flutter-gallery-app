import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Rich Text Widget"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: RichText(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(
                    text: "Create a text widget. If the [style] argument is "
                        "nulll, the text will use the style form the abcdefghigjasajssdjasjsjdsj",
                    style: TextStyle(
                      color: Color(0xFFea88fb),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Ramabhadra",
                      fontSize: 25,
                    ),
                  ),
                ]),
              ),
            ),
            Center(
              child: RichText(
                text: TextSpan(children: [
                  const TextSpan(
                      text: "First ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 21,
                      )),
                  const WidgetSpan(
                    child: Icon(
                      Icons.arrow_forward,
                      size: 21,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                      text: "second ",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 30,
                          fontWeight: FontWeight.w400)),
                  WidgetSpan(
                      child: Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber[400],
                  )),
                  TextSpan(
                      text: " Third",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 30,
                          fontWeight: FontWeight.w400)),
                ]),
              ),
            ),
            Center(
              child: RichText(
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "One ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                      )),
                  TextSpan(
                      text: "Two ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                  TextSpan(
                      text: "Three ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                      )),
                  TextSpan(
                      text: "Four ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                      )),
                  TextSpan(
                      text: "Five ",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Ramabhadra",
                        fontSize: 26,
                      )),
                ]),
              ),
            ),
            Center(
              child: RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "G",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 40,
                          backgroundColor: Colors.pink[200])),
                  TextSpan(
                      text: "o",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Ramabhadra",
                          backgroundColor: Colors.pink[100])),
                  TextSpan(
                      text: "o",
                      style: TextStyle(
                          color: Colors.yellow[700],
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Ramabhadra",
                          backgroundColor: Colors.pink[300])),
                  TextSpan(
                      text: "g",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 40,
                          backgroundColor: Colors.pink[200])),
                  TextSpan(
                      text: "l",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Ramabhadra",
                          backgroundColor: Colors.pink[100])),
                  TextSpan(
                      text: "e",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 40,
                          backgroundColor: Colors.pink[200])),
                ]),
              ),
            )
          ],
        ));
  }
}
