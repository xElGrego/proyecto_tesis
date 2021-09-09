import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyecto_tesis/app/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/config.dart';
import '../../../const.dart';
import '../../colors.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedCategory = 0;
  List selectedCategoryList = planetas;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: SizeConfig.blockSizeVertical * 1),
          Padding(
            padding: standardPaddingX,
            child: PrimaryText(
              text: 'El Mundo de la Ciencia',
              fontWeight: FontWeight.w700,
              size: 36,
            ),
          ),
          Padding(
            padding: standardPaddingX,
            child: Text(
              "La ciencia es un sistema que organiza y ordena el conocimiento a través de preguntas comprobables y un método estructurado que estudia e interpreta los fenómenos naturales, sociales y artificiales.​",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 8.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: temas.length,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.only(
                  left: index == 0 ? 25 : 0,
                  right: 20,
                ),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        selectedCategory = index;
                        selectedCategoryList = temas[index]['arrayMappedname'];
                      },
                    );
                  },
                  child: PrimaryText(
                    text: temas[index]['label'],
                    color: selectedCategory == index ? AppColors.white : AppColors.textGray,
                    fontWeight: FontWeight.w500,
                    size: 18,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 0,
                    primary: selectedCategory == index ? AppColors.primary : Colors.grey[200],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: SizeConfig.blockSizeVertical * 32,
            child: Padding(
              padding: standardPaddingX,
              child: ListView.builder(
                addAutomaticKeepAlives: false,
                itemCount: selectedCategoryList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return cardTheme(
                    context,
                    selectedCategoryList[i]["image"],
                    selectedCategoryList[i]["label"],
                    selectedCategoryList[i]["widget"],
                  );
                },
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: AppColors.primary),
            onPressed: () async {
              const url = 'https://ugye-my.sharepoint.com/:b:/g/personal/bella_figueroas_ug_edu_ec/EfnvL70qLlxGhAE7MxsU_5kBEGhegKcMJJ26NAHlpdh_hQ';
              if (await canLaunch(url) != null) {
                await launch(url);
              } else {
                throw {print("Valimos")};
              }
            },
            child: Text(
              "Recursos",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget cardTheme(BuildContext context, String image, String label, Widget widget) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PrimaryText(
              text: label,
              fontWeight: FontWeight.w500,
              size: 18,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: (SizeConfig.screenWidth - 70) / 1,
              height: SizeConfig.blockSizeVertical * 25,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
