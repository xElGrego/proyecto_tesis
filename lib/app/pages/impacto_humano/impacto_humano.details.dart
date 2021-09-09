import 'package:flutter/material.dart';
import 'package:proyecto_tesis/app/widgets/text.dart';
import 'package:proyecto_tesis/config/config.dart';
import 'package:proyecto_tesis/data/impacto_humano.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../colors.dart';

class ImpactoHumanoDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: impactoHumanoList.length,
      itemBuilder: (context, index) {
        return Scaffold(
          backgroundColor: AppColors.white,
          body: Container(
            height: SizeConfig.screenHeight,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 50),
                  height: SizeConfig.screenHeight / 1.7,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        impactoHumanoList[index].image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: standardPaddingX,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 3,
                          fit: FlexFit.loose,
                          child: RawMaterialButton(
                            elevation: 2,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            constraints: BoxConstraints(
                              minWidth: 10,
                              maxWidth: 50,
                            ),
                            child: Icon(
                              Icons.chevron_left,
                              color: AppColors.black,
                              size: 30,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            fillColor: AppColors.white,
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: 25.0,
                    ),
                    transform: Matrix4.translationValues(
                      0,
                      -30,
                      0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: AppColors.white,
                    ),
                    width: SizeConfig.screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 50.0,
                            height: 6.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 1.5,
                        ),
                        PrimaryText(
                          text: impactoHumanoList[index].title,
                          size: 26,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 1.5,
                        ),
                        Container(
                          height: SizeConfig.blockSizeVertical * 22,
                          child: PrimaryText(
                            text: impactoHumanoList[index].concept,
                            size: 17,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        if (index >= impactoHumanoList.length - 1)
                          Center(
                            child: ElevatedButton(
                              child: Text(
                                'Video',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              onPressed: () async {
                                const url = 'https://www.youtube.com/watch?v=eOHkGv93pqU';
                                if (await canLaunch(url) != null) {
                                  await launch(url);
                                } else {
                                  throw {print("Valimos")};
                                }
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
