import 'package:flutter/material.dart';
import 'package:tweetapp/constants/api.dart';

class AllnotificationPage extends StatelessWidget {
  const AllnotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: allnotificationapi.length,
              itemBuilder: (context, i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Icon(Icons.account_circle),
                                      ),
                                      Text(allnotificationapi[i]['message'])
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 7,
                          width: 7,
                          decoration: const BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    )
                  ],
                );
              })),
    );
  }
}
