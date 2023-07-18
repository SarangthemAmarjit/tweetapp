import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tweetapp/pages/tabbar/allnotification.dart';

class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 3,
      vsync: this,
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_circle_outlined),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Notifications',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                  Icon(Icons.settings)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.blue,
                  controller: tabController,
                  tabs: const [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Verified',
                    ),
                    Tab(
                      text: 'Mentions',
                    )
                  ]),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: tabController,
                      children: const [
                        AllnotificationPage(),
                        Center(child: Text('Verified Page Comming Soon')),
                        Center(child: Text('Mentions Page Comming Soon'))
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
