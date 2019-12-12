import 'package:agrisensor_app/ProfilePage/hasLogin.dart';
import 'package:agrisensor_app/ProfilePage/hasNotLogin.dart';
import 'package:agrisensor_app/widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  bool _isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      drawer: DrawerLayout(),
      backgroundColor: Colors.white,
      body: _isLogin ? HasLogin() : HasNotLogin(),
    );
  }
}