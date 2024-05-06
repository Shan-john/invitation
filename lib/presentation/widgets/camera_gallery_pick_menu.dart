import 'dart:math';
import 'dart:typed_data';
 
import 'package:gap/gap.dart';
import 'package:invitation/presentation/Screen/pages/all_image_veiw_screen.dart';
import 'package:invitation/routes.dart';
import 'package:invitation/service/firebasehelper.dart';

import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
/// **Selectionmenu Class Documentation**
///
/// The `Selectionmenu` class is a StatefulWidget that provides a dialog for selecting images either from the camera or gallery.
/// It uses the `_mySelectionmenu` state to manage the selected image and file details.
///
/// ## Usage
///
/// ```dart
/// Selectionmenu selectionMenu = Selectionmenu();
/// ```
class Selectionmenu extends StatefulWidget {
  /// Constructor for the `Selectionmenu` class.
  ///
  /// The [key] parameter is used to provide a key for the widget.
  const Selectionmenu({super.key});

  @override
  State<Selectionmenu> createState() => _mySelectionmenu();
}

/// **_mySelectionmenu State Documentation**
///
/// The `_mySelectionmenu` state manages the selected image and file details.
/// It includes a function to capture images from the gallery and a build method for rendering the dialog.
class _mySelectionmenu extends State<Selectionmenu> {
  // Add the function to upload to Firebase or other actions

  /// The name of the selected file.
  // String selectedfile = "";

  // /// The selected image in bytes.
  // Uint8List? selectedImageInByte;

  // /// Captures an image from the gallery using the `ImagePickerWeb` package.
  // Future<void> captureImageFromGallery() async {
  //   var item = await ImagePickerWeb.getImageAsBytes();

  //   if (item != null) {
  //     setState(() {
  //       selectedfile =
  //           "${DateTime.now().millisecondsSinceEpoch + Random().nextInt(100000)}.jpeg";
  //       selectedImageInByte = item;
  //     });

  //     // Replace 'firebasehelper' with the actual class that handles Firebase uploads
  //     firebasehelper.instance.uploadFile(
  //         selectedImageInByte: selectedImageInByte!,
  //         selectedfile: selectedfile);
  //   }
  // }
/// The list of selected files.
List<String> selectedFiles = [];

/// The list of selected images in bytes.
List<Uint8List> selectedImagesInBytes = [];

/// Captures images from the gallery using the `ImagePickerWeb` package.
Future<void> captureImagesFromGallery() async {
  List<Uint8List>? items = await ImagePickerWeb.getMultiImagesAsBytes();

  if (items != null && items.isNotEmpty) {
    for(int index =0 ;index<items.length;index++) {
      var temp = items[index];
      setState(() {
        String fileName = "${DateTime.now().millisecondsSinceEpoch + Random().nextInt(100000)}.jpeg";
        selectedFiles.add(fileName);
        selectedImagesInBytes.add(temp);
      });

      // Replace 'firebasehelper' with the actual class that handles Firebase uploads
       firebasehelper.instance.uploadFile(
          selectedImageInByte: selectedImagesInBytes[index],
          selectedfile: selectedFiles[index]);
    }
  }
}
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color.fromARGB(160, 41, 41, 41),
      child: SizedBox(
        height: 120,
        width: 380,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButtonforcameraGallery(
              icon: Icons.camera,
              label: "Upload images",
              ontap: () {
                captureImagesFromGallery();
              },
            ),
            TextButtonforcameraGallery(
              icon: Icons.photo,
              label: "Gallery",
              ontap: () {
                Routes.instance.push(widget: Gallery(), context: context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// **TextButtonforcameraGallery Class Documentation**
///
/// The `TextButtonforcameraGallery` class is a StatelessWidget that represents a custom text button with an icon.
///
/// ## Usage
///
/// ```dart
/// TextButtonforcameraGallery button = TextButtonforcameraGallery(
///   icon: Icons.camera,
///   label: "Pick / Take Image",
///   ontap: () {
///     // Handle button tap
///   },
/// );
/// ```
class TextButtonforcameraGallery extends StatelessWidget {
  /// The icon for the button.
  final IconData icon;

  /// The label for the button.
  final String label;

  /// The callback function to be executed on button tap.
  final Function() ontap;

  /// Constructor for the `TextButtonforcameraGallery` class.
  ///
  /// The [key] parameter is used to provide a key for the widget.
  const TextButtonforcameraGallery({
    super.key,
    required this.icon,
    required this.label,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(20),
            Icon(
              icon,
              size: 40,
              color: const Color.fromARGB(255, 222, 225, 255),
            ),
            const Gap(20),
            Text(
              label,
              style: const TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
