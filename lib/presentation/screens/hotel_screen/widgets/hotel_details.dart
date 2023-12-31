import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../common/common.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final lc = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          DetailsButton(
            imagePath: 'assets/images/happy.png',
            title: lc.hotelFacilities,
            subtitle: lc.hotelMostNecessary,
            onTap: () {},
          ),
          const DetailsButtonDivider(),
          DetailsButton(
            imagePath: 'assets/images/tick.png',
            title: lc.hotelIncludes,
            subtitle: lc.hotelMostNecessary,
            onTap: () {},
          ),
          const DetailsButtonDivider(),
          DetailsButton(
            imagePath: 'assets/images/close.png',
            title: lc.hotelExclude,
            subtitle: lc.hotelMostNecessary,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class DetailsButton extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final void Function() onTap;

  const DetailsButton({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Styles.hotelDetailsButtonTitle),
                  Text(subtitle, style: Styles.hotelDetailsButtonSubtitle),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 6, 8, 6),
              child: Image.asset(
                'assets/images/arrow_right.png',
                width: 8,
                height: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsButtonDivider extends StatelessWidget {
  const DetailsButtonDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 38,
      height: 20,
      color: Color.fromRGBO(130, 135, 150, 0.15),
    );
  }
}
