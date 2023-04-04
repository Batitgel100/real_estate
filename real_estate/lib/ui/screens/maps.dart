import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapss extends StatefulWidget {
  const Mapss({Key? key}) : super(key: key);

  @override
  State<Mapss> createState() => MapssState();
}

class MapssState extends State<Mapss> {
  final Map<String, Marker> _markers = {};
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  var currentLocation = const LatLng(47.921774, 106.924301);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: currentLocation,
            zoom: 17.4746,
          ),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            addMarkers('test', currentLocation);
          },
          markers: _markers.values.toSet(),
        ),
        const Reklam(),
      ],
    );
  }

  addMarkers(String id, LatLng location) async {
    final customIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(50, 50)),
        '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/say.png');
    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        infoWindow: const InfoWindow(title: 'sknf', snippet: 'sjfnskmjnvijeve'),
        icon: customIcon);
    _markers[id] = marker;
    setState(() {});
  }
}

class Reklam extends StatelessWidget {
  const Reklam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 110,
            width: 400,
            decoration: BoxDecoration(
                // image: const DecorationImage(
                //     image: AssetImage(
                //         '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/reklam.jpg'),
                //     fit: BoxFit.cover),
                color: Colors.black,
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ],
    );
  }
}
// class Mapss extends StatelessWidget {
//   const Mapss({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         const GoogleMap(
//             initialCameraPosition: CameraPosition(
//           target: LatLng(37.42796133580664, -122.085749655962),
//           zoom: 14.4746,
//         )),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Container(
//                 height: 110,
//                 width: 400,
//                 decoration: BoxDecoration(
//                     image: const DecorationImage(
//                         image: AssetImage(
//                             '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/reklam.jpg'),
//                         fit: BoxFit.cover),
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(12)),
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
