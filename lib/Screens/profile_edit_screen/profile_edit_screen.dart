// 🎯 Dart imports:
import 'dart:io';
import 'dart:typed_data';

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

// 🌎 Project imports:
import './profile_pic_crop_screen.dart';
import '/Const/AppConst.dart';
import '/Models/UserModel.dart';
import '/data/user_repository.dart';

class ProfileEditScreen extends StatefulWidget {
  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  TextEditingController nameController, dateController;
  UserRepository userRepo = UserRepository();
  UserModel _user;

  @override
  void initState() {
    super.initState();
    _user = context.read<UserModel>();
    nameController = TextEditingController(text: _user.fullName);
    dateController = TextEditingController(text: '18/09/2021');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text('Edit Profile'),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: _user.photoUrl == null
                          ? AssetImage('assets/images/profile.png')
                          : NetworkImage(_user.photoUrl),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(5),
                  child: GestureDetector(
                    onTap: (){
                      _showImageSourceActionSheet(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(120)),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1, left: 1),
                        child: Icon(
                          AppIcons.edit_square_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          TextBox(
            controller: nameController,
            title: 'Name',
          ),
          TextBox(
            controller: dateController,
            title: 'DueDate',
          ),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(170, 52),
              primary: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: onSavePressed,
            child: Text(
              'Save',
              style: AppFontStyles.buttontext,
            ),
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }

  void onSavePressed() {
    if (_user.fullName != nameController.text && nameController.text != '') {
      userRepo.changeName(nameController.text);
    } else {
      print('Name not valid');
    }
    Navigator.pop(context);
  }

  void _getPhotoFromPickerAndUpload(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: source);
    if (pickedFile == null) {
      return;
    }
    final File _image = File(pickedFile.path);

    Uint8List croppedImage = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => FullScreenCrop(_image)));
    if(croppedImage == null){
      return;
    }

    final Directory systemTempDir = Directory.systemTemp;
    final File file = await new File('${systemTempDir.path}/foo.jpg').create();
    await file.writeAsBytes(croppedImage);

    
    userRepo.changeProfilePic(file);
  }

  void _showImageSourceActionSheet(BuildContext context) {
    // Function(ImageSource) selectImageSource = (imageSource) {
    //   context
    //       .read<ProfileBloc>()
    //       .add(OpenImagePicker(imageSource: imageSource));
    // };

    if (Platform.isIOS) {
      showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
          actions: [
            CupertinoActionSheetAction(
              child: Text('Camera'),
              onPressed: () async {
                Navigator.pop(context);
                _getPhotoFromPickerAndUpload(ImageSource.camera);
              },
            ),
            CupertinoActionSheetAction(
              child: Text('Gallery'),
              onPressed: () async {
                Navigator.pop(context);
                _getPhotoFromPickerAndUpload(ImageSource.gallery);
              },
            )
          ],
        ),
      );
    } else {
      showModalBottomSheet(
        context: context,
        builder: (context) => Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Camera'),
              onTap: () {
                Navigator.pop(context);
                _getPhotoFromPickerAndUpload(ImageSource.camera);
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Gallery'),
              onTap: () {
                Navigator.pop(context);
                _getPhotoFromPickerAndUpload(ImageSource.gallery);
              },
            ),
          ],
        ),
      );
    }
  }
}

class TextBox extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final Widget prefixIcon;
  TextBox({@required this.controller, @required this.title, this.prefixIcon})
      : assert(controller != null, 'You must Provide a TextEditingController');
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(title)),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Full Name',
              prefixIcon: prefixIcon,
              border: const OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
