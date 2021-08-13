import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_tesis/data/cambio_climatico.dart';

import '../../colors.dart';

class CambioClimaticoDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: cambioclimaticoList.length,
      itemBuilder: (context, index) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///For image and back button and favorate button
                Container(
                  child: Stack(
                    children: [
                      ///Container for place quick info
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
                              cambioclimaticoList[index].title,
                              style: GoogleFonts.poppins(
                                  color: AppColors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(height: 18),
                      Container(
                        child: Hero(
                          tag: cambioclimaticoList[index].image,
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: ClipRRect(
                              child: Image.asset(
                                cambioclimaticoList[index].image,
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

                      ///Back button
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

                      ///Favorate icon
                      Positioned(
                        top: 300,
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[100],
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.info,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        right: 34,
                        bottom: 80,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  child: Text(
                    cambioclimaticoList[index].concept,
                    style: GoogleFonts.poppins(
                      color: AppColors.textGray,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
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
}
