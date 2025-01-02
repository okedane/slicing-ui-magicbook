import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';

class OrderListDeliveredItems extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  const OrderListDeliveredItems({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) => const Divider(),
      padding: const EdgeInsets.all(12.0),
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var item = items[index];
        return InkWell(
          onTap: () => Get.to(OrderDetailView(
            item: item,
          )),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "#${item['id']}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${item['create_at']}"),
                Text("${item["payment_method"]["name"]}"),
                Text("${item["courirer"]["name"]}"),
              ],
            ),
            trailing: Text(
              "\$${item['total']}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        );
      },
    );
  }
}
