import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/pallete.dart';

class EditProfileView extends ConsumerStatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const EditProfileView(),
      );
  const EditProfileView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditProfileViewState();
}

class _EditProfileViewState extends ConsumerState<EditProfileView> {
  late TextEditingController nameController;
  late TextEditingController bioController;
  File? bannerFile;
  File? profileFile;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    bioController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  // GestureDetector(

                  //   child: Container(
                  //     width: double.infinity,
                  //     height: 150,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     child: bannerFile != null
                  //         ? Image.file(
                  //             bannerFile!,
                  //             fit: BoxFit.fitWidth,
                  //           )
                  //         : user.bannerPic.isEmpty
                  //             ? Container(
                  //                 color: Pallete.blueColor,
                  //               )
                  //             : Image.network(
                  //                 user.bannerPic,
                  //                 fit: BoxFit.fitWidth,
                  //               ),
                  //   ),
                  // ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: GestureDetector(
                      child: profileFile != null
                          ? CircleAvatar(
                              backgroundImage: FileImage(profileFile!),
                              radius: 40,
                            )
                          : CircleAvatar(
                              radius: 40,
                            ),
                    ),
                  ),
                ],
              ),
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Name',
                contentPadding: EdgeInsets.all(18),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: bioController,
              decoration: const InputDecoration(
                hintText: 'Bio',
                contentPadding: EdgeInsets.all(18),
              ),
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
