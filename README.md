# mgbilling

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## directory structure :

lib/
├── main.dart
├── core/
│   ├── constants/
│   ├── error/
│   ├── utils/
│   └── widgets/
├── features/
│   ├── inventory/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   │   └── product_local_datasource.dart
│   │   │   ├── models/
│   │   │   │   └── product_model.dart
│   │   │   └── repositories/
│   │   │       └── product_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   └── product.dart
│   │   │   ├── repositories/
│   │   │   │   └── product_repository.dart
│   │   │   └── usecases/
│   │   │       └── manage_inventory.dart
│   │   ├── presentation/
│   │   │   ├── viewmodels/
│   │   │   │   └── inventory_viewmodel.dart
│   │   │   ├── screens/
│   │   │   │   └── inventory_screen.dart
│   │   │   └── widgets/
│   │   │       └── product_item_tile.dart
│   │   └── inventory_module.dart
│   ├── billing/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   │   └── billing_local_datasource.dart
│   │   │   ├── models/
│   │   │   │   └── bill_model.dart
│   │   │   └── repositories/
│   │   │       └── billing_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   └── bill.dart
│   │   │   ├── repositories/
│   │   │   │   └── billing_repository.dart
│   │   │   └── usecases/
│   │   │       └── generate_bill.dart
│   │   ├── presentation/
│   │   │   ├── viewmodels/
│   │   │   │   └── billing_viewmodel.dart
│   │   │   ├── screens/
│   │   │   │   └── billing_screen.dart
│   │   │   └── widgets/
│   │   │       └── bill_summary_card.dart
│   │   └── billing_module.dart
├── services/
│   └── database/
│       └── sqlite_service.dart
└── app.dart



create database table, next -CRUD


[text](https://www.figma.com/community/file/1281501326165558581/inventory-management-system)