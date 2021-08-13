import 'package:flutter/material.dart';
import 'package:proyecto_tesis/app/widgets/text.dart';
import 'package:proyecto_tesis/config/config.dart';
import 'package:proyecto_tesis/data/areas_protegidas.dart';

import '../../colors.dart';

class AreasProtegidasDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: areasprotegidasList.length,
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
                      image: AssetImage(areasprotegidasList[index].image),
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
                          height: SizeConfig.blockSizeVertical * 3.5,
                        ),
                        PrimaryText(
                          text: areasprotegidasList[index].title,
                          size: 26,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2.5,
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2,
                        ),
                        PrimaryText(
                          text: areasprotegidasList[index].concept,
                          size: 17,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
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
