import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello, World!, isn't it cool?",
          style: GoogleFonts.leckerliOne(fontSize: 40),
        ),
        Text(
          'Text is easy to wrap ',
          style: Theme.of(context).textTheme.headline6,
          ),
        Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mauris massa. Suspendisse potenti. Aenean aliquet eu nisl vitae tempus.'),

        Divider(),
        RichText(text: TextSpan(
          text: 'Text in Flutter is  ',
          style: TextStyle(fontSize: 22, color: Colors.black),
          children: <TextSpan> [
            TextSpan(
              text: 'really',
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.red, ),
              children: [
                TextSpan(
                  text: ' great',
                  style: TextStyle(
                    fontSize: 40, 
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    )
                )
              ]  ,
            )
            
          ],
        ),),
      ],
    );
  }
}