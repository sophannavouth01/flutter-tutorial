// import 'package:flutter/material.dart';
// import 'package:toturial/components/daimond_tile.dart';
// import 'package:toturial/models/daimond.dart';

// class ShopPage extends StatefulWidget {
//   const ShopPage({super.key});

//   @override
//   State<ShopPage> createState() => _ShopPageState();
// }

// class _ShopPageState extends State<ShopPage> {
//   @override
//   Widget build(BuildContext context) {
//     var colors = Colors;
//     return Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(12),
//           margin: const EdgeInsets.symmetric(horizontal: 25),
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: const Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "search",
//                 style: TextStyle(color: Colors.grey),
//               ),
//               Icon(
//                 Icons.search,
//                 color: Colors.grey,
//               )
//             ],
//           ),
//         ),
//         const Padding(
//           padding: EdgeInsets.symmetric(vertical: 25.0),
//           child: Text(
//             "everyone flies.. some fly longer than others",
//             style: TextStyle(color: Color.fromARGB(255, 97, 97, 97)),
//           ),
//         ),
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal:25.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 "hot picks 🔥🔥🔥 ",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//               ),
//               Text("See all",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue 
//               ),
//               )
//             ],
//           ),
//         ),

 
//         const SizedBox(height: 10),
//           Expanded(child: ListView.builder(
//             itemBuilder: (context,index){
//             //create Daimond
//             Daimond daimond =  Daimond(name: "Daimond natural", price: "239900", imagePath: "lib/images/img5.jpg", description: "Daimond");
//             return DaimondTile(
//               daimnond: daimond,
//             ); 
//           }
//           )
//           )
//       ],
//     );
//   }
// }
            