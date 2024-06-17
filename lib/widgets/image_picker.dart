import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Center(child:file==null? const Text('Image not Picked.'):
              Image.file(File(file!.path),
              fit: BoxFit.cover,
              )
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                  print('Image Picked');
                  print(photo!.path);
                },
                child: const Text('Pick Image')),

            const SizedBox(height: 20,),

            Row(
              children: [
                for(int i=0;i<files!.length;i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.greenAccent.shade200,
                      // child: files![i]==null?Text('Image not Picked'):Image.file(File(files![i].path)),
                      child: Image.file(File(files![i].path)),
                    ),
                  ),
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  final List<XFile> photos =
                  await _picker.pickMultiImage();
                  setState(() {
                    files = photos;
                  });
                  print('Image Picked');
                  for(int i=0;i<files!.length;i++){
                    print(files![i].path);
                  }
                },
                child: const Text('Pick Images'))
          ],
        ),
      ),
    );
  }
}
