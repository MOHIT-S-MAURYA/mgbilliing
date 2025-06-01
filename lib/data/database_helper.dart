// database_helper.dart
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'models/inventory.dart';
import 'models/bill.dart';
import 'models/bill_item.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('billing_app.db');
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, fileName);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    // Create tables
    await db.execute('''
      CREATE TABLE inventory (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        quantity INTEGER NOT NULL,
        price REAL NOT NULL,
        unit TEXT,
        created_at TEXT DEFAULT CURRENT_TIMESTAMP
      )
    ''');

    await db.execute('''
      CREATE TABLE bills (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        customer_name TEXT,
        total_amount REAL NOT NULL,
        created_at TEXT DEFAULT CURRENT_TIMESTAMP
      )
    ''');

    await db.execute('''
      CREATE TABLE bill_items (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        bill_id INTEGER NOT NULL,
        inventory_id INTEGER NOT NULL,
        quantity INTEGER NOT NULL,
        price REAL NOT NULL,
        FOREIGN KEY (bill_id) REFERENCES bills(id),
        FOREIGN KEY (inventory_id) REFERENCES inventory(id)
      )
    ''');
  }

  // CRUD for Inventory
  Future<int> insertInventory(Inventory inventory) async {
    final db = await database;
    return await db.insert('inventory', inventory.toMap());
  }

  Future<List<Inventory>> getInventory() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('inventory');
    return List.generate(maps.length, (i) {
      return Inventory.fromMap(maps[i]);
    });
  }

  Future<int> updateInventory(Inventory inventory) async {
    final db = await database;
    return await db.update(
      'inventory',
      inventory.toMap(),
      where: 'id = ?',
      whereArgs: [inventory.id],
    );
  }

  Future<int> deleteInventory(int id) async {
    final db = await database;
    return await db.delete('inventory', where: 'id = ?', whereArgs: [id]);
  }

  // CRUD for Bill
  Future<int> insertBill(Bill bill) async {
    final db = await database;
    return await db.insert('bills', bill.toMap());
  }

  Future<List<Bill>> getBills() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('bills');
    return List.generate(maps.length, (i) {
      return Bill.fromMap(maps[i]);
    });
  }

  Future<int> updateBill(Bill bill) async {
    final db = await database;
    return await db.update(
      'bills',
      bill.toMap(),
      where: 'id = ?',
      whereArgs: [bill.id],
    );
  }

  Future<int> deleteBill(int id) async {
    final db = await database;
    return await db.delete('bills', where: 'id = ?', whereArgs: [id]);
  }

  // CRUD for BillItem
  Future<int> insertBillItem(BillItem billItem) async {
    final db = await database;
    return await db.insert('bill_items', billItem.toMap());
  }

  Future<List<BillItem>> getBillItems(int billId) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'bill_items',
      where: 'bill_id = ?',
      whereArgs: [billId],
    );
    return List.generate(maps.length, (i) {
      return BillItem.fromMap(maps[i]);
    });
  }

  Future<int> updateBillItem(BillItem billItem) async {
    final db = await database;
    return await db.update(
      'bill_items',
      billItem.toMap(),
      where: 'id = ?',
      whereArgs: [billItem.id],
    );
  }

  Future<int> deleteBillItem(int id) async {
    final db = await database;
    return await db.delete('bill_items', where: 'id = ?', whereArgs: [id]);
  }

  // Close the database
  Future close() async {
    final db = await database;
    db.close();
  }
}
