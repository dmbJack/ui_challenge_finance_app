import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/chart.dart';
import '../utils/constant.dart';
import 'components/menu_component.dart';
import 'widgets/header_table_widget.dart';
import 'widgets/state_card.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: backgroundGreyColor,
          child: const MenuBars(),
        ),
        appBar: AppBar(
          actions: [
            AnimSearchBar(
                width: MediaQuery.of(context).size.width * 0.4,
                textController: searchController,
                onSuffixTap: () {},
                onSubmitted: (value) {}),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: backgroundGreyColor,
                  borderRadius: BorderRadius.circular(12)),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),
            ),
          ],
          title: Row(
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
        ),
        body: Container(
          decoration: BoxDecoration(
              color: backgroundGreyColor,
              border: Border(
                  left: BorderSide(
                      color: Colors.black.withOpacity(0.1), width: 1))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 300,
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(imageUser),
                      radius: 18,
                    ),
                    title: Text(
                      "Moussa Doumbia",
                      style: GoogleFonts.nunito(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "dmbmoussa1@gmail.com",
                      style: GoogleFonts.nunito(),
                    ),
                  )),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   height: 80,
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       border: Border(
              //           bottom: BorderSide(
              //               color: Colors.black.withOpacity(0.1), width: 1))),
              //   child: Row(
              //     children: [
              //       AutoSizeText(
              //         "Dashboard",
              //         minFontSize: 18,
              //         maxFontSize: 26,
              //         style: GoogleFonts.nunito(
              //             fontSize: MediaQuery.of(context).size.width * 0.015,
              //             fontWeight: FontWeight.w600),
              //       ),
              //       Flexible(flex: 3, child: Container()),
              //       Container(
              //         height: 35,
              //         width: 200,
              //         decoration: BoxDecoration(
              //             color: backgroundGreyColor,
              //             borderRadius: BorderRadius.circular(12)),
              //         child: TextField(
              //             style: GoogleFonts.nunito(),
              //             decoration: InputDecoration(
              //               border: InputBorder.none,
              //               prefixIcon: const Icon(
              //                 Icons.search,
              //                 color: Colors.grey,
              //                 size: 20,
              //               ),
              //               hintText: "Search Hero",
              //               hintStyle: GoogleFonts.nunito(
              //                   color: Colors.grey, fontSize: 15),
              //             )),
              //       ),
              //       SizedBox(
              //         width: 5,
              //       ),
              //       const badge.Badge(
              //         badgeStyle: badge.BadgeStyle(
              //           padding: EdgeInsets.all(2),
              //           borderRadius: BorderRadius.all(Radius.circular(50)),
              //           shape: badge.BadgeShape.square,
              //         ),
              //         badgeContent: Text(
              //           "13",
              //           style: TextStyle(
              //               fontSize: 8,
              //               color: Colors.white,
              //               fontWeight: FontWeight.w600),
              //         ),
              //         child: Icon(
              //           Icons.notifications,
              //           size: 20,
              //         ),
              //       ),
              //       Flexible(flex: 1, child: Container()),
              //       SizedBox(
              //           width: 300,
              //           child: ListTile(
              //             leading: const CircleAvatar(
              //               backgroundImage: AssetImage(imageUser),
              //               radius: 18,
              //             ),
              //             title: Text(
              //               "Moussa Doumbia",
              //               style: GoogleFonts.nunito(fontWeight: FontWeight.w600),
              //             ),
              //             subtitle: Text(
              //               "dmbmoussa1@gmail.com",
              //               style: GoogleFonts.nunito(),
              //             ),
              //           ))
              //     ],
              //   ),
              // ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // padding: const EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        AutoSizeText(
                          "Overview",
                          minFontSize: 24,
                          maxFontSize: 36,
                          style: GoogleFonts.nunito(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.017,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              StateCard(
                                titleIcon: CupertinoIcons.money_dollar_circle,
                                title: 'Earnings',
                                amount: '928.42',
                                stateAmount: '12.8',
                                differenceAmount: '118.8',
                                isStateUp: true,
                              ),
                              StateCard(
                                titleIcon: Icons.shopping_cart_outlined,
                                title: 'Spendings',
                                amount: '169.43',
                                stateAmount: '3.1',
                                differenceAmount: '5.2',
                                isStateUp: false,
                              ),
                              StateCard(
                                titleIcon: Icons.savings_outlined,
                                title: 'Savings',
                                amount: '406.27',
                                stateAmount: '8.2',
                                differenceAmount: '33.3',
                                isStateUp: true,
                              ),
                              StateCard(
                                titleIcon: Icons.savings_outlined,
                                title: 'Investment',
                                amount: '1,854.08',
                                stateAmount: '78.5',
                                differenceAmount: '78.5',
                                isStateUp: true,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 320,
                              width: MediaQuery.of(context).size.width * 1,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Statistics",
                                        style: GoogleFonts.nunito(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Spacer(),
                                      SizedBox(
                                        width: 90,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                color: bluecolor,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              'Earnings',
                                              style: GoogleFonts.nunito(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 90,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                color: grapheBlueColor,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              'Spendings',
                                              style: GoogleFonts.nunito(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14),
                                            )
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: 80,
                                          height: 40,
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: backgroundGreyColor,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Yearly",
                                                style: GoogleFonts.nunito(
                                                    fontSize: 12),
                                              ),
                                              const Icon(Icons
                                                  .keyboard_arrow_down_rounded)
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: BarChart(BarChartData(
                                        maxY: 1000,
                                        minY: 0,
                                        titlesData: FlTitlesData(
                                            rightTitles: AxisTitles(sideTitles:
                                                SideTitles(getTitlesWidget:
                                                    (double value, meta) {
                                              String text = "";

                                              return Text(
                                                text,
                                                style: GoogleFonts.nunito(
                                                    color: Colors.grey),
                                              );
                                            })),
                                            topTitles: AxisTitles(sideTitles:
                                                SideTitles(getTitlesWidget:
                                                    (double value, meta) {
                                              String text = "";

                                              return Text(
                                                text,
                                                style: GoogleFonts.nunito(
                                                    color: Colors.grey),
                                              );
                                            })),
                                            show: true,
                                            bottomTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                  getTitlesWidget:
                                                      (value, meta) {
                                                    String text = "";
                                                    switch (value.toInt()) {
                                                      case 0:
                                                        text = "Jan";
                                                        break;
                                                      case 1:
                                                        text = "Feb";
                                                        break;
                                                      case 2:
                                                        text = "Mar";
                                                        break;
                                                      case 3:
                                                        text = "Apr";
                                                        break;
                                                      case 4:
                                                        text = "May";
                                                        break;
                                                      case 5:
                                                        text = "Jun";
                                                        break;
                                                    }
                                                    return Text(
                                                      text,
                                                      style: GoogleFonts.nunito(
                                                          color: Colors.grey),
                                                    );
                                                  },
                                                  showTitles: true,
                                                  reservedSize: 30),
                                            )),
                                        barGroups: BarData.data
                                            .map((e) => BarChartGroupData(
                                                    x: e.x,
                                                    barRods: [
                                                      BarChartRodData(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          toY: e.y.earned,
                                                          width: 20,
                                                          color: bluecolor),
                                                      BarChartRodData(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          toY: e.y.spent,
                                                          width: 20,
                                                          color:
                                                              grapheBlueColor)
                                                    ]))
                                            .toList(),
                                        barTouchData: BarTouchData(
                                          touchTooltipData: BarTouchTooltipData(
                                            tooltipBgColor: Colors.transparent,
                                            tooltipPadding:
                                                const EdgeInsets.all(0),
                                            tooltipMargin: 8,
                                          ),
                                        ))),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 320,
                              padding: const EdgeInsets.all(10),
                              // constraints: const BoxConstraints(minWidth: 350),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Total Savings',
                                        style: GoogleFonts.nunito(
                                            fontSize: 20, color: Colors.grey),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.keyboard_control_rounded))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '\$406.27',
                                        style: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.green.withOpacity(0.3),
                                        ),
                                        child: Row(
                                          children: [
                                            const Icon(FontAwesomeIcons.arrowUp,
                                                size: 8, color: Colors.green),
                                            Text(
                                              "+\$8.5%",
                                              style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Text.rich(TextSpan(
                                      style: GoogleFonts.nunito(
                                          color: Colors.green,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      text: "+\$33.3",
                                      children: [
                                        TextSpan(
                                            text: " Than last month",
                                            style: GoogleFonts.nunito(
                                                fontSize: 9,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500))
                                      ])),
                                  const Divider(),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Dream Studio",
                                        style: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14),
                                      ),
                                      const Spacer(),
                                      RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.nunito(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 14),
                                              children: [
                                            const TextSpan(
                                              text: "\$251.9",
                                            ),
                                            TextSpan(
                                                text: "/\$750",
                                                style: GoogleFonts.nunito(
                                                    color: Colors.grey))
                                          ]))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Stack(children: [
                                    Container(
                                      height: 5,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    Container(
                                      height: 5,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          color: bluecolor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ]),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Education",
                                        style: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14),
                                      ),
                                      const Spacer(),
                                      RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.nunito(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 14),
                                              children: [
                                            const TextSpan(
                                              text: "\$166.8",
                                            ),
                                            TextSpan(
                                                text: "/\$200",
                                                style: GoogleFonts.nunito(
                                                    color: Colors.grey))
                                          ]))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Stack(children: [
                                    Container(
                                      height: 9,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    Container(
                                      height: 9,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      decoration: BoxDecoration(
                                          color: bluecolor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ]),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Health Care",
                                        style: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14),
                                      ),
                                      const Spacer(),
                                      RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.nunito(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 14),
                                              children: [
                                            const TextSpan(
                                              text: "\$30.8",
                                            ),
                                            TextSpan(
                                                text: "/\$150",
                                                style: GoogleFonts.nunito(
                                                    color: Colors.grey))
                                          ]))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Stack(children: [
                                    Container(
                                      height: 5,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    Container(
                                      height: 5,
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      decoration: BoxDecoration(
                                          color: bluecolor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ])
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Lastest Transactions',
                                      style: GoogleFonts.nunito(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const Spacer(),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "View All",
                                          style: GoogleFonts.nunito(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.blueAccent),
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const HeaderTableWidget(),
                                const Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (value) {},
                                      activeColor: Colors.grey,
                                    ),
                                    SizedBox(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Icon(
                                              Icons.send_to_mobile_outlined),
                                          Text(
                                            'Elevate Agency',
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w800),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '2 oct 2023',
                                      style: GoogleFonts.nunito(
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      'Monthly salary',
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      '-\$1,500.0',
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.green),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.green),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        'Success',
                                        style: GoogleFonts.nunito(
                                            color: Colors.green),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.link,
                                                color: Colors.grey,
                                              )),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.delete,
                                                color: Colors.grey,
                                              )),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.keyboard_control_outlined,
                                                color: Colors.grey,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (value) {},
                                      activeColor: Colors.grey,
                                    ),
                                    SizedBox(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Icon(
                                              Icons.send_to_mobile_outlined),
                                          Text(
                                            'Elevate Agency',
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w800),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '1 oct 2023',
                                      style: GoogleFonts.nunito(
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      'Monthly salary',
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      '-\$1,900.0',
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.green),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.green),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        'Success',
                                        style: GoogleFonts.nunito(
                                            color: Colors.green),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.link,
                                                color: Colors.grey,
                                              )),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.delete,
                                                color: Colors.grey,
                                              )),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.keyboard_control_outlined,
                                                color: Colors.grey,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
