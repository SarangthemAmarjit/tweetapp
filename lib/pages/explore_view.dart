import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExploreView extends ConsumerStatefulWidget {
  const ExploreView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExploreViewState();
}

class _ExploreViewState extends ConsumerState<ExploreView> {
  final searchController = TextEditingController();
  bool isShowUsers = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              const Icon(Icons.account_circle_outlined),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 234, 248, 229)
                              .withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      height: 35,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: TextFormField(
                            controller: searchController,
                            decoration: const InputDecoration.collapsed(
                                hintText: 'Search Twitter'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Icon(Icons.settings)
            ],
          ),
        ),
      ),
    );
  }
}
