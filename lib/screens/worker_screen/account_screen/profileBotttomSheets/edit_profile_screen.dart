import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

Future profileBottomSheet(BuildContext context, Size size) =>
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) => Container(
        child: DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: .2,
          maxChildSize: .8,
          builder: (contex, scrollcontrol) => Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Container(
              height: 300,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: CustomScrollView(
                  controller: scrollcontrol,
                  slivers: [
                    SliverAppBar(
                      pinned: true,
                      backwardsCompatibility: false,
                      automaticallyImplyLeading: false,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      title: Text(
                        'Edit profile',
                        style: profileBottomSheetAppBarTitleStyle(),
                      ),
                      elevation: 0.5,
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: IconButton(
                            tooltip: 'Discard',
                            icon: Icon(
                              FontAwesomeIcons.times,
                              color: Colors.red.shade300,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                      ],
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      fillOverscroll: true,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            //DP ,name,phone number ROW
                            Container(
                              width: size.width,
                              height: 150,
                              color: Colors.white,
                              // color: Colors.green,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 250,
                                    child: Column(
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                            label: Text(
                                              'name',
                                              style:
                                                  workerEditProfileLabelStyle(),
                                            ),
                                            icon: Icon(
                                              FontAwesomeIcons.user,
                                              size: workerEditProfileIconSize,
                                              color: workerEditProfileIconColor,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              label: Text(
                                                'phone',
                                                style:
                                                    workerEditProfileLabelStyle(),
                                              ),
                                              icon: Icon(
                                                FontAwesomeIcons.mobileAlt,
                                                size: workerEditProfileIconSize,
                                                color:
                                                    workerEditProfileIconColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Column(
                                      children: [
                                        ClipOval(
                                          child: Image.network(
                                              'https://www.adobe.com/express/create/profile-picture/media_141efea30cca217e8cb7fb3abb8ed9d663c29d550.jpeg'),
                                        ),
                                        IconButton(
                                            onPressed: () => null,
                                            icon: const Icon(
                                              FontAwesomeIcons.edit,
                                              size: 18,
                                              color: Colors.green,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Address
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: TextField(
                                minLines: 2,
                                maxLines: 2,
                                decoration: InputDecoration(
                                    label: Text(
                                      'address',
                                      style: workerEditProfileLabelStyle(),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    icon: Icon(
                                      FontAwesomeIcons.addressBook,
                                      size: workerEditProfileIconSize,
                                      color: workerEditProfileIconColor,
                                    )),
                              ),
                            ),
                            //Email
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  label: Text(
                                    'email',
                                    style: workerEditProfileLabelStyle(),
                                  ),
                                  icon: Icon(
                                    FontAwesomeIcons.envelope,
                                    size: workerEditProfileIconSize,
                                    color: workerEditProfileIconColor,
                                  ),
                                ),
                              ),
                            ),
                            //Row Password and confirm
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  width: 200,
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      label: Text(
                                        'password',
                                        style: workerEditProfileLabelStyle(),
                                      ),
                                      icon: Icon(
                                        FontAwesomeIcons.lock,
                                        size: workerEditProfileIconSize,
                                        color: workerEditProfileIconColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  width: 160,
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      label: Text(
                                        'confirm password',
                                        style: workerEditProfileLabelStyle(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //Save button
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.save,
                                    color: workerEditProfileIconColor,
                                    size: workerEditProfileIconSize),
                                Container(
                                  width: 350,
                                  height: 50,
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      7,
                                    ),
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.green.shade600,
                                        Colors.green.shade400
                                      ],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                    ),
                                  ),
                                  child: TextButton(
                                    onPressed: () => null,
                                    child: Text(
                                      'Save',
                                      style:
                                          workerEditProfileSaveButtonTextStyle(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
