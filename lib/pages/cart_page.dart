import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_model.dart';
import 'package:food_delivery/models/mydata.dart';
import 'package:food_delivery/pages/home_page.dart';

class CartPage extends StatefulWidget {
  static const String id = "cart_page";

  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: const Text("Cart",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: cartList()!.length,
          itemBuilder: (ctx,index) => _widgetCart(cartList()![index]),
        ),
      ),
    );
  }

  Widget _widgetCart(Cart cart){
    int k = 1;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300,width: 0.2)
      ),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(cart.img.toString()),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cart.nameFood!.name.toString(),style: const TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 5,),
                Text(cart.nameRes!.name.toString()),
                const SizedBox(height: 10,),
                Container(
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey,width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){ },
                        child: const Center(
                          child: Icon(Icons.remove,color: Colors.redAccent,)
                        ),
                      ),
                      const SizedBox(width: 20,),
                      const Text("1"),
                      const SizedBox(width: 20,),
                      GestureDetector(
                        onTap: (){ },
                        child: const Center(
                            child: Icon(Icons.add,color: Colors.redAccent,)
                        ),
                      ),
                    ],
                  )
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("\$${cart.price!.price}"),
          ),
        ],
      ),
    );
  }

}
