import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const showGrid = true; // Set to false to show ListView

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      // home: buildHomePage('Strawberry Pavlova Recipe'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: _buildCard(),
        // 5번 빌드 그리드 할 경우 (의미는 모르겠따)
        // body: Center(child: showGrid ? _buildCard() : _buildStack()),
      ),
    );
  }

//   Widget buildHomePage(String title) {
//     const titleText = Padding(
//       padding: EdgeInsets.all(20),
//       child: Text(
//         '메인 타이틀 작성',
//         style: TextStyle(
//           fontWeight: FontWeight.w800,
//           letterSpacing: 0.5,
//           fontSize: 30,
//         ),
//       ),
//     );

//     const subTitle = Text(
//       '서브타이틀 작성',
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         fontFamily: 'Georgia',
//         fontSize: 25,
//       ),
//     );

//     // #docregion ratings, stars
//     var stars = Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         const Icon(Icons.star, color: Colors.black),
//         const Icon(Icons.star, color: Colors.black),
//       ],
//     );
//     // #enddocregion stars

//     final ratings = Container(
//       padding: const EdgeInsets.all(20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           stars,
//           const Text(
//             '170 Reviews',
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.w800,
//               fontFamily: 'Roboto',
//               letterSpacing: 0.5,
//               fontSize: 20,
//             ),
//           ),
//         ],
//       ),
//     );
//     // #enddocregion ratings

//     // #docregion iconList
//     const descTextStyle = TextStyle(
//       color: Colors.black,
//       fontWeight: FontWeight.w800,
//       fontFamily: 'Roboto',
//       letterSpacing: 0.5,
//       fontSize: 18,
//       height: 2,
//     );

//     // DefaultTextStyle.merge() allows you to create a default text
//     // style that is inherited by its child and all subsequent children.
//     final iconList = DefaultTextStyle.merge(
//       style: descTextStyle,
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 Icon(Icons.kitchen, color: Colors.green[500]),
//                 const Text('PREP:'),
//                 const Text('25 min'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.timer, color: Colors.green[500]),
//                 const Text('COOK:'),
//                 const Text('1 hr'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.restaurant, color: Colors.green[500]),
//                 const Text('FEEDS:'),
//                 const Text('4-6'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//     // #enddocregion iconList

//     // #docregion leftColumn
//     final leftColumn = Container(
//       padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
//       child: Column(
//         children: [
//           titleText,
//           subTitle,
//           ratings,
//           iconList,
//         ],
//       ),
//     );
//     // #enddocregion leftColumn

//     final mainImage = Image.asset(
//       'images/pavlova.jpg',
//       fit: BoxFit.cover,
//     );

//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       // #docregion body
//       body: Center(
//         child: Container(
//           margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
//           height: 600,
//           child: Card(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 440,
//                   child: leftColumn,
//                 ),
//                 mainImage,
//               ],
//             ),
//           ),
//         ),
//       ),
//       // #enddocregion body
//     );
//   }
// }

// // 이미지 4개 가로세로 만들기
//   Widget _buildImageColumn() {
//     return Container(
//       decoration: const BoxDecoration(
//         color: Colors.black26,
//       ),
//       child: Column(
//         children: [
//           _buildImageRow(1),
//           _buildImageRow(3),
//         ],
//       ),
//     );
//   }
//   // #enddocregion column

//   // 4.1 이미지 가로 추가
//   Widget _buildDecoratedImage(int imageIndex) => Expanded(
//         child: Container(
//           decoration: BoxDecoration(
//             border: Border.all(width: 10, color: Colors.black38),
//             borderRadius: const BorderRadius.all(Radius.circular(8)),
//           ),
//           margin: const EdgeInsets.all(4),
//           // 이미지 추가 될 때 마다 pubspec에 추가해주기
//           child: Image.asset('images/pic$imageIndex.jpg'),
//         ),
//       );

// // 4.2 이미지 가로 추가
//   Widget _buildImageRow(int imageIndex) => Row(
//         children: [
//           _buildDecoratedImage(imageIndex),
//           _buildDecoratedImage(imageIndex + 1),
//         ],
//       );

// // 5.1 빌드그리드 ()
//   Widget _buildGrid() => GridView.extent(
//       maxCrossAxisExtent: 150,
//       padding: const EdgeInsets.all(4),
//       mainAxisSpacing: 4,
//       crossAxisSpacing: 4,
//       children: _buildGridTileList(5));

// // 5.2 빌드그리드
// //The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// //The List.generate() constructor allows an easy way to create
// //a list when objects have a predictable naming pattern.
//   List<Container> _buildGridTileList(int count) => List.generate(
//       count, (i) => Container(child: Image.asset('images/pic$i.jpg')));

// // 5.3 빌드리스트
//   Widget _buildList() {
//     return ListView(
//       children: [
//         _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
//         _tile('The Castro Theater', '429 Castro St', Icons.theaters),
//         _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
//         _tile('Roxie Theater', '3117 16th St', Icons.theaters),
//         _tile('United Artists Stonestown Twin', '501 Buckingham Way',
//             Icons.theaters),
//         _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
//         const Divider(),
//         _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
//         _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
//         _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
//         _tile('La Ciccia', '291 30th St', Icons.restaurant),
//       ],
//     );
//   }

// //5.4 빌드타일
//   ListTile _tile(String title, String subtitle, IconData icon) {
//     return ListTile(
//       title: Text(title,
//           style: const TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 20,
//           )),
//       subtitle: Text(subtitle),
//       leading: Icon(
//         icon,
//         color: Colors.blue[500],
//       ),
//     );
//   }

//  // 6.빌드스택 (사진 속 텍스트 넣기)
  // Widget _buildStack() {
  //   return Stack(
  //     alignment: const Alignment(0.6, 0.6),
  //     children: [
  //       const CircleAvatar(
  //         backgroundImage: AssetImage('images/pic1.jpg'),
  //         radius: 100,
  //       ),
  //       Container(
  //         decoration: const BoxDecoration(
  //           color: Colors.black45,
  //         ),
  //         child: const Text(
  //           'Mia B',
  //           style: TextStyle(
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold,
  //             color: Colors.white,
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // 7. 카드
  Widget _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                '1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text('costa@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
