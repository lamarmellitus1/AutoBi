// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pub/ui/widget/fontText.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<Map<String, dynamic>> catDisplay = [
    {'Icon': Icon(Icons.person), "title": "Edit Profile", "pages": ""},
    {
      'Icon': Icon(
        Icons.location_on_outlined,
      ),
      "title": "Address",
      "pages": ""
    },
    {
      'Icon': Icon(
        Icons.alarm,
        size: 19,
      ),
      "title": "Notification",
      "pages": ""
    },
    {
      'Icon': Icon(
        Icons.payments_outlined,
        size: 19,
      ),
      "title": "Payment",
      "pages": ""
    },
    {
      'Icon': Icon(
        Icons.security_outlined,
        size: 19,
      ),
      "title": "Secuirty",
      "pages": ""
    },
    {
      'Icon': Icon(
        Icons.payments_outlined,
        size: 19,
      ),
      "title": "Payment",
      "pages": ""
    },
    {
      'Icon': Icon(
        Icons.language_outlined,
        size: 19,
      ),
      "title": "Language",
      "pages": ""
    },
    {
      'Icon': Icon(
        Icons.privacy_tip_outlined,
        size: 19,
      ),
      "title": "Privacy",
      "pages": ""
    },
    {
      'Icon': Icon(
        Icons.help_center_outlined,
        size: 19,
      ),
      "title": "Help Center",
      "pages": ""
    },
    {
      'Icon': Icon(Icons.person_add_alt_1_outlined),
      "title": "Invite Friends",
      "pages": ""
    },
  ];

  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(
                Icons.local_taxi_outlined,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              FontText(
                text: "Profile",
                fam: FontWeight.bold,
                fontsize: 20,
                color: Colors.black,
              ),
            ]),
            Row(
              children: [
                Icon(
                  Icons.menu_open_outlined,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage("lib/ui/assets/image/myself.jpg"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          _showImageDialogue();
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.black,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FontText(
                text: "Andrew Ainstey",
                space: 2,
                fontFam: " openSans",
                fontsize: 19,
              ),
              FontText(
                text: "+468973034",
                space: 2,
                fontFam: " openSans",
                fontsize: 19,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 20,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: catDisplay.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return catDisplay[index]["pages"];
                }));
              }),
              leading: catDisplay[index]["Icon"],
              title: FontText(
                text: catDisplay[index]["title"],
                fontsize: 19,
                fontFam: "opensans",
                fam: FontWeight.bold,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            );
          },
        ),
        Divider(),
        ListTile(
          onTap: () {
            _showSignOutDialogue(context);
          },
          leading: Icon(
            Icons.logout_outlined,
            color: Colors.red,
          ),
          title: Text(
            "Logout",
            style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  void _showImageDialogue() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              "please choose an option",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              InkWell(
                onTap: () {
                  _getImageCamera();
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.camera,
                        color: Colors.purple,
                      ),
                    ),
                    Text("Camera",
                        style: TextStyle(color: Colors.purple, fontSize: 18)),
                  ],
                ),
              ),
              InkWell(
                onTap: (() => _getImageGallery()),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.image,
                        color: Colors.purple,
                      ),
                    ),
                    Text("Gallery",
                        style: TextStyle(color: Colors.purple, fontSize: 18)),
                  ],
                ),
              )
            ]),
          );
        });
  }

  void _getImageGallery() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.gallery, maxHeight: 1080, maxWidth: 1080);
    setState(() {
      imageFile = File(pickedFile!.path);
    });
    Navigator.pop(context);
  }

  void _getImageCamera() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.camera, maxHeight: 1080, maxWidth: 1080);
    setState(() {
      imageFile = File(pickedFile!.path);
    });
    Navigator.pop(context);
  }
}

void _showSignOutDialogue(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                Icons.logout_outlined,
                color: Colors.cyan,
                size: 16,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Sign out",
                style: TextStyle(
                    fontSize: 16,
                    // color: TextColors.darkColor,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          content: Text(
            "Do You want to sign out?",
            style: TextStyle(
                fontSize: 16,
                // color: TextColors.darkColor,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            InkWell(
              onTap: () =>
                  Navigator.canPop(context) ? Navigator.pop(context) : null,
              child: Text(
                "cancel",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.cyan,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "ok",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      });
}
