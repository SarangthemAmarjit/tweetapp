import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweetapp/constants/api.dart';

class TweetListPage extends StatelessWidget {
  const TweetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: alltweetuser.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                Icons.account_circle_rounded,
                                color: Colors.blue,
                                size: 50,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  alltweetuser[i]['username'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  alltweetuser[i]['post'],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svgs/comment.svg',
                                        height: 17,
                                      ),
                                      Text(
                                        alltweetuser[i]['comment_count'],
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      SvgPicture.asset(
                                        'assets/svgs/retweet.svg',
                                        height: 17,
                                      ),
                                      Text(
                                        alltweetuser[i]['share_count'],
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      SvgPicture.asset(
                                        'assets/svgs/like_outlined.svg',
                                        height: 17,
                                      ),
                                      Text(
                                        alltweetuser[i]['like_count'],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 213, 211, 211),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
