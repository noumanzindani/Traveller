import 'package:flutter/material.dart';
import 'package:traveller/model/trip.dart';
import 'package:traveller/widgets/recipittext.dart';

class Recipet extends StatelessWidget {
  final Trip trip;
  Recipet({required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(trip.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[900],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Booking Recipet",
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.15,
                          width: MediaQuery.sizeOf(context).width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(trip.image),),
                        Recipittext(title: " Location", to: trip.title),
                        Recipittext(title: " Duration", to: trip.days),
                        Recipittext(title: " Charges", to: trip.price),
                        Recipittext(title: " Date", to: "12-5-2025"),
                        Recipittext(title: " Paymet", to: "Cash"),
                        RichText(text: TextSpan(text: "Thank you for booking with us", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
