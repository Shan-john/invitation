
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
 
import 'package:firebase_storage/firebase_storage.dart';

 
import 'package:image_picker/image_picker.dart';

 

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB8RWCMUz213zmPtAZB_NVq4zBPqk-dXAI",
      appId: "1:309684858289:web:b50cfe39b94b564783e190",
      messagingSenderId: "309684858289",
      projectId: "wedding-invitation-card-sj",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      floatingActionButton:  FloatingActionButton(
              //  backgroundColor: Colors.transparent,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Selectionmenu();
                    });
              },
              tooltip: 'Pick Image',
              child: Icon(
                Icons.add_photo_alternate_outlined,
                size: 34,
                color: const Color.fromARGB(255, 99, 99, 99),
              ),
            ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Section 1
            Container(
              child: Column(
                children: [
                  Image.network(
                    "https://i.pinimg.com/564x/ef/62/5c/ef625cfde997b24a0188076813a85545.jpg",
                    // height: 100, // Set your desired height
                    // width: 100, // Set your desired width
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleContainer("Date", "10"),
                      CircleContainer("Month", "Oct"),
                      CircleContainer("Year", "2023"),
                    ],
                  ),
                ],
              ),
            ),
Gap(120),
            // Section 2
            Container(
              child: Column(
                children: [
                  Text(
                    "Save the Date\nfor the Wedding\nCelebration!",
                    style: TextStyle(fontSize: 27,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Save the date\nShone John and Sneha Ann Paul's\nspecial day on [Wedding Date].\nJoin us in celebrating a new chapter!",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Gap(30),
                  imagesection(
                    alignmentGeometry: Alignment.centerRight,
                    heigth: 350,
                    image: "assests/img1.gif",
                   
                  ),
                   imagesection(
                    alignmentGeometry: Alignment.centerLeft,
                    heigth: 350,
                    image: "assests/vdo.gif",
                   
                  ),
                  imagesection(
                    alignmentGeometry: Alignment.centerRight,
                    heigth: 350,
                    image: "assests/img2.jpg",
                   
                  ),
                 imagesection(
                    alignmentGeometry: Alignment.centerLeft,
                    heigth: 350,
                    image: "assests/img2.gif",
                   
                  ),
                  
                 
                ],
              ),
            ),
Gap(120),
            // Section 3
            Container(
              child: Column(
                children: [
                  Text(
                    "Discover\nOur Wedding Venues",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Join Us\nin Celebrating Love and Togetherness",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  imagesection(image: "assests/map.png", heigth: 350, alignmentGeometry: Alignment.centerLeft),
                  Text(
                    "Click on the link below\nExplore the location.",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Be there",
                    style: TextStyle(fontSize: 45,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  
                      VenueLink(
                          "Home", "https://goo.gl/maps/8DPjkZjbZbJPfWcv8"),
                          Gap(20),
                      VenueLink(
                          "Church", "https://goo.gl/maps/R39Z1GBjP5iwhr699"),
Gap(20),
                            VenueLink(
                          "Church", "https://goo.gl/maps/R39Z1GBjP5iwhr699"),
                  
                ],
              ),
            ),
 Gap(50),
            // Section 4
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Upcoming\nevents",
                    style: TextStyle(fontSize: 40,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                   
                  
                      EventTile("Event Title 1",
                          "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
                          Gap(20),
                      EventTile("Event Title 2",
                          "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
                   
                ],
              ),
            ),
Gap(120),
            // Section 5
            Container(
        
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                   
                     margin: EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 10),
                    child: Image.network(
                        "https://i.pinimg.com/564x/3a/35/14/3a35143c3e8c3fb2bdcab412e42f40e1.jpg"),
                      ),       
                  Container(
                    height: 2,
                    color: const Color.fromARGB(255, 154, 209, 255), // or any color you prefer
                    margin: EdgeInsets.only(top: 50),
                  ),
                  Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class imagesection extends StatelessWidget {
  final String image;
  final double heigth;
  final AlignmentGeometry alignmentGeometry;
  const imagesection({
    super.key,
    required this.image,
    required this.heigth, required this.alignmentGeometry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignmentGeometry,
        height: heigth,
        margin: EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 10),
        child: Image.asset(image));
  }
}

class CircleContainer extends StatelessWidget {
  final String label;
  final String value;

  CircleContainer(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 255, 255, 255), // or any color you prefer
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}

class VenueLink extends StatelessWidget {
  final String label;
  final String url;

  VenueLink(this.label, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () =>
            launch(url), // import 'package:url_launcher/url_launcher.dart';
        child: Text(label,  style: TextStyle(color: Colors.black),),
      ),
    );
  }
}

class EventTile extends StatelessWidget {
  final String title;
  final String imageUrl;

  EventTile(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          imageUrl,
          height: 150,
          width: 150,
        ),
        Text(title,style: TextStyle(color: Colors.white),),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Column(
        children: [
          Text("Designed and Developed by", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),),     ),
          TextButton(
            onPressed: () => launch("https://github.com/Shan-john"),
            child: Text("Shan John",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),),    ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialLink(
                  "Instagram", "https://www.instagram.com/s_h_a_n_j_o_h_n"),
              SocialLink("LinkedIn", "https://www.linkedin.com/in/shan-john"),
              SocialLink("GitHub", "https://github.com/Shan-john"),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialLink extends StatelessWidget {
  final String label;
  final String url;

  SocialLink(this.label, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextButton(
        onPressed: () => launch(url),
        child: Text(label),
      ),
    );
  }
}

class Selectionmenu extends StatefulWidget {
  Selectionmenu({super.key});

  @override
  State<Selectionmenu> createState() => _mySelectionmenu();
}

class _mySelectionmenu extends State<Selectionmenu> {
  File? _image;

  final picker = ImagePicker();

  Future<void> _pickImageFromCamera() async {
    final pickedImage = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });

      // Upload the image to Firebase Storage and save the URL in Firestore

      _uploadImageAndSaveUrl();
    }
  }

  Future<void> _pickImageFromGallery() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });

      // Upload the image to Firebase Storage and save the URL in Firestore

      _uploadImageAndSaveUrl();
    }
  }

  Future<void> _uploadImageAndSaveUrl() async {
    try {
      if (_image == null) {
        print('No image selected.');
        return;
      }

      // Upload the image to Firebase Storage

      TaskSnapshot taskSnapshot = await FirebaseStorage.instance
          .ref('images/${DateTime.now().millisecondsSinceEpoch}.jpg')
          .putFile(_image!);

      // Get the download URL
      String imageUrl = await taskSnapshot.ref.getDownloadURL();

      // Save the image URL in Firestore under a specific document
      String documentId = 'MHy6LgInfglnZB5G7zlg'; // Set a unique identifier
      await FirebaseFirestore.instance
          .collection('Userimage')
          .doc(documentId)
          .set({'image_url': imageUrl});

      print('Image uploaded and URL saved in Firestore.');
    } catch (e) {
      print('Error uploading image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
    backgroundColor: Color.fromARGB(160, 41, 41, 41),
      child: SizedBox(
         height: 120, 
         width: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Row(
                children: [
                  TextButton.icon(
                    icon: Icon(
                      Icons.camera,
                      size: 40,
                      color:Color.fromARGB(255, 222, 225, 255),
                    ),
                    onPressed: _pickImageFromCamera,
                    label: Text(
                      "Camera",
                      style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                TextButton.icon(
                  icon: Icon(
                    Icons.photo_library_sharp,
                    size: 35,
                    color: Color.fromARGB(255, 222, 225, 255),
                  ),
                  onPressed: () {
                    print("clicked");
                    _pickImageFromGallery();
                  },
                  label: Text(
                    "Gallery",
                    style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}