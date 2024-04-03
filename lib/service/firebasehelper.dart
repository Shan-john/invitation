import 'dart:math';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
/// **firebasehelper Class Documentation**
///
/// The `firebasehelper` class provides helper methods for interacting with Firebase Storage.
/// It is a singleton class, meaning there is only one instance throughout the application.
///
/// ## Usage
///
/// ```dart
/// // Example usage of firebasehelper instance
/// firebasehelper helper = firebasehelper.instance;
/// ```
class firebasehelper {
  /// Singleton instance of the `firebasehelper` class.
  static firebasehelper instance = firebasehelper();

  /// Uploads a file to Firebase Storage.
  ///
  /// The [selectedfile] parameter is the name of the file.
  /// The [selectedImageInByte] parameter is the byte representation of the selected image.
  ///
  /// Returns a `Future` with the download URL of the uploaded file.
  Future<String> uploadFile({
    required String selectedfile,
    required Uint8List selectedImageInByte,
  }) async {
    String imageUrl = '';
    try {
      firebase_storage.UploadTask uploadTask;

      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('images')
          .child('/' + selectedfile);

      final metadata =
          firebase_storage.SettableMetadata(contentType: 'image/jpeg');

      uploadTask = ref.putData(selectedImageInByte, metadata);

      await uploadTask.whenComplete(() => null);
      imageUrl = await ref.getDownloadURL();
    } catch (e) {
      print('Error uploading file: $e');
    }
    return imageUrl;
  }

  /// Retrieves all images from Firebase Storage.
  ///
  /// Returns a `Future` with a list of download URLs for all images.
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
