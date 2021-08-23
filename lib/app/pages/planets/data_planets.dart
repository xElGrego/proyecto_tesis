
import 'package:proyecto_tesis/app/pages/planets/planets_model.dart';

String selectedTile = "";
int selectedIndex ;
bool selected = true;
int points = 0;

List<TileModelPlanets> myPairs = [];
List<bool> clicked = [];

List<bool> getClicked(){

  List<bool> yoClicked = [];
  List<TileModelPlanets> myairs = [];
  myairs = getPairs();
  for(int i=0;i<myairs.length;i++){
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModelPlanets>  getPairs(){


  List<TileModelPlanets> pairs = [];

  TileModelPlanets tileModel = new TileModelPlanets();

  //1
  tileModel.setImageAssetPath("assets/img/planets/earth.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //2
  tileModel.setImageAssetPath("assets/img/planets/jupiter.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //3
  tileModel.setImageAssetPath("assets/img/planets/mars.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //4
  tileModel.setImageAssetPath("assets/img/planets/mercury.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //5
  tileModel.setImageAssetPath("assets/img/planets/neptune.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //6
  tileModel.setImageAssetPath("assets/img/planets/saturn.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //7
  tileModel.setImageAssetPath("assets/img/planets/uranus.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //8
  tileModel.setImageAssetPath("assets/img/planets/venus.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  return pairs;
}

List<TileModelPlanets>  getQuestionPairs(){

  List<TileModelPlanets> pairs = [];

  TileModelPlanets tileModel = new TileModelPlanets();

  //1
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //2
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //3
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //4
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();
  //5
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //6
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //7
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  //8
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelPlanets();

  return pairs;
} 