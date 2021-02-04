import 'package:calculator/utils/components/calc_buttons.dart';
import 'package:calculator/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalcTheme(
      child: MaterialApp(
    title: "Calculator Component Gallery",
    home: GalleryRoot(),
    routes: {
      '/button': (context) => ButtonGallery(),
      '/text': (context) => TextGallery(),
    },
  )));
}

class GalleryRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = CalcTheme.of(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeData.colors.ashGrey,
          title: Text("Calculator Component Gallery",
              style: themeData.coalTextTheme.font3),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              ListTile(
                //Calculator Texts
                title: Text("Calculator Texts", style: themeData.title),
                subtitle: Text(
                    '''These are texts that appear in the calculator''',
                    style: themeData.coalTextTheme.font3),
                onTap: () {
                  Navigator.pushNamed(context, "/text");
                },
              ),
              ListTile(
                //Calculator Buttons
                title: Text("Calculator Button", style: themeData.title),
                subtitle: Text(
                    '''These are the various buttons in the calculator''',
                    style: themeData.coalTextTheme.font3),
                onTap: () {
                  Navigator.pushNamed(context, "/button");
                },
              ),
            ],
          ),
        ));
  }
}

class TextGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = CalcTheme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.colors.ashGrey,
        title: Text("Calculator Texts", style: themeData.coalTextTheme.font3),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("3", style: themeData.coalTextTheme.font3),
              Divider(),
              Text("1", style: themeData.warmRedTextTheme.font1),
              Divider(),
              Text("2", style: themeData.limeGreenishTextTheme.font2),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Buttons"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NumbersButton(label: "Primary Button", onPressed: () {}),
              Divider(),
              ResetButton(label: "Secondary Button", onPressed: () {}),
              Divider(),
              OperationsButton(label: "Primary Button Disabled"),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
