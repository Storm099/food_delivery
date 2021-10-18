import 'package:flutter/material.dart';
import 'package:food_delivery/models/mydata.dart';
import 'package:food_delivery/models/order_model.dart';
import 'package:food_delivery/models/restaurant_model.dart';
import 'package:food_delivery/pages/cart_page.dart';
import 'package:food_delivery/pages/restaurant_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future _sendData(Restaurant _restaurant) async{
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return RestaurantPage(restaurant: _restaurant,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          "Food Delivery",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 25.0,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, CartPage.id);
            },
            child:  Center(
                child: Text(
              "Cart(${cartList()!.length})",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //#search
            Container(
              margin: const EdgeInsets.all(20),
              height: 46,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(color: Colors.redAccent, width: 2),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Search Food or Restaurants",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none),
              ),
            ),
            //#Recent orders
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: const Text(
                "Recent Orders",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: orderList()!.length,
                //physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    _builtOrder(orderList()![index]),
              ),
            ),
            //#nearby rests
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: const Text(
                "Nearby Restaurants",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.width,
              // width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: reslist()!.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    _builtRes(reslist()![index]),
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget _builtOrder(Order order) {
    return Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width - 60,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300,width: 0.3)
        ),
        child: Row(
          children: [
            SizedBox(
              height: double.infinity,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(order.img.toString()),
                  fit: BoxFit.cover,
                )
              ),
            ),

            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(order.food!.name.toString(),style: const TextStyle(fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    Text(order.restaurant!.name.toString()),
                    const SizedBox(height: 5,),
                    Text(order.date!.toString()),
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(right: 20),
              child: const CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.add,color: Colors.white,),
              ),
            )
          ],
        ));
  }
  Widget _builtRes(Restaurant restaurant) {
    return TextButton(
      child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300,width: 0.3)
          ),
          child: Row(
            children: [
              SizedBox(
                height: 180,
                width: 180,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(restaurant.img.toString()),
                      fit: BoxFit.cover,
                    )
                ),
              ),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(restaurant.name.toString(),style: const TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Row(
                        children: _buildStar(int.parse("${restaurant.quality}")),
                      ),
                      Text(restaurant.location.toString()),
                      const SizedBox(height: 5,),
                      Text("${restaurant.destination} miles away"),
                    ],
                  ),
                ),
              ),

            ],
          )),
      onPressed: (){
        _sendData(restaurant);
      },
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
  
}
