import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constant.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final IconData icon;
  final Widget? traillingWidget;
  final void Function()? onTap;
  const MenuItem({
    Key? key,
    required this.title,
    this.isSelected = false,
    required this.icon,
    this.traillingWidget,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        trailing: traillingWidget,
        textColor: Colors.grey,
        iconColor: Colors.grey,
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        selected: isSelected,
        selectedTileColor: bluecolor,
        title: Text(
          title,
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        hoverColor: bluecolor.withOpacity(0.4),
        leading: Icon(
          icon,
          // color: isSelected ? Colors.white : Colors.grey,
          size: 26,
        ),
        selectedColor: textColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
