import 'package:flutter/material.dart';
import 'package:mockup_design/src/core/helpers/extensions.dart';
import 'package:mockup_design/src/features/store/domain/models/models.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product, this.onTap}) : super(key: key);

  final Product product;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: AspectRatio(
        aspectRatio: context.getAspectRadio,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(flex: 3, child: _Image(image: product.image, raiting: product.raiting)),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _Name(name: product.name),
                      const SizedBox(height: 4),
                      _Description(description: product.description),
                      Expanded(child: Align(alignment: Alignment.centerLeft, child: _Price(price: product.price))),
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: const Alignment(0.9, 0.8),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.add, color: Colors.white),
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({Key? key, required this.image, required this.raiting}) : super(key: key);

  final String image;
  final double raiting;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              image,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        _Raiting(raiting: raiting)
      ],
    );
  }
}

class _Name extends StatelessWidget {
  const _Name({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(name,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ));
  }
}

class _Description extends StatelessWidget {
  const _Description({Key? key, required this.description}) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(description, style: Theme.of(context).textTheme.caption);
  }
}

class _Price extends StatelessWidget {
  const _Price({Key? key, required this.price}) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: '\$ ',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 22,
              )),
      TextSpan(
          text: '$price',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              )),
    ]));
  }
}

class _Raiting extends StatelessWidget {
  const _Raiting({Key? key, required this.raiting}) : super(key: key);

  final double raiting;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.85, -0.65),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(255, 175, 138, 124),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.star, color: Colors.white, size: 16),
            Text(
              '$raiting',
              style: Theme.of(context).textTheme.caption?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
