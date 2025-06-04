import 'package:firebase_database/firebase_database.dart';

class FirebaseDbService {
  final FirebaseDatabase _database = FirebaseDatabase.instance;

  Future<void> create({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    final DatabaseReference ref = _database.ref().child(path);
    await ref.set(data);
  }

  Future<Map<String, dynamic>?> read({
    required String path,
  }) async {
    final DatabaseReference ref = _database.ref().child(path);
    final snapshot = await ref.get();
    if (snapshot.exists) {
      return snapshot.value as Map<String, dynamic>;
    }
    return null;
  }

  Future<void> update({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    final DatabaseReference ref = _database.ref().child(path);
    await ref.update(data);
  }

  Future<void> delete({
    required String path,
  }) async {
    final DatabaseReference ref = _database.ref().child(path);
    await ref.remove();
  }
}
