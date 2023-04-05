// import 'package:flutter/material.dart';

// import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'package:custom_info_window/custom_info_window.dart';

// class CustomInfoWindowExample extends StatefulWidget {
//   const CustomInfoWindowExample({super.key});

//   @override
//   _CustomInfoWindowExampleState createState() =>
//       _CustomInfoWindowExampleState();
// }

// class _CustomInfoWindowExampleState extends State<CustomInfoWindowExample> {
//   final CustomInfoWindowController _customInfoWindowController =
//       CustomInfoWindowController();

//   final double _zoom = 17.0;
//   var currentLocation = const LatLng(47.921774, 106.924301);

//   @override
//   void dispose() {
//     _customInfoWindowController.dispose();
//     super.dispose();
//   }

//   final Set<Marker> _markers = {};

//   @override
//   Widget build(BuildContext context) {
//     _markers.add(
//       Marker(
//         markerId: const MarkerId("marker_id"),
//         position: currentLocation,
//         onTap: () {
//           _customInfoWindowController.addInfoWindow!(
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               color: Colors.black,
//               height: MediaQuery.of(context).size.height * 0.2,
//               width: MediaQuery.of(context).size.height * 0.22,
//             ),
//             currentLocation,
//           );
//         },
//       ),
//     );
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           GoogleMap(
//             onTap: (position) {
//               _customInfoWindowController.hideInfoWindow!();
//             },
//             onCameraMove: (position) {
//               _customInfoWindowController.onCameraMove!();
//             },
//             onMapCreated: (GoogleMapController controller) async {
//               _customInfoWindowController.googleMapController = controller;
//             },
//             markers: _markers,
//             initialCameraPosition: CameraPosition(
//               target: currentLocation,
//               zoom: _zoom,
//             ),
//           ),
//           const Reklam(),
//           CustomInfoWindow(
//             controller: _customInfoWindowController,
//             height: MediaQuery.of(context).size.height * 0.2,
//             width: MediaQuery.of(context).size.height * 0.22,
//             offset: 50,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Reklam extends StatelessWidget {
//   const Reklam({
//     Key? key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Container(
//             height: 110,
//             width: 400,
//             decoration: BoxDecoration(
//                 image: const DecorationImage(
//                     image: AssetImage(
//                         '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/reklam.jpg'),
//                     fit: BoxFit.cover),
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ],
//     );
//   }
// }
