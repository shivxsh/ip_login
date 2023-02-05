import 'package:flutter/material.dart';
import 'package:login_screen/services/utils.dart';
import 'package:login_screen/models/book.dart';
import 'package:google_fonts/google_fonts.dart';


class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, this.book}) : super(key: key);
  final Book book;
  TitleWidget(this.book);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          FittedBox(
              child: Text(
                Utils.trimString (book.title, 50),
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0)),
            ),
          ),

          if (book.subtitle != null)
            Text(
              Utils.trimString (book.subtitle, 40),
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat (textStyle: TextStyle (fontSize: 12.0)),
          ),
        ],
      ),
    );
  }
}
