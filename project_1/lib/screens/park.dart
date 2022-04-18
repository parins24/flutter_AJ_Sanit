import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Mall_description.dart';
import './Mall_description.dart';

class ParkDetail extends StatefulWidget {
  final Mall mall;

  const ParkDetail({
    Key? key,
    required this.mall,
  }) : super(key: key);

  @override
  _ParkDetailState createState() {
    return _ParkDetailState();
  }
}

class _ParkDetailState extends State<ParkDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
        title: Text(widget.mall.name + " Parking lot"),
      ),
      body: SafeArea(child: Column(
            children: <Widget>[
                Padding(padding: EdgeInsets.all(16.0),child: SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: NetworkImage(widget.mall.parkImg),
              ),
              
            ),
             ),
             Text(
              "Parking space : " + widget.mall.pSpace.toString()+"/"+ widget.mall.mSpace.toString(),
              style: const TextStyle(fontSize: 18, color: Colors.redAccent),
              textAlign: TextAlign.left
    
            ),
            Text(
              "Number of floors : " + widget.mall.numFloor.toString(),
              style: const TextStyle(fontSize: 18, color: Colors.green),
              textAlign: TextAlign.left
    
            ),
            ]
          ),
        ),
    );
    
  }
  
}