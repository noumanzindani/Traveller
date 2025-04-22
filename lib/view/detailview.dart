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
            SlideToActWidget(trip: trip,),
          ],
        ),
      ),
    );
  }
}

