import 'package:flutter/material.dart';
import 'package:mockup_design/src/core/helpers/extensions.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      width: context.getWidth - 25,
      child: Row(
        children: [
          Expanded(child: _Image(image: image)),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  _DiscountBrand(),
                  SizedBox(height: 8),
                  _Phrase(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({Key? key, required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(
          image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Phrase extends StatelessWidget {
  const _Phrase({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      'Get three ice flavoured\ncappuccinos for the',
      style: Theme.of(context).textTheme.headline1?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: const Color.fromARGB(255, 30, 28, 28),
          ),
    );
  }
}

class _DiscountBrand extends StatelessWidget {
  const _DiscountBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.brown,
        ),
        child: Text(
          'Discount Sales',
          style: Theme.of(context).textTheme.caption?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
