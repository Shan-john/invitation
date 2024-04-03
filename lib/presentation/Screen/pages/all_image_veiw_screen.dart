 

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:invitation/service/firebasehelper.dart';

enum layout {
  mobile,
  desktop;
}
class Gallery extends StatefulWidget {
  
  const Gallery({super.key, });

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<String> Imagedata = [];
  List<String> reversediamgeData = [];
  bool isloading = true;
  bool hasNotData = true;
  @override
  void initState() {
    fetchdata();

    super.initState();
  }

  void fetchdata() async {
    try {
      Imagedata = await firebasehelper.instance.getAllImages();
      reversediamgeData = Imagedata.reversed.toList();
      setState(() {
        isloading = false;
        hasNotData = false;
      });
    } catch (e) {
      setState(() {
        isloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: isloading != true && hasNotData != true
          ? ListView(
              children: [
                gridpro(hsize: size.height, imagelist: reversediamgeData,)
              ],
            )
          : isloading == true
              ? Center(
                  child: Container(
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: const CircularProgressIndicator(
                      color: Color.fromARGB(
                        255,
                        233,
                        205,
                        79,
                      ),
                    ),
                  ),
                )
              : hasNotData == true
                  ? const Center(
                      child: SizedBox(
                        height: 20,
                        child: Text(
                          "No image found.!",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 221, 6, 6),
                          ),
                        ),
                      ),
                    )
                  : null,
    );
  }
}

Widget gridpro({
  required List<String> imagelist,
  required double hsize,
 
}) {
  int imagelistlength = imagelist.length; //product list count

  return GridView.builder(
    scrollDirection: Axis.vertical,
    primary: false,
    shrinkWrap: true,
    physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.77,
    ),
    itemCount: imagelistlength, //count
    itemBuilder: (context, index) {
      var hsize = MediaQuery.of(context).size.height;
      var wsize = MediaQuery.of(context).size.width;
      // calling card template
      return bestproductcard(
        context: context,
        fheight: hsize,
        fwidth: wsize,
        index: index,
        imagelist: imagelist,
      );
    },
  );
}

//template for singel producgt card
Widget bestproductcard(
    {required List<String> imagelist,
    required index,
    required BuildContext context,
    required double fheight,
    required double fwidth}) {
  final imageurl = imagelist[index];

  return InkWell(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: Image.network(imageurl),
            );
          });
    },
    child: Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: HexColor("#242628"),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: HexColor("#343537"),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(
                -3,
                -3,
              ),
            ),
            BoxShadow(
              color: HexColor("#161616"),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(
                3,
                3,
              ),
            ),
          ],
          image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: NetworkImage(imageurl)
              // if image in null fom firebase
              ),
        ),
      ),
    ),
  );
}
