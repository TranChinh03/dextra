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

  Future<DataSnapshot?> read({
    required String path,
  }) async {
    final DatabaseReference ref = _database.ref().child(path);
    final DataSnapshot snapshot = await ref.get();
    return snapshot.exists ? snapshot : null;
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

  DatabaseReference getReference({required String path}) {
    return _database.ref(path);
  }
}
