import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import 'package:magic_book/module/order_list/widget/order_list_delivered_item.dart';
import 'package:magic_book/module/order_list/widget/order_list_pending_item.dart';
import 'package:magic_book/module/order_list/widget/order_list_shipped_item.dart';

class OrderListView extends StatefulWidget {
  const OrderListView({super.key});

  Widget build(context, OrderListController controller) {
    controller.view = this;
    //Scaffold_Tabbar_horizontal
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Shipped",
              ),
              Tab(
                text: "Delivered",
              ),
            ],
          ),
          title: const Text('Order List'),
        ),
        body: TabBarView(
          children: [
            OrderListPendingItems(
              items: controller.pendingOrderItems,
            ),
            OrderListShippedItems(
              items: controller.shippedOrderItems,
            ),
            OrderListDeliveredItems(
              items: controller.deliverdeOrderItems,
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<OrderListView> createState() => OrderListController();
}
