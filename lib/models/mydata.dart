import 'package:food_delivery/models/cart_model.dart';
import 'package:food_delivery/models/food_model.dart';
import 'package:food_delivery/models/order_model.dart';
import 'package:food_delivery/models/restaurant_model.dart';

List ?orderList(){
  var list = [];

  var order1 = Order(
    food: Food(name: "Osh"),
    restaurant:  Restaurant(name: "Rayhon"),
    date: "19 nov,2020",
    img: "assets/images/meal1.png"
  );
  var order2 = Order(
  food: Food(name: "Osh"),
  restaurant:  Restaurant(name: "Rayhon"),
  date: "19 nov,2020",
      img: "assets/images/meal2.jpg"
  );

  var order3 = Order(
      food: Food(name: "Osh"),
      restaurant:  Restaurant(name: "Rayhon"),
      date: "19 nov,2020",
      img: "assets/images/meal3.jpeg"
  );

  var order4 = Order(
      food: Food(name: "Osh"),
      restaurant:  Restaurant(name: "Rayhon"),
      date: "19 nov,2020",
      img: "assets/images/meal4.jpg"
  );

  var order5 = Order(
      food: Food(name: "Osh"),
      restaurant:  Restaurant(name: "Rayhon"),
      date: "19 nov,2020",
      img: "assets/images/meal5.jpg"
  );

  list.addAll([order1,order2,order3,order4,order5]);
  return list;

}
List ?reslist(){
  var list = [];

  var res1 = Restaurant(
    name: "Restaurant 1",
    destination: 0.2,
    location: "Muqimiy ko'chasi 12-uy",
    quality: 5,
    img: "assets/images/res1.jpg"
  );

  var res2 = Restaurant(
      name: "Restaurant 1",
      destination: 0.3,
      location: "Muqimiy ko'chasi 12-uy",
      quality: 4,
      img: "assets/images/res2.jpg"
  );

  var res3 = Restaurant(
      name: "Restaurant 1",
      destination: 0.5,
      location: "Muqimiy ko'chasi 12-uy",
      quality: 3,
      img: "assets/images/res3.jpg"
  );

  var res4 = Restaurant(
      name: "Restaurant 1",
      destination: 0.7,
      location: "Muqimiy ko'chasi 12-uy",
      quality: 3,
      img: "assets/images/res4.jpg"
  );

  var res5 = Restaurant(
      name: "Restaurant 1",
      destination: 0.8,
      location: "Muqimiy ko'chasi 12-uy",
      quality: 4,
      img: "assets/images/res5.jpg"
  );

  var res6 = Restaurant(
      name: "Restaurant 1",
      destination: 0.2,
      location: "Muqimiy ko'chasi 12-uy",
      quality: 5,
      img: "assets/images/res1.jpg"
  );

  var res7 = Restaurant(
      name: "Restaurant 1",
      destination: 0.3,
      location: "Muqimiy ko'chasi 12-uy",
      quality: 4,
      img: "assets/images/res2.jpg"
  );

  var res8 = Restaurant(
      name: "Restaurant 1",
      destination: 0.5,
      location: "Muqimiy ko'chasi 12-uy",
      quality: 3,
      img: "assets/images/res3.jpg"
  );

  var res9 = Restaurant(
      name: "Restaurant 1",
      destination: 0.7,
      location: "Muqimiy ko'chasi 12-uy",
      quality: 3,
      img: "assets/images/res4.jpg"
  );

  var res10 = Restaurant(
      name: "Restaurant 1",
      destination: 0.8,
      location: "Muqimiy ko'chasi 12-uy",
      quality: 4,
      img: "assets/images/res5.jpg"
  );

  list.addAll([res1,res2,res3,res4,res5,res6,res7,res8,res9,res10]);
  return list;

}
List ?foodList(){
  List<Food> list = [];

  var food1 = Food(
    img: "assets/images/meal1.png",
    name: "Manti",
    price: 6.7
  );
  var food2 = Food(
      img: "assets/images/meal2.jpg",
      name: "Manti",
      price: 6.7
  );
  var food3 = Food(
      img: "assets/images/meal3.jpeg",
      name: "Manti",
      price: 6.7
  );
  var food4 = Food(
      img: "assets/images/meal4.jpg",
      name: "Manti",
      price: 6.7
  );
  var food5 = Food(
      img: "assets/images/meal5.jpg",
      name: "Manti",
      price: 6.7
  );

  var food6 = Food(
      img: "assets/images/meal1.png",
      name: "Manti",
      price: 6.7
  );
  var food7 = Food(
      img: "assets/images/meal2.jpg",
      name: "Manti",
      price: 6.7
  );
  var food8 = Food(
      img: "assets/images/meal3.jpeg",
      name: "Manti",
      price: 6.7
  );
  var food9 = Food(
      img: "assets/images/meal4.jpg",
      name: "Manti",
      price: 6.7
  );
  var food10 = Food(
      img: "assets/images/meal5.jpg",
      name: "Manti",
      price: 6.7
  );

  var food11 = Food(
      img: "assets/images/meal1.png",
      name: "Manti",
      price: 6.7
  );
  var food12 = Food(
      img: "assets/images/meal2.jpg",
      name: "Manti",
      price: 6.7
  );
  var food13 = Food(
      img: "assets/images/meal3.jpeg",
      name: "Manti",
      price: 6.7
  );
  var food14 = Food(
      img: "assets/images/meal4.jpg",
      name: "Manti",
      price: 6.7
  );
  var food15 = Food(
      img: "assets/images/meal5.jpg",
      name: "Manti",
      price: 6.7
  );

  var food16 = Food(
      img: "assets/images/meal1.png",
      name: "Manti",
      price: 6.7
  );
  var food17 = Food(
      img: "assets/images/meal2.jpg",
      name: "Manti",
      price: 6.7
  );
  var food18 = Food(
      img: "assets/images/meal3.jpeg",
      name: "Manti",
      price: 6.7
  );
  var food19 = Food(
      img: "assets/images/meal4.jpg",
      name: "Manti",
      price: 6.7
  );
  var food20 = Food(
      img: "assets/images/meal5.jpg",
      name: "Manti",
      price: 6.7
  );

  list.addAll([food1,food2,food3,food4,food5,food6,food7,food8,food9,food10,food11,food12,food13,food14,food15,food16,food17,food18,food19,food20]);

  return list;

}
List ?cartList(){

  List<Cart> list = [];

  var cart1 = Cart(
    img: "assets/images/burger.jpg",
    nameFood: Food(name: "Burger"),
    nameRes: Restaurant(name: "Restaurant 2"),
    price: Food(price: 12.2),
    count: 1
  );
  var cart2 = Cart(
    img: "assets/images/cake.jpg",
    nameFood: Food(name: "Cake"),
    nameRes: Restaurant(name: "Restaurant 3"),
    price: Food(price: 9.2),
    count: 1
  );
  var cart3 = Cart(
    img: "assets/images/lavash1.jpg",
    nameFood: Food(name: "Lavash"),
    nameRes: Restaurant(name: "Restaurant 1"),
    price: Food(price: 8.7),
    count: 1
  );
  var cart4 = Cart(
    img: "assets/images/salad.jpg",
    nameFood: Food(name: "Salad"),
    nameRes: Restaurant(name: "Restaurant 7"),
    price: Food(price: 6.4),
    count: 1
  );
  var cart5 = Cart(
    img: "assets/images/sandwich.jpg",
    nameFood: Food(name: "Club Sandwich"),
    nameRes: Restaurant(name: "Restaurant 6"),
    price: Food(price: 18.2),
    count: 1
  );

  var cart6 = Cart(
      img: "assets/images/burger.jpg",
      nameFood: Food(name: "Burger"),
      nameRes: Restaurant(name: "Restaurant 2"),
      price: Food(price: 12.2),
      count: 1
  );
  var cart7 = Cart(
      img: "assets/images/cake.jpg",
      nameFood: Food(name: "Cake"),
      nameRes: Restaurant(name: "Restaurant 3"),
      price: Food(price: 9.2),
      count: 1
  );
  var cart8 = Cart(
      img: "assets/images/lavash1.jpg",
      nameFood: Food(name: "Lavash"),
      nameRes: Restaurant(name: "Restaurant 1"),
      price: Food(price: 8.7),
      count: 1
  );
  var cart9 = Cart(
      img: "assets/images/salad.jpg",
      nameFood: Food(name: "Salad"),
      nameRes: Restaurant(name: "Restaurant 7"),
      price: Food(price: 6.4),
      count: 1
  );
  var cart10 = Cart(
      img: "assets/images/sandwich.jpg",
      nameFood: Food(name: "Club Sandwich"),
      nameRes: Restaurant(name: "Restaurant 6"),
      price: Food(price: 18.2),
      count: 1
  );

  list.addAll([cart1,cart2,cart3,cart4,cart5,cart6,cart7,cart8,cart9,cart10]);
  return list;
}