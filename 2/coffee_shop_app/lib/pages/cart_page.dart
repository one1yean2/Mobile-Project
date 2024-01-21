import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      titleSpacing: 0.0,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF21262E),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF21262E),
                    Color(0x0021262E),
                  ],
                ),
              ),
              child: Container(
                child: Icon(
                  Icons.grid_view_rounded,
                  size: 16.0,
                  color: Colors.white.withOpacity(0.18),
                ),
              ),
            ),
            Text(
              "Cart",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                "assets/images/wan.jpg",
                width: 30.0,
                height: 30.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF21262E),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF262B33),
                    Color(0x00262B33),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/cap3.png',
                        width: 100.0,
                        height: 100.0,
                      ),
                      SizedBox(width: 22),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3),
                          Text(
                            "Cappucino",
                            style: GoogleFonts.poppins(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "With Steamed Milk",
                            style: GoogleFonts.poppins(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFAEAEAE)),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 118.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF141921),
                            ),
                            child: Center(
                              child: Text(
                                'Medium Roasted',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFFAEAEAE),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 72,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF0C0F14),
                        ),
                        child: Center(
                          child: Text(
                            "S",
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        '\$',
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFD17842),
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        '4.20',
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 28.44,
                        height: 28.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFD17842)),
                        child: Container(
                          child: Icon(
                            Icons.horizontal_rule_outlined,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFD17842),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "1",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: 28.44,
                        height: 28.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFD17842)),
                        child: Container(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 72,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF0C0F14),
                        ),
                        child: Center(
                          child: Text(
                            "M",
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        '\$',
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFD17842),
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        '4.20',
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 28.44,
                        height: 28.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFD17842)),
                        child: Container(
                          child: Icon(
                            Icons.horizontal_rule_outlined,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFD17842),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "1",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: 28.44,
                        height: 28.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFD17842)),
                        child: Container(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 72,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF0C0F14),
                        ),
                        child: Center(
                          child: Text(
                            "L",
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        '\$',
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFD17842),
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        '4.20',
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 28.44,
                        height: 28.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFD17842)),
                        child: Container(
                          child: Icon(
                            Icons.horizontal_rule_outlined,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFD17842),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "1",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: 28.44,
                        height: 28.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFD17842)),
                        child: Container(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF21262E),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF262B33),
                    Color(0x00262B33),
                  ],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/mock-coffee-01.png",
                    width: 126.0,
                    height: 126.0,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cappucino",
                          style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "With Steamed Milk",
                          style: GoogleFonts.poppins(
                              fontSize: 9.0,
                              fontWeight: FontWeight.w400,
                              height: 2,
                              color: Color(0xFFAEAEAE)),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Container(
                              width: 72.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF0C0F14),
                              ),
                              child: Center(
                                child: Text(
                                  "M",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFD17842),
                                      ),
                                    ),
                                    SizedBox(width: 4.0),
                                    Text(
                                      '6.20',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 9.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 28.44,
                              height: 28.44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xFFD17842)),
                              child: Container(
                                child: Icon(
                                  Icons.horizontal_rule_outlined,
                                  color: Colors.white,
                                  size: 16.0,
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFD17842),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              width: 28.44,
                              height: 28.44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xFFD17842)),
                              child: Container(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 16.0,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
