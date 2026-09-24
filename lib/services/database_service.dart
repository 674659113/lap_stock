import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Collection reference
  final String collectionPath = 'items';

  // Create - Add a new item
  Future<void> addItem(Map<String, dynamic> data) async {
    try {
      await _db.collection(collectionPath).add(data);
    } catch (e) {
      print('Error adding item: $e');
    }
  }

  // Read - Get a stream of items
  Stream<QuerySnapshot> getItems() {
    return _db.collection(collectionPath).snapshots();
  }

  // Update - Update an existing item
  Future<void> updateItem(String id, Map<String, dynamic> data) async {
    try {
      await _db.collection(collectionPath).doc(id).update(data);
    } catch (e) {
      print('Error updating item: $e');
    }
  }

  // Delete - Remove an item
  Future<void> deleteItem(String id) async {
    try {
      await _db.collection(collectionPath).doc(id).delete();
    } catch (e) {
      print('Error deleting item: $e');
    }
  }
}
