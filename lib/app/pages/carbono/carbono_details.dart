import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_tesis/data/carbono.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

import '../../colors.dart';

class CarbonoDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: carbonoList.length,
      itemBuilder: (context, index) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.5 + 16,
                          bottom: 20,
                          right: 32,
                          left: 32,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                          color: Colors.grey.withOpacity(.2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              carbonoList[index].title,
                              style: GoogleFonts.poppins(
                                  color: AppColors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Hero(
                          tag: carbonoList[index].image,
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: ClipRRect(
                              child: Image.asset(
                                carbonoList[index].image,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(60),
                                bottomLeft: Radius.circular(60),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 24,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 15,
                  ),
                  child: Text(
                    carbonoList[index].concept,
                    style: GoogleFonts.poppins(
                      color: AppColors.textGray,
                      fontSize: 14,
                    ),
                  ),
                ),
                if (index >= carbonoList.length - 1)
                  Center(
                    child: ElevatedButton(
                      child: Text(
                        'Video',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () async {
                        const url = 'https://www.youtube.com/watch?v=XI7plCTNG74';
                        if (await canLaunch(url) != null) {
                          await launch(url);
                        } else {
                          throw {print("Valimos")};
                        }
                      },
                    ),
                  ),
                Spacer(),
                /* Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                    color: Colors.grey,
                  ),
                ) */
              ],
            ),
          ),
        );
      },
    );
  }

  canLaunch(String url) {}
}
