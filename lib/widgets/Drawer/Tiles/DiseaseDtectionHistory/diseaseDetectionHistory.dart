import 'package:agrisensor_app/widgets/Drawer/Tiles/DiseaseDtectionHistory/historyCard.dart';
import 'package:flutter/material.dart';

class DiseaseDetectionHistory extends StatefulWidget {
  static const nameRoute = 'DiseaseDetectionHistory';
  @override
  _DiseaseDetectionHistoryState createState() =>
      _DiseaseDetectionHistoryState();
}

class _DiseaseDetectionHistoryState extends State<DiseaseDetectionHistory> {
  bool _showMore = false;
  List<String> dum = [
    'me',
    'you',
    'here',
    'them',
  ];
  int _currentIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total :',
                      style: TextStyle(
                        color: Color.fromRGBO(10, 17, 40, 1.0),
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      dum.length.toString(),
                      style: TextStyle(
                        color: Color.fromRGBO(10, 17, 40, 1.0),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: dum.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      index == 0
                          ? SizedBox(
                              height: 10,
                            )
                          : Container(),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height:
                            _currentIndex == index ? _showMore ? 200 : 90 : 90,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(237, 245, 252, 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: _currentIndex == index
                                    ? _showMore
                                        ? BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topRight: Radius.circular(5),
                                          )
                                        : BorderRadius.circular(5)
                                    : BorderRadius.circular(5),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/testImage1.jpg',
                                      fit: BoxFit.cover,
                                      height: 90,
                                      width: 110,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('${dum[index]}'),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Text('\'data\''),
                                              FlatButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (_showMore) {
                                                      _showMore = false;
                                                      _currentIndex = index;
                                                    } else {
                                                      _showMore = true;
                                                      _currentIndex = index;
                                                    }
                                                  });
                                                },
                                                child: Text(
                                                    _currentIndex == index
                                                        ? _showMore
                                                            ? 'show less'
                                                            : 'show more'
                                                        : 'show more'),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
