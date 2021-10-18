import 'package:food_delivery/models/food_model.dart';
import 'package:food_delivery/models/restaurant_model.dart';

class Cart{

  final String ?img;
  final Food ?nameFood;
  final Restaurant ?nameRes;
  final Food ?price;
  int ?count;

  Cart({this.img,this.nameFood,this.nameRes,this.price,this.count});

}