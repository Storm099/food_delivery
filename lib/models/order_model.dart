import 'package:food_delivery/models/food_model.dart';
import 'package:food_delivery/models/restaurant_model.dart';

class Order{

  final Food ?food;
  final Restaurant ?restaurant;
  final String ?date;
  final String ?img;

  Order({this.food,this.restaurant,this.date,this.img});

}