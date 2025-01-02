import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magic_book/core.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  Widget build(context, ProductListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 24.0,
          ),
        ),
        title: Column(
          children: [
            Text(
              "Flash Sale",
              style: GoogleFonts.roboto(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "13.4K items",
              style: TextStyle(
                fontSize: 13.0,
                color: hintTextColor,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                                "SORT BY",
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.sort,
                              size: 24.0,
                            ),
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
                                "FILTERS",
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.tune,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 1.4,
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          item["photo"],
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: mainTextColor,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            // color: Colors.black.withOpacity(0.4),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black54,
                                Colors.black45,
                                Colors.black38,
                                Colors.black26,
                                Colors.black12,
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          right: 6,
                          top: 6,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                item["product_name"],
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                item["category"],
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "\$${item["price"]}",
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductListView> createState() => ProductListController();
}
