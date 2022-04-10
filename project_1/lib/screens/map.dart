// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapScreen extends StatefulWidget {
//   const MapScreen({ Key? key }) : super(key: key);

//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   static const _initialCameraPosition = CameraPosition(
//     target: LatLng(37.773972, -122.431297),
//     zoom: 11.5,
//   );

//   late GoogleMapController _googleMapController;

//   @override
//   void dispose(){
//     _googleMapController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         myLocationButtonEnabled: false,
//         zoomControlsEnabled: false,
//         initialCameraPosition: _initialCameraPosition,
//         onMapCreated: (controller) => _googleMapController = controller,
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.black,
//         onPressed: () => _googleMapController.animateCamera(CameraUpdate.newCameraPosition(_initialCameraPosition),
//         ),
//         child: const Icon(Icons.center_focus_strong),
//       ),
//     );
//   }
// }
class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();
  TextEditingController _searchController = TextEditingController();
  static final Marker _kGooglePlexMarker = Marker(
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'Google Plex'),
    icon: BitmapDescriptor.defaultMarker,
    position:  LatLng(13.886512095638809, 100.5812089267932),
    );


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(13.886512095638809, 100.5812089267932),
    zoom: 14.4746,
  );

  static final CameraPosition _kmall = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(13.746358822133805, 100.53474308142322),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static final Marker _kMallMarker = Marker(  
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'Google Plex'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position:  LatLng(13.746358822133805, 100.53474308142322),
    );
  
  static final Polyline _kPolyline = Polyline(
    polylineId: PolylineId('_kPolyline'),
    points: [
        LatLng(13.886512095638809, 100.5812089267932),
        LatLng(13.746358822133805, 100.53474308142322),
    ],
    width: 5,
    );

  static final Polygon _kPolygon = Polygon(
    polygonId: PolygonId("_kPolygon"),
    points: [
        LatLng(13.886512095638809, 100.5812089267932),
        LatLng(13.746358822133805, 100.53474308142322),
        LatLng(13.65, 100.536474308142322),
        LatLng(13.92, 100.536474308142322),
    ],
     strokeWidth: 5,
     fillColor: Colors.transparent,
  );
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(title: Text('Google Maps'),),
      body: Column(
        children: [
          // Row(
          //   children: [
          //   Expanded(child: TextFormField(
          //     controller: _searchController,
          //     textCapitalization:  TextCapitalization.words,
          //     decoration:  InputDecoration(hintText: 'Search by City'),
          //     onChanged: (value) {
          //       print(value);
          //       },
          //   ),),
          //   IconButton(
          //     onPressed: () {},
          //      icon: Icon(Icons.search),
          //      ),
          // ],),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              markers: {
               _kGooglePlexMarker,
                _kMallMarker 
               },
              polylines: {
                _kPolyline,
              },
              // polygons: {
              //   _kPolygon,
              // },
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the Mall!'),
        icon: Icon(Icons.directions_car),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kmall));
  }
}