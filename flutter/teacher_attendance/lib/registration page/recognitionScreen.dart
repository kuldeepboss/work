import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;

class RecognitionScreen extends StatefulWidget {
  const RecognitionScreen({Key? key}) : super(key: key);

  @override
  State<RecognitionScreen> createState() => _HomePageState();
}

class _HomePageState extends State<RecognitionScreen> {
  //TODO declare variables
  late ImagePicker imagePicker;
  File? _image;

  //TODO declare detector


  //TODO declare face recognizer

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imagePicker = ImagePicker();

    //TODO initialize face detector



    //TODO initialize face recognizer

  }

  //TODO capture image using camera
  _imgFromCamera() async {
    XFile? pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState((){
        _image = File(pickedFile.path);
        doFaceDetection();
      });
    }
  }

  //TODO choose image using gallery
  _imgFromGallery() async {
    XFile? pickedFile =
    await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState((){
        _image = File(pickedFile.path);
        doFaceDetection();
      });
    }
  }

  //TODO face detection code here

  doFaceDetection() async {
    //TODO remove rotation of camera images


    //TODO passing input to face detector and getting detected faces


    //TODO call the method to perform face recognition on detected faces
  }

  //TODO remove rotation of camera images
  removeRotation(File inputImage) async {
    final img.Image? capturedImage = img.decodeImage(await File(inputImage!.path).readAsBytes());
    final img.Image orientedImage = img.bakeOrientation(capturedImage!);
    return await File(_image!.path).writeAsBytes(img.encodeJpg(orientedImage));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _image != null
              ?
          Container(
            margin: const EdgeInsets.only(top: 100),
            width: screenWidth - 50,
            height: screenWidth - 50,
            child: Image.file(_image!),
          )
              : Container(
            margin: const EdgeInsets.only(top: 100),
            child: Image.asset(
              "images/logo.png",
              width: screenWidth - 100,
              height: screenWidth - 100,
            ),
          ),

          Container(
            height: 50,
          ),

          //TODO section which displays buttons for choosing and capturing images
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(200))),
                  child: InkWell(
                    onTap: () {
                      _imgFromGallery();
                    },
                    child: SizedBox(
                      width: screenWidth / 2 - 70,
                      height: screenWidth / 2 - 70,
                      child: Icon(Icons.image,
                          color: Colors.blue, size: screenWidth / 7),
                    ),
                  ),
                ),
                Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(200))),
                  child: InkWell(
                    onTap: () {
                      _imgFromCamera();
                    },
                    child: SizedBox(
                      width: screenWidth / 2 - 70,
                      height: screenWidth / 2 - 70,
                      child: Icon(Icons.camera,
                          color: Colors.blue, size: screenWidth / 7),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

