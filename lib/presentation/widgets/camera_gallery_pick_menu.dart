import 'dart:math';
import 'dart:typed_data';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/Screen/pages/all_image_veiw_screen.dart';
import 'package:invitation/service/firebasehelper.dart';

import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

class Selectionmenu extends StatefulWidget {
  const Selectionmenu({super.key});

  @override
  State<Selectionmenu> createState() => _mySelectionmenu();
}

class _mySelectionmenu extends State<Selectionmenu> {
  // Add the function to upload to Firebase or other actions
  String selectedfile = "";
  Uint8List? selectedImageInByte;

  Future<void> captureImageFromGallery() async {
    var item = await ImagePickerWeb.getImageAsBytes();

    if (item != null) {
      setState(() {
        selectedfile =
            "${DateTime.now().millisecondsSinceEpoch + Random().nextInt(100000)}.jpeg";
        selectedImageInByte = item;
      });

      firebasehelper.instance.uploadFile(
          selectedImageInByte: selectedImageInByte!,
          selectedfile: selectedfile);
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
          TextButtonforcameraGallery(icon: Icons.camera, label: "Pick / Take Image", ontap: (){
            captureImageFromGallery();
          }),

            
            TextButtonforcameraGallery(
                icon: Icons.photo,
                label: "Gallery",
                ontap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (cxt) => const Gallery( )));
                },),
          ],
        ),
      ),
    );
  }
}

class TextButtonforcameraGallery extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function() ontap;
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
