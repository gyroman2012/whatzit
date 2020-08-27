import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var snapshot;
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text(
          'Whatzit?',
          style: TextStyle(
            color: Colors.purple[800],
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.orange,
            height: 200,
            child: ListView.builder(
              itemCount: snapshot.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.amber[400],
                  elevation: 10.0,
                  margin: EdgeInsets.all(5.0),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child:
                              //  Image.asset(
                              //   "images/shipoopie.jpeg",
                              Image.network(
                            snapshot[index].data["url"],
                            height: 130.0,
                            width: 130.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          snapshot[index].data["title"],
                          // 'Shipoopie',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
