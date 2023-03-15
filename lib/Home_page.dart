// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Devices',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  ClayContainer(
                    spread: 0,
                    height: 50,
                    width: 50,
                    color: Color(0xFF0f0f0f),
                    parentColor: Color(0xFFa7a7a7),
                    borderRadius: 15,
                    child: Icon(
                      Icons.clear,
                      color: Color(0xFFa7a7a7),
                    ),
                  ),
                ],
              ),
              Text(
                'Statistics',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text('Living Room',
              style: TextStyle(
                fontSize: 23,
              ),
              ),
             ReUsedWidget(iconType: Icons.whatshot,description: 'Purifier'),
              ReUsedWidget(iconType: Icons.lightbulb_outline,description: 'Lamp#42'),
              Text('Bedroom',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              ReUsedWidget(iconType: Icons.device_thermostat,description: 'Thermostat'),
              ReUsedWidget(iconType: Icons.tv,description: 'Samsung TV'),
              TextButton(
                onPressed: (){},
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFBE81AC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Add New Device',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 

class ReUsedWidget extends StatelessWidget {
  ReUsedWidget({this.iconType,this.description});
  final IconData? iconType;
  final String? description;
  @override
  Widget build(BuildContext context) {
    return  ClayContainer(
      spread: 0,
      height: 50,
      color: Color(0xFF0f0f0f),//Color(0xFF0f0f0f),
      parentColor: Color(0xFFa7a7a7),
      borderRadius: 15,
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconType,
                  color: Color(0xFFa7a7a7),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  description??'',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFFa7a7a7),
            ),
          ],
        ),
      ),
    );
  }
}
