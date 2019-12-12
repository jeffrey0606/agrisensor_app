import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HasLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //color: Colors.lightBlue,
        height: MediaQuery.of(context).size.height * .5,
        width: MediaQuery.of(context).size.width * .9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              child: SvgPicture.asset('assets/SVGPics/profileImage.svg'),
              maxRadius: 90,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Username',
              style: TextStyle(
                color: Color.fromRGBO(10, 17, 40, 1.0),
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Email',
              style: TextStyle(
                color: Color.fromRGBO(10, 17, 40, 1.0),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
