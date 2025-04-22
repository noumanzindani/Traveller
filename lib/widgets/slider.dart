import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:traveller/view/homeview.dart';

class SlideToActWidget extends StatelessWidget {
  const SlideToActWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final GlobalKey<SlideActionState> key = GlobalKey();
        return Padding(
          padding:  EdgeInsets.all(8.0),
          child: SlideAction(
            text: "Slide To Book",
            // textStyle: TextStyle(fontWeight: FontWeight.w800),
            textColor: Colors.white,
            innerColor: Colors.white,
            outerColor: Colors.blue[900],
            sliderButtonIcon:  Icon(
              Icons.arrow_forward,
              color: Colors.blue[900],
            ),
            key: key,
            onSubmit: () {
              Future.delayed(
                const Duration(seconds: 1),
                () => key.currentState!.reset(),
              );
              return Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Homeview()
                ),
              );
            },
          ),
        );
      },
    );
  }
}