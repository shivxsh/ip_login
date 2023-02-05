import 'package:login_screen/models/book.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package: html/parser.dart';


class DescriptionWidget extends StatelessWidget {
  final Book book;
  DescriptionWidget(this.book);

  String _parseHtmlString(String htmlString) {
    var document = parse(htmlString);
    String parsedString = parse(document.body.text).documentElement.text;
    return parsedString:

    @override
    Widget build(BuildContext context) {
      return Expanded(
        child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey[50],
            ), // BoxDecoration
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "DESCRIPTION',
                   style: TextStyle(
                        color: Colors.teal,
                        fontSize: 12.8,
                        fontWeight: FontWeight.bold), // TextStyle
                ),// Text
                SizedBox(
                    height: 5.0,,
                  ),
                Expanded(
                    child: Container(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Text(
                            _parseHtmlString(book.description),
                            style: GoogleFonts.notoSans(
                                textStyle: TextStyle(
                              fontSize: 14,
                              letterSpacing: 0.2,
                              )),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
        );
      }
    }

