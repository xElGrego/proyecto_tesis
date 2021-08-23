



import 'carbono_model.dart';

String selectedTile = "";
int selectedIndex ;
bool selected = true;
int points = 0;

List<TileModelCarbono> myPairs = [];
List<bool> clicked = [];

List<bool> getClicked(){

  List<bool> yoClicked = [];
  List<TileModelCarbono> myairs = [];
  myairs = getPairs();
  for(int i=0;i<myairs.length;i++){
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModelCarbono>  getPairs(){


  List<TileModelCarbono> pairs = [];

  TileModelCarbono tileModel = new TileModelCarbono();

  //1
  tileModel.setImageAssetPath("assets/img/carbono/carbono_aire.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //2
  tileModel.setImageAssetPath("assets/img/carbono/carbono_combustibles.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //3
  tileModel.setImageAssetPath("assets/img/carbono/carbono_gasnatural.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //4
  tileModel.setImageAssetPath("assets/img/carbono/carbono_petroleo.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();
  
  //5
  tileModel.setImageAssetPath("assets/img/planets/.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //6
  tileModel.setImageAssetPath("assets/img/planets/saturn.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //7
  tileModel.setImageAssetPath("assets/img/planets/uranus.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //8
  tileModel.setImageAssetPath("assets/img/planets/venus.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  return pairs;
}

List<TileModelCarbono>  getQuestionPairs(){

  List<TileModelCarbono> pairs = [];

  TileModelCarbono tileModel = new TileModelCarbono();

  //1
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //2
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //3
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //4
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();
  //5
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //6
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //7
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  //8
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModelCarbono();

  return pairs;
}