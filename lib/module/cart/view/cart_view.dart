import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magic_book/core.dart';
import 'package:magic_book/module/cart/widget/cart_product_grid_view.dart';
import 'package:magic_book/module/cart/widget/cart_product_list_item.dart';
import '../controller/cart_controller.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  Widget build(context, CartController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5.0,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "FILTERS",
                              style: GoogleFonts.roboto(
                                fontSize: 12.0,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.sort,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "SORT BY",
                              style: GoogleFonts.roboto(
                                fontSize: 12.0,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.tune,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                IconButton(
                  onPressed: () => controller.updateMode(),
                  icon: Icon(
                    controller.gridMode ? Icons.grid_3x3 : Icons.list,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            if (controller.gridMode == false)
              //list_builder
              Expanded(
                child: ListView.builder(
                  itemCount: controller.products.length,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.products[index];
                    return CartProductListItem(item: item);
                  },
                ),
              ),
            if (controller.gridMode == true)
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0 / 1.7,
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: controller.products.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.products[index];
                    return cartProductGridItem(item: item);
                  },
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1.0,
              color: backgroundTextFieldcolor,
            ),
          ),
        ),
        padding: const EdgeInsets.only(
          top: 0,
          right: 20,
          left: 20,
          bottom: 5,
        ),
        child: Wrap(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Items",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "${controller.products.length}",
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "\$${controller.total}",
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 12.0,
            ),
            QButton(
              label: "Checkout",
              onPressed: () => Get.to(const CheckoutView()),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
