import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CartProductListItem extends StatelessWidget {
  final Map item;
  const CartProductListItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 96,
          width: 96,
          margin: const EdgeInsets.only(
            bottom: 12.0,
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: NetworkImage(
                item["photo"],
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item["product_name"],
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item["category"],
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
              Text(
                "\$${item["price"]}",
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Wrap(
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
        ),
      ],
    );
  }
}
