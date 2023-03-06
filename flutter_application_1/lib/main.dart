import 'package:flutter/material.dart';
import 'package:flutter_application_1/loja_virtual.dart';

// import 'package:flutter_application_1/orientacao.dart';
// import 'package:flutter_application_1/responsividadeWrap.dart';
// import 'package:flutter_application_1/responsividade_media_query.dart';
// import 'package:flutter_application_1/responsividade_row_col.dart';

void main() {
  runApp(const MaterialApp(
    title: "Flutter Web",
    debugShowCheckedModeBanner: false,
    // home: ResponsividadeMediaQuey(),
    // home: ResponsividadeRowCol(),
    // home: ResponsividadeWrap(),
    // home: Orientacao(),
    home: LojaVirtual(),
  ));
}
