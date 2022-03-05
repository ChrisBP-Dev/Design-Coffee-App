import 'package:flutter/material.dart';
import 'package:mockup_design/src/core/helpers/extensions.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 234, 234),
            borderRadius: BorderRadius.circular(50),
          ),
          height: 65,
          width: context.getWidth,
          child: Row(
            children: [
              const Icon(Icons.search),
              const SizedBox(width: 8),
              const Expanded(
                  child: TextField(
                decoration: InputDecoration(hintText: 'Search Coffee...', border: InputBorder.none),
              )),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 222, 207, 190),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.segment_outlined),
                height: 50,
                width: 50,
              ),
            ],
          )),
    );
  }
}
