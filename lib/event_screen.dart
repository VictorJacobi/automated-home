import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventScreen extends StatelessWidget {
  static const String id = '/EventScreen';
  const EventScreen({Key? key,this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: ()=>Navigator.pop(context),),
        title: Text('Event'),
      ),
      body: Center(
        child: TextButton(
            onPressed: (){
              context.go('/');
            },
            child: Text('$text')),
      ),
    );
  }
}
