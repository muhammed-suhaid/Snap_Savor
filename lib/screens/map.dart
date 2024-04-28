import 'package:flutter/material.dart';
//import 'package:snap_savor/models/place.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
    // this.location = const PlaceLocation(
    //   latitude: 37.422,
    //   longitude: -122.084,
    //   address: '',
    // ),
    this.isSelecting = true,
  });

  //final PlaceLocation location;
  final bool isSelecting;

  @override
  State<MapScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MapScreen> {
//LatLng? _pickedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.isSelecting ? 'Pick your Location' : 'Your Location'),
        actions: [
          if (widget.isSelecting)
            IconButton(
              onPressed: () {
                // Navigator.of(context).pop(_pickedLocation);
              },
              icon: const Icon(Icons.save),
            ),
        ],
      ),
      ////////// ***** You have to instal google map packge and you want the google map api ***** /////////
      // body: GoogleMap(
      //   onTap : !widget.isSelecting
      //       ? null
      //       : (position){
      //           setState({
      //             _pickedLocation=position;
      //           });
      //         },
      //   initialCameraPosition: CameraPosition(
      //     target: latlng(
      //       widget.location.latitude,
      //       widget.location.longitude,
      //     ),
      //     zoom: 16,
      //   ),
      //   markers: (_pickedLocation == null && widget.isSelecting) ? {} : {
      //     Marker(
      //       markerId: const MarkerId('m1'),
      //       position: _pickedLocation ??  LatLng(
      //               widget.location.latitude,
      //               widget.location.longitude,
      //             ),
      //     ),
      //   },
      // ),
      body: Center(
          child: Text(
        'This Feature not available now', 
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      )),
    );
  }
}
