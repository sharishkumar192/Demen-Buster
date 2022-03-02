import 'package:flutter/material.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black),
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          )
        ],
        title: Text(
          "What's Alzheimer's?",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
         body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Image.asset(
                    "assets/animations/about.gif",
                  ),
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                borderOnForeground: false,
                shadowColor: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ALZHEIMER'S DISEASE",
                          style: TextStyle(color: Colors.blue[900], fontSize: 20)),
                      SizedBox(height: 20.0),
                      Text(
                          "Alzheimer's disease is a progressive disorder that causes brain cells to waste away (degenerate) and die.It is the most common cause of dementia — a continuous decline in thinking, behavioral and social skills that disrupts a person's ability tofunction independently. The early signs of the disease may be forgetting recent events or conversations. As the disease progresses, a person with Alzheimer's disease will develop severe memory impairment and lose the ability to carry out everyday tasks.Current Alzheimer's disease medications may temporarily improve symptoms or slow the rate of decline. These treatments can sometimes help people with Alzheimer's disease maximize function and maintain independence for a time.Different programs and services can help support people with Alzheimer's disease and their caregivers. There is no treatment that cures Alzheimer's disease or alters the disease process in the brain. In advanced stages of the disease, complications from severe loss of brain function —such as dehydration, malnutrition or infection — result in death.",
                   style: TextStyle(
                            fontSize: 16,)
                            )
                    ],
                  ),
                ),
              ),
            ),
          ]
        )
         )

    );}}