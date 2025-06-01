class Inventory {
  final int? id;
  final String name;
  final int quantity;
  final double price;
  final String? unit;
  final String createdAt;

  Inventory({
    this.id,
    required this.name,
    required this.quantity,
    required this.price,
    this.unit,
    required this.createdAt,
  });

  // Convert a Inventory object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
      'price': price,
      'unit': unit,
      'created_at': createdAt,
    };
  }

  // Convert a Map object into an Inventory object
  factory Inventory.fromMap(Map<String, dynamic> map) {
    return Inventory(
      id: map['id'],
      name: map['name'],
      quantity: map['quantity'],
      price: map['price'],
      unit: map['unit'],
      createdAt: map['created_at'],
    );
  }
}
