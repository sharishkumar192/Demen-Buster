import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Details extends StatelessWidget {
  Map user_data;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    user_data = ModalRoute.of(context).settings.arguments;
    try {
      Image.network(user_data['image']);
    } on NetworkImageLoadException {
      print(flag);
    } on Exception {
      flag = false;
    }
    print(flag);
    return Scaffold(
      appBar:
          AppBar(title: Text(user_data['type']), backgroundColor: Colors.green),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      user_data['image'],
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        user_data['name'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        user_data['address'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton.icon(
                          icon: Icon(Icons.phone, color: Colors.blue),
                          label: Text("Call"),
                          onPressed: _launchURL,
                        ),
                        FlatButton.icon(
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          label: Text("Google Maps"),
                          onPressed: _launchMAP,
                        ),
                      ],
                    ),
                    FlatButton.icon(
                      icon: Icon(
                        Icons.subtitles,
                        color: Colors.black87,
                      ),
                      label: Text("Website"),
                      onPressed: _launchWEB,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _launchWEB() async {
    print(user_data['web']);
    if (await canLaunch(user_data['web'])) {
      await launch(user_data['web']);
    } else {
      throw 'Could not launch ${user_data['web']}';
    }
  }

  _launchMAP() async {
    if (await canLaunch(
        "https://www.google.co.in/maps/place/${user_data['address']}")) {
      await launch(
          "https://www.google.co.in/maps/place/${user_data['address']}");
    } else {
      throw 'Could not launch https://www.google.co.in/maps/place/${user_data['address']}';
    }
  }

  _launchURL() async {
    if (await canLaunch("tel:${user_data['number']}")) {
      await launch("tel:${user_data['number']}");
    } else {
      throw 'Could not launch tel:${user_data['number']}';
    }
  }
}
