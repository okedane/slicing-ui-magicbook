import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import '../view/checkout_view.dart';

class CheckoutController extends State<CheckoutView> {
  static late CheckoutController instance;
  late CheckoutView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> orderList = [
    {
      "id": 1,
      "create_at": "2024-12-29",
      "shipping_address": {
        "name": "John Doe",
        "detail": "123 Main Street",
      },
      "courirer": {
        "name": "J&T",
        "detail": "Same Day Shipping",
      },
      "payment_method": {
        "name": "Debit Card",
        "detail": "Mandiri",
      },
      "items": [
        {"id": 101, "product_name": "Lamp", "qty": 2, "price": 45.0},
        {"id": 102, "product_name": "Chair", "qty": 1, "price": 150.0},
      ],
      "total": 240.0,
      "status": "Shipping",
    },
    {
      "id": 2,
      "create_at": "2024-12-28",
      "shipping_address": {
        "name": "Jane Smith",
        "detail": "456 Oak Avenue",
      },
      "courirer": {
        "name": "SiCepat",
        "detail": "Regular Shipping",
      },
      "payment_method": {
        "name": "Credit Card",
        "detail": "BCA",
      },
      "items": [
        {"id": 103, "product_name": "Table", "qty": 1, "price": 300.0},
      ],
      "total": 300.0,
      "status": "Pending",
    },
    {
      "id": 3,
      "create_at": "2024-12-27",
      "shipping_address": {
        "name": "Alice Johnson",
        "detail": "789 Pine Road",
      },
      "courirer": {
        "name": "JNE",
        "detail": "Express",
      },
      "payment_method": {
        "name": "Cash on Delivery",
        "detail": "N/A",
      },
      "items": [
        {"id": 104, "product_name": "Bookshelf", "qty": 1, "price": 200.0},
        {"id": 105, "product_name": "Notebook", "qty": 5, "price": 20.0},
      ],
      "total": 300.0,
      "status": "Delivered",
    },
    {
      "id": 4,
      "create_at": "2024-12-26",
      "shipping_address": {
        "name": "Michael Brown",
        "detail": "101 Maple Lane",
      },
      "courirer": {
        "name": "GoSend",
        "detail": "Instant",
      },
      "payment_method": {
        "name": "E-Wallet",
        "detail": "OVO",
      },
      "items": [
        {"id": 106, "product_name": "Headphones", "qty": 1, "price": 100.0},
        {"id": 107, "product_name": "Charger", "qty": 2, "price": 25.0},
      ],
      "total": 150.0,
      "status": "Processing",
    },
    {
      "id": 5,
      "create_at": "2024-12-25",
      "shipping_address": {
        "name": "Emily Davis",
        "detail": "202 Elm Street",
      },
      "courirer": {
        "name": "Anteraja",
        "detail": "Next Day",
      },
      "payment_method": {
        "name": "Bank Transfer",
        "detail": "BNI",
      },
      "items": [
        {"id": 108, "product_name": "Monitor", "qty": 1, "price": 500.0},
      ],
      "total": 500.0,
      "status": "Shipping",
    },
    {
      "id": 6,
      "create_at": "2024-12-24",
      "shipping_address": {
        "name": "Chris Wilson",
        "detail": "333 Birch Court",
      },
      "courirer": {
        "name": "J&T",
        "detail": "Economy",
      },
      "payment_method": {
        "name": "Debit Card",
        "detail": "BRI",
      },
      "items": [
        {"id": 109, "product_name": "Keyboard", "qty": 1, "price": 75.0},
        {"id": 110, "product_name": "Mouse", "qty": 1, "price": 25.0},
      ],
      "total": 100.0,
      "status": "Pending",
    },
    {
      "id": 7,
      "create_at": "2024-12-23",
      "shipping_address": {
        "name": "Olivia Martinez",
        "detail": "555 Cedar Way",
      },
      "courirer": {
        "name": "JNE",
        "detail": "Regular",
      },
      "payment_method": {
        "name": "E-Wallet",
        "detail": "ShopeePay",
      },
      "items": [
        {"id": 111, "product_name": "Fan", "qty": 1, "price": 150.0},
      ],
      "total": 150.0,
      "status": "Delivered",
    },
    {
      "id": 8,
      "create_at": "2024-12-22",
      "shipping_address": {
        "name": "Sophia White",
        "detail": "777 Aspen Circle",
      },
      "courirer": {
        "name": "GoSend",
        "detail": "Same Day",
      },
      "payment_method": {
        "name": "Credit Card",
        "detail": "CIMB",
      },
      "items": [
        {"id": 112, "product_name": "Speaker", "qty": 1, "price": 200.0},
      ],
      "total": 200.0,
      "status": "Processing",
    },
    {
      "id": 9,
      "create_at": "2024-12-21",
      "shipping_address": {
        "name": "Liam Walker",
        "detail": "999 Walnut Lane",
      },
      "courirer": {
        "name": "Anteraja",
        "detail": "Instant",
      },
      "payment_method": {
        "name": "Bank Transfer",
        "detail": "Permata",
      },
      "items": [
        {"id": 113, "product_name": "Router", "qty": 1, "price": 250.0},
      ],
      "total": 250.0,
      "status": "Shipping",
    },
    {
      "id": 10,
      "create_at": "2024-12-20",
      "shipping_address": {
        "name": "James Hall",
        "detail": "888 Spruce Road",
      },
      "courirer": {
        "name": "SiCepat",
        "detail": "Next Day",
      },
      "payment_method": {
        "name": "Cash on Delivery",
        "detail": "N/A",
      },
      "items": [
        {"id": 114, "product_name": "Smartphone", "qty": 1, "price": 800.0},
      ],
      "total": 800.0,
      "status": "Delivered",
    },
  ];
}
