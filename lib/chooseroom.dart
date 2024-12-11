// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class ChooseRoom extends StatefulWidget {
//   final VoidCallback AddRoom;
//   const ChooseRoom({
//     Key? key,
//     required this.AddRoom,
//   }) : super(key: key);
//
//   @override
//   _ChooseRoomState createState() => _ChooseRoomState();
// }
//
// class _ChooseRoomState extends State<ChooseRoom> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       child: Container(
//         height: 440,
//         decoration: BoxDecoration(
//           color: Colors.grey[850],
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const Center(
//                 child: Padding(
//                   padding: EdgeInsets.only(top: 10),
//                   child: Text(
//                     "Choose Room",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 45,
//                     ),
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Divider(),
//               ),
//               const SizedBox(height: 15),
//               OutlinedButton(
//                 onPressed: () {
//                   _addroom(Icons.bedroom_parent);
//                   Navigator.of(context).pop();
//                 },
//                 style: OutlinedButton.styleFrom(
//                   side: BorderSide(color: Colors.grey[850]!),
//                 ),
//                 child: const Row(
//                   children: [
//                     Icon(Icons.bedroom_parent, size: 30, color: Colors.white),
//                     SizedBox(width: 70),
//                     Text(
//                       'Bedroom',
//                       style: TextStyle(
//                         fontSize: 25,
//                         color: Colors.white,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 15),
//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Divider(),
//               ),
//               const SizedBox(height: 15),
//               OutlinedButton(
//                 onPressed: () {
//                   _addroom(Icons.bathroom);
//                   Navigator.of(context).pop();
//                 },
//                 style: OutlinedButton.styleFrom(
//                   side: BorderSide(color: Colors.grey[850]!),
//                 ),
//                 child: const Row(
//                   children: [
//                     Icon(Icons.bathroom, size: 30, color: Colors.white),
//                     SizedBox(width: 70),
//                     Text(
//                       'Bathroom',
//                       style: TextStyle(
//                         fontSize: 25,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 15),
//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Divider(),
//               ),
//               const SizedBox(height: 15),
//               OutlinedButton(
//                 onPressed: () {
//                   _addroom(Icons.living);
//                   Navigator.of(context).pop();
//                 },
//                 style: OutlinedButton.styleFrom(
//                   side: BorderSide(color: Colors.grey[850]!),
//                 ),
//                 child: const Row(
//                   children: [
//                     Icon(Icons.living, size: 30, color: Colors.white),
//                     SizedBox(width: 70),
//                     Text(
//                       'Living Room',
//                       style: TextStyle(
//                         fontSize: 25,
//                         color: Colors.white,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
