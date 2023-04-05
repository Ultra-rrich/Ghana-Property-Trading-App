import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class StorageMethods {
  static Future<String> uploadFile(File file, String fileName) async {
    Reference storageReference =
        FirebaseStorage.instance.ref().child(fileName);
    UploadTask uploadTask = storageReference.putFile(file);
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
    String downloadUrl = await taskSnapshot.ref.getDownloadURL();
    return downloadUrl;
  }
}
