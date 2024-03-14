import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Profil",
            style: GoogleFonts.plusJakartaSans(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold
                )
            ),),
          ),
          centerTitle: false,
          actions: [
            Text("v.2403-1101",
              style: GoogleFonts.plusJakartaSans(
                  textStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 10
                  )
              ),)
          ],
        ),
        body: Column(
          children: [
            Container(
            height: 0.795*MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          child: Image.asset("assets/image/logo_hsi.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("RENDI KURNIAWAN",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                  )
                              ),),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("ARN222-02151",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 10,
                                  )
                              ),),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: Colors.grey,
                              spreadRadius: 0.2,
                              blurRadius: 0.2
                          )
                        ]
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(LineIcons.whatSApp),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nomor WhatsApp",
                                    style: GoogleFonts.plusJakartaSans(
                                      textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12
                                      )
                                    ),),
                                    Text("628-XXXXXXX",
                                      style: GoogleFonts.plusJakartaSans(
                                          textStyle: TextStyle(
                                              fontSize: 13,
                                          )
                                      ),),
                                  ],
                                )
                              ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(LineIcons.home),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Alamat",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12
                                        )
                                    ),),
                                  Text("Padang, Sumatera Barat",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                          fontSize: 13,
                                        )
                                    ),),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(LineIcons.whatSApp),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Kabupaten/Kota, Provinsi, Kode Pos",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12
                                        )
                                    ),),
                                  Text("Padang, Sumatera Barat, 23043",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                          fontSize: 13,
                                        )
                                    ),),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(LineIcons.home),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Status Pernikahan / Jumlah Anak",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12
                                        )
                                    ),),
                                  Text("Belum Menikah / 0",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                          fontSize: 13,
                                        )
                                    ),),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: Colors.grey,
                              spreadRadius: 0.3,
                              blurRadius: 0.3
                          )
                        ]
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(LineIcons.addressBook),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "List Musyrif / Musyrifah",
                                        style: GoogleFonts.plusJakartaSans(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                              fontWeight: FontWeight.bold
                                            )
                                        ),
                                      )
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Column(
                            children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Text(
                                    "John Doe",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "(ARNXXX-XXX)",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                          color: Colors.grey[700]
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Placement Test SandBox3"),
                                      Text("Grup: Calon Peserta ARN")
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "SANDBOX",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF233975)
                                        )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5,),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: Colors.grey,
                              spreadRadius: 0.3,
                              blurRadius: 0.3
                          )
                        ]
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(LineIcons.exclamationCircle),
                                    Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Info Lainnya",
                                          style: GoogleFonts.plusJakartaSans(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              )
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                               child: SizedBox(
                                 width: MediaQuery.of(context).size.width,
                                 child: ElevatedButton(onPressed: () {}, child: Row(
                                   children: [
                                     Align(alignment: Alignment.centerLeft,child: Icon(LineIcons.lockOpen, size: 14,)),
                                     SizedBox(width: 10,),
                                     Align(
                                       alignment: Alignment.centerLeft,
                                       child: Text(
                                           "Ganti Password",
                                         style: GoogleFonts.plusJakartaSans(
                                           color: Colors.black,
                                           fontSize: 12
                                         ),
                                       ),
                                     ),
                                     Align(alignment: Alignment.centerRight,child: Icon(LineIcons.arrowRight, size: 14,)),
                                   ],
                                 ),
                                   style:  ElevatedButton.styleFrom(
                                     backgroundColor: Colors.white,
                                                               shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)
                                                               )
                                                           ),
                                 ),
                               ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(onPressed: () {}, child: Row(
                                    children: [
                                      Align(alignment: Alignment.centerLeft,child: Icon(LineIcons.questionCircle, size: 14,)),
                                      SizedBox(width: 10,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Bantuan",
                                          style: GoogleFonts.plusJakartaSans(
                                              color: Colors.black,
                                              fontSize: 12
                                          ),
                                        ),
                                      ),
                                      Align(alignment: Alignment.centerRight,child: Icon(LineIcons.arrowRight, size: 14,)),
                                    ],
                                  ),
                                    style:  ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(onPressed: () {}, child: Row(
                                    children: [
                                      Align(alignment: Alignment.centerLeft,child: Icon(LineIcons.userShield, size: 14,)),
                                      SizedBox(width: 10,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Kebijakan Privasi",
                                          style: GoogleFonts.plusJakartaSans(
                                              color: Colors.black,
                                              fontSize: 12
                                          ),
                                        ),
                                      ),
                                      Align(alignment: Alignment.centerRight,child: Icon(LineIcons.arrowRight, size: 14,)),
                                    ],
                                  ),
                                    style:  ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 0.9*MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        side: BorderSide(color: Colors.red),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)
                                        )
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Keluar",
                                      style: GoogleFonts.plusJakartaSans(
                                          color: Colors.red
                                      ),
                                    )
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5,),

                        ],
                      ),
                    ),
                  )
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
                    // text: 'Beranda',
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
                // selectedIndex: _selectedIndex,
                // onTabChange: (index) {
                //   setState(() {
                //     _selectedIndex = index;
                //   });
                // },
              ),
            )
          ],
        ),
      ),
    );
  }
}
