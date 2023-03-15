import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ParentScreen extends StatelessWidget {
  const ParentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: ()=>Navigator.pop(context),),
        title: Text('Parent'),
      ),
      body: Center(
        child: TextButton(
            onPressed: (){
              context.go('/');
            },
            child: Text('Parent Screen')),
      ),
    );;
  }
}
