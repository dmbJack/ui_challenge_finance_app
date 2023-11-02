import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constant.dart';
import '../widgets/menu_item_widget.dart';
import 'package:badges/badges.dart' as badge;

class MenuBars extends StatelessWidget {
  const MenuBars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      constraints: const BoxConstraints(minWidth: 230, maxWidth: 450),
      child: Align(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  logoIcon,
                  width: MediaQuery.of(context).size.width * 0.040,
                ),
                AutoSizeText(
                  "CloudFinance",
                  minFontSize: 20,
                  maxFontSize: 32,
                  style: GoogleFonts.nunito(
                      fontSize: MediaQuery.of(context).size.width * 0.017,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'MENU',
              style:
                  GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
            MenuItem(
              onTap: () {},
              title: "Dashboard",
              isSelected: true,
              icon: Icons.grid_view_rounded,
            ),
            MenuItem(
                onTap: () {},
                title: "Statistics",
                icon: Icons.assessment_rounded),
            MenuItem(
              onTap: () {},
              title: "Savings",
              icon: Icons.account_balance_wallet_rounded,
            ),
            MenuItem(
              onTap: () {},
              title: "Portfolios",
              icon: Icons.donut_small_rounded,
              traillingWidget: const Icon(
                Icons.expand_more_rounded,
                size: 30,
              ),
            ),
            MenuItem(
              onTap: () {},
              title: "Messages",
              icon: Icons.email_rounded,
              traillingWidget: badge.Badge(
                badgeStyle: const badge.BadgeStyle(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  shape: badge.BadgeShape.square,
                ),
                badgeContent: Text(
                  "13",
                  style: GoogleFonts.nunito(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            MenuItem(
              onTap: () {},
              title: "Transactions",
              icon: Icons.list_alt_rounded,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'GENERAL',
              style:
                  GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            MenuItem(
              onTap: () {},
              title: "Settings",
              icon: Icons.settings_rounded,
            ),
            MenuItem(
              onTap: () {},
              title: "Appearances",
              icon: Icons.color_lens_rounded,
            ),
            MenuItem(
              onTap: () {},
              title: "Need Help?",
              icon: Icons.help_rounded,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            Row(children: [
              const Icon(
                Icons.logout_rounded,
                size: 30,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "Log Out",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold, fontSize: 20),
              )
            ]),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
