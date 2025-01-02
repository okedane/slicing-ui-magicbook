import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';

class OrderDetailView extends StatefulWidget {
  final Map<String, dynamic> item;
  const OrderDetailView({
    required this.item,
    super.key,
  });

  Widget build(context, OrderDetailController controller) {
    controller.view = this;
    List productList = item["items"];

    return Scaffold(
      appBar: AppBar(
        title: Text("#${item["id"]}"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Cart Items",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                itemCount: productList.length,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = productList[index];
                  double total = double.parse(item["price"].toString()) *
                      double.parse(item["price"].toString());
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            image: NetworkImage(
                              item['photo'] ??
                                  "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    title: Text(item["product_name"] ?? "-"),
                    subtitle: Text(
                        "QTY : ${item['qty']}  Price : \$${item['price']}"),
                    trailing: Text("\$$total"),
                  );
                },
              ),
              const checkoutDataUsersItem(
                title: "Shiping Address",
                subtitle1: "07 xxx xx Apt 204",
                subtitle2: "New York, United Ststes",
              ),
              const checkoutDataUsersItem(
                title: "Shiping Method",
                subtitle1: "Standart - 2 weeks",
              ),
              const checkoutDataUsersItem(
                title: "Payment",
                subtitle1: "MasterCard ***** 4910",
              ),
              const checkoutDataUsersItem(
                title: "Promo code",
                subtitle1: "no promo code,",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Wrap(
          children: [
            const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Subtotal : \$214.14"),
                      Text("Shiping \$4.74"),
                      Text("Tax : 10%"),
                      Text("Promocode 50% off"),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                    ),
                    Text(
                      "\$109.44",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 10,
            ),
            QButton(label: "Print", onPressed: () {}),
          ],
        ),
      ),
    );
  }

  @override
  State<OrderDetailView> createState() => OrderDetailController();
}
