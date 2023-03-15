import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: ()=>Navigator.pop(context),),
        title: Text('Category'),
      ),
      body: Center(
        child: TextButton(
            onPressed: (){
              context.push('/');
            },
            child: Text('Category Screen')),
      ),
    );
  }
}
