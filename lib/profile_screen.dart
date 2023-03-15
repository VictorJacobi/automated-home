import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: ()=>Navigator.pop(context),),
        title: Text('Profile'),
      ),
      body: Center(
        child: TextButton(
            onPressed: (){
              context.go('/');
            },
            child: Text('Profile Screen')),
      ),
    );
  }
}
