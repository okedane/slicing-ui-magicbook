import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import 'package:magic_book/module/checkout/widget/checkout_data_user_item.dart';
import '../controller/checkout_controller.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  Widget build(context, CheckoutController controller) {
    controller.view = this;
    final cartController = CartController.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
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
                itemCount: cartController.products.length,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = cartController.products[index];
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
                              item['photo'],
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    title: Text(item["product_name"]),
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
            QButton(label: "Checkout", onPressed: () {}),
          ],
        ),
      ),
    );
  }

  @override
  State<CheckoutView> createState() => CheckoutController();
}
