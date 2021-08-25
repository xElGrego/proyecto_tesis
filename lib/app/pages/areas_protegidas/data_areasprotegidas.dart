


import 'areas_protegidas_model.dart';

String selectedTile = "";
int selectedIndex ;
bool selected = true;
int points = 0;

List<TileModelAreas> myPairs = [];
List<bool> clicked = [];

List<bool> getClicked(){

  List<bool> yoClicked = [];
  List<TileModelAreas> myairs = [];
  myairs = getPairs();
  for(int i=0;i<myairs.length;i++){
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModelAreas>  getPairs(){


  List<TileModelAreas> pairs = [];

  TileModelAreas tileModel = new TileModelAreas();

  //1
  tileModel.setImageAssetPath("assets/img/areas_protegidas/cotopaxi.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

  //2
  tileModel.setImageAssetPath("assets/img/areas_protegidas/elcajas.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

  //3
  tileModel.setImageAssetPath("assets/img/areas_protegidas/sangay.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

  //4
  tileModel.setImageAssetPath("assets/img/areas_protegidas/sumaco.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();
  
  //5
  tileModel.setImageAssetPath("assets/img/areas_protegidas/yacuri.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

  //6
  tileModel.setImageAssetPath("assets/img/areas_protegidas/yasuni.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

/*   //7
  tileModel.setImageAssetPath("assets/img/planets/uranus.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //8
  tileModel.setImageAssetPath("assets/img/planets/venus.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel(); */

  return pairs;
}

List<TileModelAreas>  getQuestionPairs(){

  List<TileModelAreas> pairs = [];

  TileModelAreas tileModel = new TileModelAreas();

  //1
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

  //2
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

  //3
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

  //4
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();
  //5
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

  //6
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelAreas();

 /*  //7
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  TileModelAreas = new TileModelAreas();

  //8
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  TileModelAreas = new TileModelAreas(); */

  return pairs;
}