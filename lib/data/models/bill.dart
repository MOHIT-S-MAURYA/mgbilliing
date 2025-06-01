class Bill {
  final int? id;
  final String customerName;
  final double totalAmount;
  final String createdAt;

  Bill({
    this.id,
    required this.customerName,
    required this.totalAmount,
    required this.createdAt,
  });

  // Convert a Bill object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'customer_name': customerName,
      'total_amount': totalAmount,
      'created_at': createdAt,
    };
  }

  // Convert a Map object into a Bill object
  factory Bill.fromMap(Map<String, dynamic> map) {
    return Bill(
      id: map['id'],
      customerName: map['customer_name'],
      totalAmount: map['total_amount'],
      createdAt: map['created_at'],
    );
  }
}
