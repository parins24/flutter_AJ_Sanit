import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Mall_description.dart';
import './Mall_description.dart';
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

// TODO: Add _mallDetailState here
class _MallDetailState extends State<MallDetail> {
  // TODO: Add _sliderVal here
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
           
            // 5
            const SizedBox(
              height: 5,
            ),
            // 6
            Text(
              widget.mall.name,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              widget.mall.location,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.left
            ),
            // TODO: Add Expanded
            // 7
            // Expanded(
            //   // 8
            //   child: ListView.builder(
            //     padding: const EdgeInsets.all(7.0),
            //     itemCount: widget.mall.ingredients.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       final ingredient = widget.mall.ingredients[index];
            //       // 9
            //       // TODO: Add ingredient.quantity
            //       return Text(
            //           ' ${ingredient.measure} ${ingredient.name}');

            //     },
            //   ),
            // ),
            // TODO: Add Slider() here
            ElevatedButton(
                child: const Text('Map'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/map');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              ),
            Slider(
              // 10
              min: 0,
              max: 10,
              divisions: 9,
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

          ],
        ),
      ),
    );
  }
}