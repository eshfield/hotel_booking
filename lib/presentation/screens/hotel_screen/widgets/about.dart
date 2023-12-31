import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../domain/models/hotel_model.dart';
import '../../../common/common.dart';
import 'hotel_details.dart';

class About extends StatelessWidget {
  final HotelModel hotel;

  const About(this.hotel, {super.key});

  @override
  Widget build(BuildContext context) {
    final lc = AppLocalizations.of(context)!;
    return SectionPlate(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lc.hotelAbout, style: Styles.title),
          const SizedBox(height: 8),
          Peculiarities(hotel.peculiarities),
          const SizedBox(height: 4),
          Text(hotel.description, style: Styles.hotelDescription),
          const SizedBox(height: 16),
          const HotelDetails(),
        ],
      ),
    );
  }
}
