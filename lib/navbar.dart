import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFf6eeda),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Contacts  
          Text(
            '(+351) 919 666 115\nmendes.anateresasg@gmail.com ',
            style:
                GoogleFonts.acme(fontSize: 19, color: const Color(0xFFd44f73)),
          ),
          GestureDetector(
            onTap: () {
              //Open url in new tab
              html.window
                  .open('https://teresa-flowers.business.site', 'new tab');
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Column(
                children: [
                  Text(
                    'Teresa Flowers',
                    style: GoogleFonts.acme(
                        fontSize: 30, color: const Color(0xFFd44f73)),
                  ),
                  Text(
                    'teresa-flowers.business.site',
                    style: GoogleFonts.acme(
                        fontSize: 15, color: const Color(0xFFd44f73)),
                  ),
                ],
              ),
            ),
          ),
          Text(
            '(+351) 917 555 115\nantonioalvesmiguel@gmail.com',
            style:
                GoogleFonts.acme(fontSize: 19, color: const Color(0xFFd44f73)),
          ),
        ],
      ),
    );
  }
}
