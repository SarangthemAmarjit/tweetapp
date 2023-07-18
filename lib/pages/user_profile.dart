import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tweetapp/constants/api.dart';

import '../theme/pallete.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.blue,
                expandedHeight: 150,
                floating: true,
                snap: true,
                flexibleSpace: Stack(
                  children: [
                    const Positioned(
                        bottom: 0,
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 60,
                        )),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: const EdgeInsets.all(20),
                      child: OutlinedButton(
                        onPressed: () {
                          log('Edit Profile');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                        ),
                        child: const Text(
                          'Edit Profile', style: TextStyle(color: Colors.black),
                          // currentUser.uid == user.uid
                          //     ? 'Edit Profile'
                          //     : currentUser.following.contains(user.uid)
                          //         ? 'Unfollow'
                          //         : 'Follow',
                          // style: const TextStyle(
                          //   color: Pallete.whiteColor,
                          // ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Text(
                        alltweetuser.first['username'],
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '@${alltweetuser.first['username']}123',
                        style: const TextStyle(
                          fontSize: 17,
                          color: Pallete.greyColor,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [],
                      ),
                      const SizedBox(height: 2),
                      const Divider(color: Pallete.whiteColor),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const Text('')),
    );
  }
}
