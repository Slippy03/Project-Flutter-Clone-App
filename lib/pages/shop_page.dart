import 'package:ccc/components/coffee_tile.dart';
import 'package:ccc/models/coffee.dart';
import 'package:ccc/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

void addTocart(Coffee coffee){ 

  Provider.of<CoffeeShop>(context,listen: false).addItemToCart(coffee);

  showDialog(context: context, 
  builder: (context)=> AlertDialog(
    title: Text("Successfully added to card")
  ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text("What's drink would you have today?",
            style: TextStyle(fontSize: 20),
            ),
              const SizedBox(height: 25),
              Expanded(
              child: ListView.builder(
                itemCount: value.coffee.length ,
                itemBuilder: (context,index){
                Coffee eachCoffee = value.coffee[index];
              return CoffeeTile(coffee: eachCoffee,
              icon: Icon(Icons.add),
              onPressed:() => addTocart(eachCoffee) ,);
              },
            ),
          ),
        ],
      ),
      ),
    ),
    );
  }
}