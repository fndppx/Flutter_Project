

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flukit/flukit.dart';
import '../common/API.dart';


class WeekRoute extends StatefulWidget {

  @override
  _WeekRouteState createState() => _WeekRouteState();
}

class _WeekRouteState extends State<WeekRoute> {

  @override
  Widget build(BuildContext context) {

    var buildButtonColumn = Column(
      children: <Widget>[
        Text('7',
          style: TextStyle(
              fontSize: 30,
              color: Colors.orange
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text('学习天数',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        )
      ],
    );

    var content = Padding(
      padding: const EdgeInsets.only(top: 14.0,left: 15, right: 15),
      child: Material(
        color: Colors.red,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(6)
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 0,top:0),
              child: Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.centerLeft,

                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 12, top: 5),
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                        color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(left: 0, top: 5),
                        color: Colors.green,
                        height: 1,
                        width: 13,
                      ),
                    ],
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 12, top: 15, bottom: 9),
                    child: Text('2017年12月3日-2017年12月9日',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              )
              ,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildButtonColumn,
                buildButtonColumn,
                buildButtonColumn,
              ],

            ),

            Container(

              margin: const EdgeInsets.only(left: 15, right: 15 , top: 16),
              color: Colors.grey,
              height: 1,
            ),

            GestureDetector(
                child: Container(
                  height: 49,
                  child: Center(
                    child: Text('查看详情',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              onTap: (){
                  print('onTap>>>>');
                  API(context)
                      .login('11');
              },
            )

          ],

        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('学习周报'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          content,
        ],

      ),

    );
  }
}