import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class FirebaseStorageImageMethods {
  final FirebaseAuth _auth;
  final FirebaseStorage _storage;
  FirebaseStorageImageMethods(this._auth, this._storage);

  Future<List<String>> uploadImageToStorage(
    List<Uint8List> files,
    bool isPost,
    String childName,
  ) async {
    final List<String> downloadUrls = [];
    try {
      for (final Uint8List file in files) {
        Reference ref =
            _storage.ref().child(childName).child(_auth.currentUser!.uid);
        if (isPost) {
          final String id = const Uuid().v1();
          ref = ref.child(id);
        }
        final UploadTask uploadTask = ref.putData(file);
        final TaskSnapshot snapshot = await uploadTask;
        final String downloadUrl = await snapshot.ref.getDownloadURL();

        downloadUrls.add(downloadUrl);
      }
    } catch (e) {
      throw FirebaseException(
        plugin: 'firebase_storage',
        message: "Ошибка при загрузке изображений: $e",
      );
    }
    return downloadUrls;
  }
}
