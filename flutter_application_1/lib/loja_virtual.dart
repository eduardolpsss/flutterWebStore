import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/mobile_app_bar.dart';
import 'package:flutter_application_1/widget/products.dart';
import 'package:flutter_application_1/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _fixProductView(double screenWidth) {
    int col = 3;

    if (screenWidth <= 600) {
      col = 2;
    } else if (screenWidth <= 960) {
      col = 4;
    } else {
      col = 6;
    }

    return col;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var maxWidth = constraint.maxWidth;
      var appBarrHeight = AppBar().preferredSize.height;
      return Scaffold(
        appBar: (maxWidth < 600
            ? PreferredSize(
                preferredSize: Size(maxWidth, appBarrHeight),
                child: const MobileAppBar())
            : PreferredSize(
                preferredSize: Size(maxWidth, appBarrHeight),
                child: const WebAppBar())),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _fixProductView(maxWidth),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              Products('Kit Multimídia', '1.500,00', 'p1.jpg'),
              Products('Pneu Goodyear aro 15', '365,00', 'p2.jpg'),
              Products('Redmi Note 9', '2.900,00', 'p3.jpg'),
              Products('iPhone 11', '3.500,00', 'p4.jpg'),
              Products('Samsung', '1.980,00', 'p5.jpg'),
              Products('iPhone 8', '2.000,00', 'p6.jpg'),
            ],
          ),
        ),
      );
    });
  }
}
