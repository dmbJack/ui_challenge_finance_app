import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class StateCard extends StatelessWidget {
  final IconData titleIcon;
  final String title;
  final String amount;
  final String stateAmount;
  final String differenceAmount;
  final bool isStateUp;
  const StateCard({
    Key? key,
    required this.titleIcon,
    required this.title,
    required this.amount,
    required this.stateAmount,
    required this.isStateUp,
    required this.differenceAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color stateColor = isStateUp ? Colors.green : Colors.red;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 15),
      width: MediaQuery.of(context).size.width * 0.2,
      constraints: const BoxConstraints(minWidth: 200, maxWidth: 220),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                titleIcon,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800, color: Colors.grey),
              )
            ],
          ),
          Flexible(flex: 2, child: Container()),
          Row(
            children: [
              Text(
                '\$$amount',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700, fontSize: 20),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: stateColor.withOpacity(0.3),
                ),
                child: Row(
                  children: [
                    Icon(
                        isStateUp
                            ? FontAwesomeIcons.arrowUp
                            : FontAwesomeIcons.arrowDown,
                        size: 8,
                        color: stateColor),
                    Text(
                      "${isStateUp ? "+" : "-"}$stateAmount%",
                      style: GoogleFonts.nunito(
                          fontSize: 8,
                          color: stateColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          Flexible(flex: 1, child: Container()),
          Text.rich(TextSpan(
              style: GoogleFonts.nunito(
                  color: stateColor, fontSize: 10, fontWeight: FontWeight.bold),
              text: "+\$$differenceAmount",
              children: [
                TextSpan(
                    text: " Than last month",
                    style: GoogleFonts.nunito(
                        fontSize: 9,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500))
              ]))
        ],
      ),
    );
  }
}
