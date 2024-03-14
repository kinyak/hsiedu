import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';


class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

final List<String> imgList = [
  "assets/image/story-1.jpg",
  'assets/image/story-2.jpg',
  'assets/image/story-3.jpg',
  'assets/image/story-4.jpg',
  'assets/image/story-5.jpg',
  'assets/image/story-6.jpg',
  'assets/image/story-7.jpg',
];

class _BerandaState extends State<Beranda> {


  final CarouselController _controller = CarouselController();
  int _current = 0;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF233975),
          leading: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset("assets/image/logo_hsi.png"),
          ),
          centerTitle: false,
          title: Text("EDU HSI",
          style: GoogleFonts.plusJakartaSans(
            textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20
            ),)
          ),
          actions: [
            Text("v.2403-1101",
            style: GoogleFonts.plusJakartaSans(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 12
              )
            ),)
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 0.795*MediaQuery.of(context).size.height,
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("Assalamu'alaikum,",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12,
                                  )
                              ),),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("RENDI KURNIAWAN",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  )
                              ),),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("ARN222-02151",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14
                                  )
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: Column(children: [
                      Expanded(
                        child: CarouselSlider(
                          items: imageSliders,
                          carouselController: _controller,
                          options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2.0,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: _current == entry.key ? 20.0 : 6.0,
                              height: 6.0,
                              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: _current == entry.key ? BoxShape.rectangle : BoxShape.circle,
                                  borderRadius: _current == entry.key ? BorderRadius.circular(5) : null,
                                  color: (Theme.of(context).brightness == Brightness.dark
                                      ? Colors.white
                                      : Color(0xFF233975))
                                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                    ]),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Lembar Data",
                        style: GoogleFonts.plusJakartaSans(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold
                          )
                        ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurStyle: BlurStyle.outer,
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 1
                            )
                          ]
                      ),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 23,
                                  decoration: BoxDecoration(
                                  color: Color(0xFFe9f0f8),
                                  borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Container(
                                    width: 185,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 3),
                                          child: Icon(Icons.info, size: 15,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            "Pendaftaran Levelling KBM",
                                            style: GoogleFonts.plusJakartaSans(
                                              textStyle: TextStyle(
                                                color: Color(0xFF283d78),
                                                fontSize: 12
                                              )
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Bagi seluruh santri rasib/ghayyib yang saat ini tidak aktif dan ingin tetap belajar silahkan mendaftar di form ini",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 11,
                                color: Colors.black
                              ),),
                            ),
                            SizedBox(
                              width: 0.9*MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF4561f1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)
                                  )
                                ),
                                  onPressed: () {},
                                  child: Text(
                                    "Selengkapnya",
                                    style: GoogleFonts.plusJakartaSans(
                                      color: Colors.white
                                    ),
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Evaluasi",
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold
                            )
                        ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 0.25*MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurStyle: BlurStyle.outer,
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 1
                            )
                          ]
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 23,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFe9f0f8),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "Majalah HSI",
                                        style: GoogleFonts.plusJakartaSans(
                                            textStyle: TextStyle(
                                                color: Color(0xFF283d78),
                                                fontSize: 12
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Kuis Majalah HSI Edisi 59-60",
                              style: GoogleFonts.plusJakartaSans(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Majalah 1445H",
                                style: GoogleFonts.plusJakartaSans(
                                    textStyle: TextStyle(
                                      fontSize: 12
                                    )
                                ),),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                SizedBox(width: 5,),
                                Container(
                                  height: 23,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFe9f0f8),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.list, size: 13,),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                            "10 Soal",
                                          style: GoogleFonts.plusJakartaSans(
                                            textStyle: TextStyle(
                                              fontSize: 10
                                            )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 23,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFe9f0f8),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.timer_off_outlined, size: 13,),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          "Kamis, 14 Mar 2024 - 12:00",
                                          style: GoogleFonts.plusJakartaSans(
                                              textStyle: TextStyle(
                                                  fontSize: 10,
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 0.9*MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF2dbe78),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Kerjakan",
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 0.08*MediaQuery.sizeOf(context).height,
              child: GNav(
                  rippleColor: Color(0xFF233975), // tab button ripple color when pressed
                  hoverColor: Color(0xFFEEEEEE), // tab button hover color
                  haptic: true, // haptic feedback
                  tabBorderRadius: 20,
                  tabActiveBorder: Border.all(color: Color(0xFF233975), width: 1), // tab button border
                  tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
                  // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
                  // curve: Curves.easeOutExpo, // tab animation curves
                  duration: Duration(milliseconds: 100), // tab animation duration
                  gap: 8, // the tab button gap between icon and text
                  color: Colors.grey[800], // unselected icon color
                  activeColor: Color(0xFF233975), // selected icon and text color
                  iconSize: 24, // tab button icon size
                  tabBackgroundColor: Color(0xFF233975).withOpacity(0.1), // selected tab background color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      onPressed: ()=>Navigator.pushNamed(context, '/beranda'),
                    ),
                    GButton(
                      icon: LineIcons.graduationCap,
                      // text: 'Akademi',
                    ),
                    GButton(
                      icon: LineIcons.stickyNote,
                      // text: 'Reguler',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      // text: 'Profil',
                      onPressed: ()=>Navigator.pushNamed(context, '/profil'),
                    )
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xFFd1d1d1),
              blurRadius: 2,
              spreadRadius: 1
          )
        ]
    ),
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Container(
              width: 1000,
              child: Container(
                width: 40,
                  child: Image.asset(item, fit: BoxFit.cover,)),
            ),
          ],
        )),
  ),
))
    .toList();
