import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class StorageMethods {
  StorageMethods(this._auth, this._storage);
  Future<String> uploadImageToStorage(
      String childName, Uint8List file, bool isPost,) async {

    Reference ref =
        _storage.ref().child(childName).child(_auth.currentUser!.uid);
    if (isPost) {
      final String id = const Uuid().v1();
      ref = ref.child(id);
    }
    final UploadTask uploadTask = ref.putData(
      file,
    );

    final TaskSnapshot snapshot = await uploadTask;
    final String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  final FirebaseAuth _auth;
  final FirebaseStorage _storage;
}
