class BillItem {
  final int? id;
  final int billId;
  final int inventoryId;
  final int quantity;
  final double price;

  BillItem({
    this.id,
    required this.billId,
    required this.inventoryId,
    required this.quantity,
    required this.price,
  });

  // Convert a BillItem object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'bill_id': billId,
      'inventory_id': inventoryId,
      'quantity': quantity,
      'price': price,
    };
  }

  // Convert a Map object into a BillItem object
  factory BillItem.fromMap(Map<String, dynamic> map) {
    return BillItem(
      id: map['id'],
      billId: map['bill_id'],
      inventoryId: map['inventory_id'],
      quantity: map['quantity'],
      price: map['price'],
    );
  }
}
