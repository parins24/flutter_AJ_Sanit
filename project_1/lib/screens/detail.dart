import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Mall_description.dart';
import './Mall_description.dart';
import 'package:flutter_application_1/screens/map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MallDetail extends StatefulWidget {
  final Mall mall;

  const MallDetail({
    Key? key,
    required this.mall,
  }) : super(key: key);

  @override
  _MallDetailState createState() {
    return _MallDetailState();
  }
}


class _MallDetailState extends State<MallDetail> {

  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
        title: Text(widget.mall.name),
      ),
      // 2
      
      body: SafeArea(
        // 3
        
        child: Column(
          
          children: <Widget>[
            // 4
          Padding(padding: EdgeInsets.all(16.0),child: SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: NetworkImage(widget.mall.image),
              ),
            ), ),


            // 6
            Text(
              widget.mall.name,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              widget.mall.location,
              style: const TextStyle(fontSize: 13),
              textAlign: TextAlign.left
            ),
            Text(
              widget.mall.open,
              style: const TextStyle(fontSize: 13),
              textAlign: TextAlign.left
            ),
            const Text(
              "Time estimated : 22.1 min",
              style: TextStyle(fontSize: 13, color: Colors.green),
              textAlign: TextAlign.left
    
            ),
            const Text(
              "Parking space : 37/60",
              style: TextStyle(fontSize: 13, color: Colors.redAccent),
              textAlign: TextAlign.left
    
            ),
            ElevatedButton(
                child: const Text('Map'),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/map');
                  Navigator.push(context, MaterialPageRoute( builder: (context)=> Builder(
                            builder: (context) {
                              return  MapScreen(widget.mall);
                            }
                          ) ),);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                ),
              ),
            Slider(
              // 10
              min: 0,
              max: 10,
              divisions: 2,
              // 11
              label: '${_sliderVal } items',
              // 12
              value: _sliderVal.toDouble(),
              // 13
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 14
              activeColor: Colors.pink.shade200,
              inactiveColor: Colors.black,
            ),
            Slider(
              // 10
              min: 0,
              max: 5,
              divisions: 3,
              // 11
              label: '${_sliderVal } items',
              // 12
              value: _sliderVal.toDouble(),
              // 13
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 14
              activeColor: Colors.pink.shade300,
              inactiveColor: Colors.black,
            ),

          ],
        ),
      ),
    );
  }
}