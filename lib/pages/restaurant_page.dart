import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';
import 'package:food_delivery/models/mydata.dart';
import 'package:food_delivery/models/restaurant_model.dart';
import 'package:food_delivery/pages/home_page.dart';

class RestaurantPage extends StatefulWidget {
  static const String id = "res_page";

  final Restaurant ?restaurant;
  RestaurantPage({this.restaurant});


  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {

  final  myList = foodList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //#image
          Stack(
            children: [
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.restaurant!.img.toString()),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.6),
                        ]
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, HomePage.id);
                      },
                      icon: const Icon(Icons.arrow_back_ios,color: Colors.white,size: 28,),
                    ),
                    IconButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, HomePage.id);
                      },
                      icon: const Icon(Icons.favorite,color: Colors.red,size: 28,),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          //#name destination
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.restaurant!.name.toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                Text("${widget.restaurant!.destination} miles away",style: const TextStyle(fontSize: 16),)
              ],
            ),
          ),
          //#quality
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: _buildStar(int.parse("${widget.restaurant!.quality}")),
            ),
          ),
          //#location
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text(widget.restaurant!.location.toString(),style: const TextStyle(fontSize: 17),),
          ),
          const SizedBox(height: 15,),
          //#buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextButton(
                    autofocus: true,
                    style: TextButton.styleFrom(backgroundColor: Colors.redAccent,),
                    onPressed: (){},
                    child: const Center(
                      child: Text("Reviews",style: TextStyle(color: Colors.white,fontSize: 17),),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextButton(
                    autofocus: true,
                    style: TextButton.styleFrom(backgroundColor: Colors.redAccent,),
                    onPressed: (){},
                    child: const Center(
                      child: Text("Contact",style: TextStyle(color: Colors.white,fontSize: 17),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          //#menu
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Menu",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          //#gridview

          Expanded(child: Container(
            margin: const EdgeInsets.only(left: 20),
            child: GridView.count(
              crossAxisCount: 2,
              children: _buildList(foodList()!.length),
            ),
          ),)
        ],
      ),
    );
  }

  List<Widget> _buildStar(int count){
    List<Widget> list = [];

    for(int i = 0; i < count; i++){
      list.add(_buildItem());
    }

    return list;
  }
  Widget _buildItem(){
    return const Icon(Icons.star,color: Colors.yellow,size: 22,);
  }

  Widget _widgetFood(Food food){
    return Container(
      margin: const EdgeInsets.only(bottom: 10,right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(food.img.toString()),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                    ]
                  )
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(food.name.toString(),style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  Text("\$${food.price}",style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.redAccent,
                    child: IconButton(
                      onPressed: (){

                      },
                      icon: const Icon(Icons.add,size: 22,color: Colors.white,),
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildList(int count){
    List<Widget> list = [];
    for(int i = 0; i < count; i++){
      list.add(_widgetFood(foodList()![i]));
    }
    return list;
  }

}
