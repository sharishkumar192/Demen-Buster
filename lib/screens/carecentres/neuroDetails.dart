import "package:flutter/material.dart";

import 'package:url_launcher/url_launcher.dart';

class NeuroDetails extends StatelessWidget {
  Map _user_data;

  @override
  Widget build(BuildContext context) {
    _user_data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
          title: Text(_user_data['name']), backgroundColor: Colors.green),
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
                      _user_data['img'],
                      fit: BoxFit.contain,
                    ),
                    Row(
                      children: [
                        Text("Name ",style:TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _user_data['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                       Column(
                         children: [
                           Container(
                        child:Align(
                          alignment: Alignment.centerLeft,
                           child:Text("Education ",style:TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
                        )
                           ),
                           Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _user_data['education'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                      ),
                         ],
                       ),
          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Call ",style:TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
                        FlatButton.icon(
                          icon: Icon(Icons.phone, color: Colors.blue),
                          label: Text("Call"),
                          onPressed: _launchURL,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Experience ",style:TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _user_data['experience'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                        child:Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Working hospital: ",style:TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _user_data['hospital'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                        child:Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Info: ",style:TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
                        )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _user_data['info'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    if (await canLaunch("tel:${_user_data['number']}")) {
      await launch("tel:${_user_data['number']}");
    } else {
      throw 'Could not launch tel:${_user_data['number']}';
    }
  }
}
