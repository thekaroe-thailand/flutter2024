import 'package:flutter/material.dart';

class PandaFoodExample extends StatelessWidget {
  const PandaFoodExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PandaFoodPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PandaFoodPage extends StatefulWidget {
  const PandaFoodPage({super.key});

  @override
  _PandaFoodPageState createState() => _PandaFoodPageState();
}

class _PandaFoodPageState extends State<PandaFoodPage> {
  List<Map<String, String>> cart = [];

  void addToCart(String title, String price) {
    setState(() {
      cart.add({'title': title, 'price': price});
    });
  }

  void showCart(BuildContext context) {
    double totalPrice = cart.fold(
        0, (sum, item) => sum + double.parse(item['price']!.substring(1)));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Your Cart'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: cart.map((item) {
              return ListTile(
                title: Text(item['title']!),
                subtitle: Text(item['price']!),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      cart.remove(item);
                    });
                    Navigator.of(context).pop();
                    showCart(context);
                  },
                ),
              );
            }).toList(),
          ),
          actions: [
            Text('Total : ${totalPrice.toStringAsFixed(2)}'),
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PandaFood'),
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              showCart(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            FoodCard(
              imageUrl:
                  'https://kobdemy.com/resources/images/node_js_basic_3_day.png',
              title: 'ส้มตำปูปลาร้า',
              description: 'อร่อยมาก รสดั้งเดิมจากต้นตำรับ',
              price: '\$5',
              addToCart: addToCart,
            ),
            FoodCard(
              imageUrl:
                  'https://kobdemy.com/resources/images/node_js_basic_3_day.png',
              title: 'กะเพาปูม้าแกะ',
              description: 'ทำจากเนื้อปูม้า แกะให้แล้วเรียบร้อย พร้อมทาน',
              price: '\$10',
              addToCart: addToCart,
            ),
            FoodCard(
              imageUrl:
                  'https://kobdemy.com/resources/images/node_js_basic_3_day.png',
              title: 'ข้าวผัดชะชะช่า',
              description: 'ใส่ไข่แบบไร้ขีดจำกัด',
              price: '\$8',
              addToCart: addToCart,
            ),
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String price;
  final Function(String, String) addToCart;

  const FoodCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.price,
      required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        addToCart(title, price);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                      ),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
