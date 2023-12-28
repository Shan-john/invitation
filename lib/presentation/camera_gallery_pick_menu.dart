
import 'dart:typed_data';
import 'package:invitation/service/firebasehelper.dart';

 
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

class Selectionmenu extends StatefulWidget {
  Selectionmenu({super.key});

  @override
  State<Selectionmenu> createState() => _mySelectionmenu();
}

class _mySelectionmenu extends State<Selectionmenu> {
  // Add the function to upload to Firebase or other actions
  String selectedfile = "";
  Uint8List? selectedImageInByte;
  List<Uint8List> pickedImagesInBytes = [];
  int imageCounts = 0;
  List<String> imageUrls = [];

 


  Future<void> captureImageFromGallery() async {
    var item = await ImagePickerWeb.getImageAsBytes();

    if (item != null) {
     
      setState(() {
        selectedfile = "${DateTime.now().millisecondsSinceEpoch}.jpeg";
        selectedImageInByte = item;
      });

   firebasehelper.instance.uploadFile(selectedImageInByte: selectedImageInByte!,selectedfile: selectedfile);
   
    } else {
      // User canceled the camera capture
    }
  }


  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color.fromARGB(160, 41, 41, 41),
      child: SizedBox(
        height: 120,
        //width: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
       
                      captureImageFromGallery();
                 
              },
              child: Center(
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  
                    Icon(
                      Icons.camera,
                      size: 40,
                      color: Color.fromARGB(255, 222, 225, 255),
                    ),
                      Icon(
                      Icons.photo_library_sharp,
                      size: 35,
                      color: Color.fromARGB(255, 222, 225, 255),
                    ),
                     Text(
                      "Pick / click image ",
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
