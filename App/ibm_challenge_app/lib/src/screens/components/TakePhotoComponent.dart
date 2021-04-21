import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakePhotoComponent extends StatefulWidget {

  final bool isNew;

  const TakePhotoComponent({Key key, this.isNew}) : super(key: key);
  @override
  _TakePhotoComponent createState() => _TakePhotoComponent();
}

class _TakePhotoComponent extends State<TakePhotoComponent> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          _image == null
              ? Container(
                  margin: EdgeInsets.only(top: 20,bottom: 20),
                  child: Text('No image selected.'),
                )
              : Container(
              height: 200,
              child: Image.file(_image)
          ),
          ElevatedButton(
            onPressed: widget.isNew ? getImage : getImageGallery,
            child: widget.isNew ?Text('Tomar foto'):Text('Seleccionar foto'),
          )
        ],
      ),
    );
  }
}