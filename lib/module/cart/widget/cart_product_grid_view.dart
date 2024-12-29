import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class cartProductGridItem extends StatelessWidget {
  final Map<String, dynamic> item;
  const cartProductGridItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(
                    item["photo"],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              ),
              child: const Stack(
                children: [
                  Positioned(
                    right: 6,
                    top: 6,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            item["product_name"],
            style: TextStyle(
              fontSize: 16.0,
              color: mainTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            item["category"],
            style: TextStyle(
              color: hintTextColor,
              fontSize: 12.0,
            ),
          ),
          Text(
            "\$${item["price"]}",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: mainTextColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => controller.incremenetQty(item),
                icon: Icon(
                  MdiIcons.plusBox,
                  size: 32.0,
                  color: hintTextColor,
                ),
              ),
              SizedBox(
                height: 50,
                width: 20.0,
                child: Center(
                  child: Text(
                    "${item["qty"]}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => controller.decrementQty(item),
                icon: Icon(
                  MdiIcons.minusBox,
                  size: 32.0,
                  color: hintTextColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
