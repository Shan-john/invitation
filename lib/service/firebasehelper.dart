// import 'dart:io';
// import 'dart:typed_data';

// import 'package:firebase_storage/firebase_storage.dart' as firabase_storage;

// Future<void> uploadImageAndSaveUrl(File? image) async {
//     try {
//       if (image == null) {
//         print('No image selected.');
//         return;
//       }

//       // Upload the image to Firebase Storage

//       TaskSnapshot taskSnapshot = await FirebaseStorage.instance
//           .ref('images/${DateTime.now().millisecondsSinceEpoch}.jpg')
//           .putFile(image);

//       // Get the download URL
//       // String imageUrl = await taskSnapshot.ref.getDownloadURL();

//       // Save the image URL in Firestore under a specific document
//       // String documentId = 'MHy6LgInfglnZB5G7zlg'; // Set a unique identifier
//       // await FirebaseFirestore.instance
//       //     .collection('Userimage')
//       //     .doc(documentId)
//       //     .set({'image_url': imageUrl});

//     print('Image uploaded and URL saved in Firestore.');
//   } catch (e) {
//     print('Error uploading image: $e');
//   }
// // }

// Future<String> uploadFile(
//     {required String selectedFile,
//     required Uint8List selectedImageInBytes}) async {
//   String imageUrl = '';
//   try {
//     firabase_storage.UploadTask uploadTask;

//     firabase_storage.Reference ref = firabase_storage.FirebaseStorage.instance
//         .ref('images/${DateTime.now().millisecondsSinceEpoch}.jpg');

//     final metadata =
//         firabase_storage.SettableMetadata(contentType: 'image/jpeg');

//     //uploadTask = ref.putFile(File(file.path));
//     uploadTask = ref.putData(selectedImageInBytes, metadata);

//     await uploadTask.whenComplete(() => null);
//     imageUrl = await ref.getDownloadURL();
//   } catch (e) {
//     print(e);
//   }
//   return imageUrl;
// }
