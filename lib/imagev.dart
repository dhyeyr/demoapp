// import 'package:flutter/material.dart';
// import 'package:photo_view/photo_view.dart';
// import 'package:photo_view/photo_view_gallery.dart';
//
//
// class ImageListScreen extends StatelessWidget {
//   final List<String> imageUrls = [
//     'https://superblog.supercdn.cloud/site_cuid_clr6oh1no0006rmr89yhkxgu8/images/various-sport-equipments-generative-ai-1706958639790-compressed.jpg',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeylQZiKG2IO7rv7_m5vMKKBeaVZRCQ458ZQETmleuMjVGVhbrG4A1FC8oy1Jq1nTnS48&usqp=CAU',
//     'https://img.freepik.com/premium-vector/sports-ball-art-vector-illustration-design_1221743-3744.jpg?semt=ais_hybrid',
//     'https://img.freepik.com/premium-photo/full-sports-equipmentcartoon-abstract-artai-generated_54006-4644.jpg?semt=ais_hybrid',
//     'https://img.freepik.com/premium-vector/sport-balls-isolated-icon-vector-illustration-design_24877-18651.jpg'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Horizontal Image List")),
//       body: Container(
//         margin: EdgeInsets.symmetric(vertical: 20.0),
//         height: 200.0,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: imageUrls.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ImageZoomScreen(
//                       imageUrls: imageUrls,
//                       initialIndex: index,
//                     ),
//                   ),
//                 );
//               },
//               child: Container(
//                 width: 160.0,
//                 margin: EdgeInsets.symmetric(horizontal: 10.0),
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: NetworkImage(imageUrls[index]),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class ImageZoomScreen extends StatefulWidget {
//   final List<String> imageUrls;
//   final int initialIndex;
//
//   ImageZoomScreen({required this.imageUrls, required this.initialIndex});
//
//   @override
//   _ImageZoomScreenState createState() => _ImageZoomScreenState();
// }
//
// class _ImageZoomScreenState extends State<ImageZoomScreen> {
//   late int currentIndex;
//
//   @override
//   void initState() {
//     super.initState();
//     currentIndex = widget.initialIndex;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: PhotoViewGallery.builder(
//         itemCount: widget.imageUrls.length,
//         pageController: PageController(initialPage: currentIndex),
//         onPageChanged: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//         builder: (context, index) {
//           return PhotoViewGalleryPageOptions(
//             imageProvider: NetworkImage(widget.imageUrls[index]),
//             minScale: PhotoViewComputedScale.contained * 0.8,
//             maxScale: PhotoViewComputedScale.covered * 2,
//           );
//         },
//         scrollPhysics: BouncingScrollPhysics(),
//         backgroundDecoration: BoxDecoration(color: Colors.black),
//       ),
//     );
//   }
// }
//
//
//


import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageListScreen(),
    );
  }
}

class ImageListScreen extends StatelessWidget {
  final List<String> imageUrls = [
    'https://superblog.supercdn.cloud/site_cuid_clr6oh1no0006rmr89yhkxgu8/images/various-sport-equipments-generative-ai-1706958639790-compressed.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeylQZiKG2IO7rv7_m5vMKKBeaVZRCQ458ZQETmleuMjVGVhbrG4A1FC8oy1Jq1nTnS48&usqp=CAU',
    'https://img.freepik.com/premium-vector/sports-ball-art-vector-illustration-design_1221743-3744.jpg?semt=ais_hybrid',
    'https://img.freepik.com/premium-photo/full-sports-equipmentcartoon-abstract-artai-generated_54006-4644.jpg?semt=ais_hybrid',
    'https://img.freepik.com/premium-vector/sport-balls-isolated-icon-vector-illustration-design_24877-18651.jpg'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Horizontal Image List")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 150.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullScreenImageViewer(
                          imageUrls: imageUrls,
                          initialIndex: index,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 120.0,
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            "Tap an image to view it in full screen",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class FullScreenImageViewer extends StatelessWidget {
  final List<String> imageUrls;
  final int initialIndex;

  FullScreenImageViewer({required this.imageUrls, required this.initialIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PhotoViewGallery.builder(
        itemCount: imageUrls.length,
        pageController: PageController(initialPage: initialIndex),
        onPageChanged: (index) {},
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(imageUrls[index]),
            minScale: PhotoViewComputedScale.contained * 0.8,
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration: BoxDecoration(color: Colors.black),
      ),
    );
  }
}
