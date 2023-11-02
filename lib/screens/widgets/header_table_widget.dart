import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTableWidget extends StatelessWidget {
  const HeaderTableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
          activeColor: Colors.grey,
          checkColor: Colors.grey,
        ),
        Text(
          'To/From',
          style: GoogleFonts.nunito(fontSize: 14, color: Colors.grey),
        ),
        Text(
          'Date',
          style: GoogleFonts.nunito(fontSize: 14, color: Colors.grey),
        ),
        Text(
          'Description',
          style: GoogleFonts.nunito(fontSize: 14, color: Colors.grey),
        ),
        Text(
          'Amount',
          style: GoogleFonts.nunito(fontSize: 14, color: Colors.grey),
        ),
        Text(
          'Status',
          style: GoogleFonts.nunito(fontSize: 14, color: Colors.grey),
        ),
        Text(
          'Action',
          style: GoogleFonts.nunito(fontSize: 14, color: Colors.grey),
        )
      ],
    );
  }
}
