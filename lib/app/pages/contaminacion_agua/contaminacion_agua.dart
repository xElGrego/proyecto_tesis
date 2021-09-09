import 'package:flutter/material.dart';
import 'package:proyecto_tesis/app/widgets/text.dart';
import 'package:proyecto_tesis/config/config.dart';
import 'package:proyecto_tesis/data/contaminacion_agua.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:url_launcher/link.dart';

import '../../colors.dart';

class ContaminacionAguaDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: contaminacionAguaList.length,
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
                      image: AssetImage(contaminacionAguaList[index].image),
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
                            constraints: BoxConstraints(minWidth: 10, maxWidth: 50),
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
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                    transform: Matrix4.translationValues(0, -30, 0),
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
                          text: contaminacionAguaList[index].title,
                          size: 26,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2.0,
                        ),
                        PrimaryText(
                          text: contaminacionAguaList[index].concept,
                          size: 17,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                        ),
                        Spacer(),
                        if (index >= contaminacionAguaList.length - 1)
                          Row(
                            children: [
                              ElevatedButton(
                                child: Text(
                                  'Ir a la actividad',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                onPressed: () async {
                                  const url =
                                      'https://es.educaplay.com/juego/10224482-contaminacion_del_agua.html';
                                  if (await canLaunch(url) != null) {
                                    await launch(url);
                                  } else {
                                    throw {print("Valimos")};
                                  }
                                },
                              ),
                              Spacer(),
                              ElevatedButton(
                                child: Text(
                                  'Video',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                onPressed: () async {
                                  const url = 'https://www.youtube.com/watch?v=XMvncTxCLB4';
                                  if (await canLaunch(url) != null) {
                                    await launch(url);
                                  } else {
                                    throw {print("Valimos")};
                                  }
                                },
                              ),
                            ],
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
