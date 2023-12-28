import 'dart:math';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class firebasehelper {
  static firebasehelper instance = firebasehelper();

  Future<String> uploadFile(
      {required String selectedfile,
      required Uint8List selectedImageInByte}) async {
    String imageUrl = '';
    try {
      firebase_storage.UploadTask uploadTask;

      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('images')
          .child('/' + selectedfile);

      final metadata =
          firebase_storage.SettableMetadata(contentType: 'image/jpeg');

      //uploadTask = ref.putFile(File(file.path));
      uploadTask = ref.putData(selectedImageInByte, metadata);

      await uploadTask.whenComplete(() => null);
      imageUrl = await ref.getDownloadURL();
     
    } catch (e) {}
    return imageUrl;
  }

  Future<List<String>> getAllImages() async {
    List<String> imageUrls = [];
    try {
      firebase_storage.ListResult result = await firebase_storage
          .FirebaseStorage.instance
          .ref()
          .child('images')
          .listAll();

      for (firebase_storage.Reference ref in result.items) {
        String imageUrl = await ref.getDownloadURL();
        imageUrls.add(imageUrl);
       
      }
    } catch (e) {
      print('Error getting all images: $e');
    }
    return imageUrls;
  }
}
