import 'package:flutter/material.dart';

class StickersBackgraound extends StatelessWidget {
  const StickersBackgraound(this.leftRight, this.topBotton, {Key? key}) : super(key: key);

  final double leftRight, topBotton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(leftRight, topBotton),
      child: SizedBox(
        height: 75,
        width: 75,
        child: Column(
          children: [
            const _Sticker(),
            Row(children: const [_Sticker(), Spacer(), _Sticker()]),
            const _Sticker(),
          ],
        ),
      ),
    );
  }
}

class _Sticker extends StatelessWidget {
  const _Sticker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.stream, color: Colors.white54);
  }
}
