import 'package:flutter/material.dart';
import 'package:mockup_design/src/core/const/asset_routes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(22, 15, 22, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const _Avatar(),
              const Expanded(child: DirectionText()),
              IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add_outlined, size: 30)),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Good mornig, Chris',
            style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold, fontSize: 22),
          )
        ],
      ),
    ));
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Colors.white),
        boxShadow: [
          BoxShadow(spreadRadius: 1, color: Theme.of(context).primaryColor),
        ],
      ),
      child: const CircleAvatar(
        radius: 25,
        foregroundColor: Colors.transparent,
        backgroundImage: AssetImage(AssetRoutes.profile),
      ),
    );
  }
}

class DirectionText extends StatelessWidget {
  const DirectionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.pin_drop_rounded,
          color: Theme.of(context).primaryColor,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: ' Lima, ',
            style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'Perú',
            style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.normal),
          ),
        ])),
      ],
    );
  }
}
