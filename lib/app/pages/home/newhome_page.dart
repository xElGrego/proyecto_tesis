import 'package:flutter/material.dart';
import 'package:proyecto_tesis/app/widgets/text.dart';

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
      body: ListView(
        children: [
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Padding(
            padding: standardPaddingX,
            child: PrimaryText(
              text: 'El Mundo de la Ciencia',
              fontWeight: FontWeight.w700,
              size: 36,
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 3),
          Padding(
            padding: standardPaddingX,
            child: Text(
              "La ciencia es un sistema que organiza y ordena el conocimiento a través de preguntas comprobables y un método estructurado que estudia e interpreta los fenómenos naturales, sociales y artificiales.​",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 3),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 7.5,
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
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Padding(
            padding: standardPaddingX,
            child: Row(
              children: [
                PrimaryText(
                  text: 'Popular',
                  fontWeight: FontWeight.w800,
                  size: 28,
                ),
              ],
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Expanded(
            child: Padding(
              padding: standardPaddingX,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  selectedCategoryList.length,
                  (index) => cardTheme(
                    context,
                    selectedCategoryList[index]["image"],
                    selectedCategoryList[index]["label"],
                    selectedCategoryList[index]["clase"],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardTheme(BuildContext context, String image, String label,Widget clase) {

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => clase,
          ),
        );
      },
      child: Hero(
        tag: image,
        child: Container(
          padding: EdgeInsets.all(10),
          width: (SizeConfig.screenWidth - 80) / 2,
          height: SizeConfig.blockSizeVertical * 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PrimaryText(text: label, color: AppColors.textGray, size: 16),
                        SizedBox(height: 5),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
