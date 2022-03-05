import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:mockup_design/src/core/const/asset_routes.dart';
import 'package:mockup_design/src/core/helpers/extensions.dart';
import 'package:mockup_design/src/features/omboarding/domain/models/models.dart';
import 'package:mockup_design/src/features/omboarding/providers/onboarding_provider.dart';
import 'package:mockup_design/src/presentation/screens/onboarding/widgets/section_info_view.dart';

final _sections = List.generate(
    3,
    (i) => SectionInfo(
        image: AssetRoutes.onboarding(i),
        phrase: 'Coffee so good,\nyour taste buds\nwill love it',
        details: 'The best grain, the finest roast, the\nmost powerful flavor.'));

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: context.getHeight * 0.77,
          child: PageView.builder(
            itemCount: _sections.length,
            onPageChanged: (index) => context.read<OnboardingProvider>().currentPage = index,
            itemBuilder: (context, index) => SectionInfoView(sectionInfo: _sections[index]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) => _DotPage(index: index)),
        ),
        Expanded(child: Center(child: _CustomButton(onTap: () => context.pushNamed(routName: '/home')))),
      ],
    );
  }
}

class _DotPage extends StatelessWidget {
  const _DotPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final currentPage = context.select<OnboardingProvider, int>((provider) => provider.currentPage);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: 10,
      width: currentPage == index ? 25 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: (currentPage == index).when(
          isTrue: () => Theme.of(context).primaryColor,
          isFalse: () => const Color.fromARGB(129, 79, 73, 73),
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final currentPage = context.select<OnboardingProvider, int>((provider) => provider.currentPage);

    return Visibility(
      visible: currentPage == _sections.length - 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 350),
            tween: Tween<double>(begin: 0, end: 0.1),
            builder: (context, value, child) {
              return GestureDetector(
                onTap: onTap,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: double.infinity,
                  height: context.getHeight * value,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Get started',
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
