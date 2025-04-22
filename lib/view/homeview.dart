import 'package:flutter/material.dart';
import 'package:traveller/widgets/triplist.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Travelers", style: TextStyle(fontWeight: FontWeight.w700,color:  Colors.blue[900],fontSize: MediaQuery.sizeOf(context).width*0.06),)),
        elevation: 2,
      ),
      body: Container(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Flexible(child: Triplist())],
        ),
      ),
    );
  }
}
