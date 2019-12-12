import 'dart:io';

import 'package:agrisensor_app/plantImageDetection.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DiseaseDetectionPage extends StatefulWidget {
  static const nameRoute = 'DiseaseDetectionPage';

  @override
  _DiseaseDetectionPageState createState() => _DiseaseDetectionPageState();
}

class _DiseaseDetectionPageState extends State<DiseaseDetectionPage> {
  /*File image;
  bool _isDetecting = false;

  bool _busy = false;


  void getImage() async {
    File _image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      image = _image;
    });
  }

  List<dynamic> _detectedDisease;

  Future<void> detectDisease() async {
    if (image != null) {
      setState(() {
        _isDetecting = true;
      });
      PlantsImageDetection imageDetection = PlantsImageDetection(image: image);
      await imageDetection.diseaseDetection().then((results) async {
        setState(() {
          _isDetecting = false;
          _detectedDisease = results;
        });
        print('results : $results');
        //await Tflite.close();
      }).catchError((onError) {
        setState(() {
          _isDetecting = false;
        });
        print('Errors1: $onError');
      });
    } else {
      print('please select an Image');
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detect Disease'),
      ),
      body: /*Center(
        child: _busy
            ? CircularProgressIndicator()
            : Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      color: Colors.white12,
                      child: Container(
                        alignment: Alignment.center,
                        child: image == null
                            ? Icon(
                                Icons.broken_image,
                                color: Colors.black12,
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  image: DecorationImage(
                                      image: FileImage(
                                        image,
                                      ),
                                      fit: BoxFit.fill),
                                ),
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: _isDetecting
                          ? CircularProgressIndicator()
                          : _detectedDisease == null
                              ? Text('no information')
                              : Text(
                                  _detectedDisease.toString(),
                                ),
                    ),
                  )
                ],
              ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: getImage,
              tooltip: 'add image',
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => detectDisease(),
              tooltip: 'detect',
              child: Icon(Icons.send),
            ),
          ],
        ),
      ),*/
      Container()
    );
  }
}
