import 'package:flutter/material.dart';

class NewsView extends StatefulWidget {
  NewsView({Key key}) : super(key: key);

  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.transparent,
      ),
    );
  }
}
