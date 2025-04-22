import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traveller/model/trip.dart';
import 'package:traveller/provider/favor.dart';
import 'package:traveller/widgets/slider.dart';

class Detailview extends StatelessWidget {
  final Trip trip;
  Detailview({required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(trip.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(
                  trip.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 350,
                ),
              ],
            ),
            SizedBox(height: 20),
            Consumer<TripProvider>(
              builder: (context, tripProvider, _) {
                final isFavorite = tripProvider.isFavorite(trip.id);
                return ListTile(
                  title: Text(
                    trip.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      fontSize: 30,
                    ),
                  ),
                  subtitle: Text(
                    trip.days,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      fontSize: 20,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      tripProvider.toggleFavorite(trip.id);
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: trip.details,
                  style: TextStyle(color: Colors.blue[900], fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 12),
            SlideToActWidget(),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:travelers/model/trip.dart';
// import 'package:travelers/widgets/slider.dart';

// class Detailview extends StatelessWidget {
//   final Trip trip;
//   Detailview({required this.trip});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: Text(trip.title),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             /// Wrap in a Stack for layering AppBar and Image
//             Stack(
//               children: [
//                 /// Full image behind the app bar
//                 Image.asset(
//                   trip.image,
//                   fit: BoxFit.cover,
//                   width: double.infinity,
//                   height: 350,
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ListTile(
//               title: Text(
//                 trip.title,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[500],
//                   fontSize: 30,
//                 ),
//               ),
//               subtitle: Text(
//                 trip.days,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[500],
//                   fontSize: 20,
//                 ),
//               ),
//               trailing: Icon(Icons.favorite, color: Colors.red),
//             ),
//             SizedBox(height: 12),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                   text: trip.details,
//                   style: TextStyle(color: Colors.grey[500], fontSize: 20),
//                 ),
//               ),

//             ),
//               SlideToActWidget(
             
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:travelers/model/trip.dart';

// class Detailview extends StatelessWidget {
//   final Trip trip;
//   Detailview({required this.trip});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(trip.title),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       extendBodyBehindAppBar: true,
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             ClipRRect(
//               child: Image.asset(
//                 trip.image,
//                 fit: BoxFit.cover,
//                 alignment: Alignment.topCenter,
//                 height: 300,
//               ),
//             ),
//             SizedBox(height: 20),
//             ListTile(
//               title: Text(
//                 trip.title,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[500],
//                   fontSize: 30,
//                 ),
//               ),
//               subtitle: Text(
//                 trip.days,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[500],
//                   fontSize: 20,
//                 ),
//               ),
//               trailing: Icon(Icons.favorite, color: Colors.red),
//             ),
//             SizedBox(height: 12),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                   text: trip.details,
//                   style: TextStyle(color: Colors.grey[500], fontSize: 20),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
