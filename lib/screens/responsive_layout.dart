import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant.dart';
import 'mobile_screen.dart';
import 'web_screen.dart';

class RespoonsiveLayout extends StatelessWidget {
  const RespoonsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > tabletSizeLayout) {
          return const WebScreen();
        }
        if (constraints.maxWidth < 665) {
          return Scaffold(
            body: Center(
              child: Text(
                "Use a computer or tablet please",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700, fontSize: 26),
              ),
            ),
          );
        }
        return const MobileScreen();
      },
    );
  }
}
