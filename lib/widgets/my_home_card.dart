import 'package:flutter/material.dart';
import '../models/property.dart';
import '../constants/app_colors.dart';
import '../constants/app_images.dart';

class MyHomeCard extends StatelessWidget {
  const MyHomeCard({
    super.key,
    required this.p,
  });
  final Property p;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
          color: AppColors.cardGrey.withOpacity(0.12),
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          AppImages.building,
          scale: 4,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 190,
              child: Text(
                p.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColors.lightBlue,
                  size: 12,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  p.address,
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                CardChip(
                  text: p.rating.toString(),
                  icon: Icons.star,
                  iconColor: Colors.yellow,
                ),
                const SizedBox(
                  width: 4,
                ),
                CardChip(
                  text: "${p.area.toString()} ft",
                  icon: Icons.open_in_full,
                  iconColor: Colors.yellow,
                ),
              ],
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  p.price,
                  style: const TextStyle(
                      fontWeight: FontWeight.w900, fontSize: 18),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    "/month",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
        const Spacer(),
        Container(
            decoration: BoxDecoration(
              color: (p.isFav
                  ? AppColors.favRed
                  : const Color.fromARGB(255, 172, 170, 170)),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.favorite,
              size: 21,
              color: Colors.white,
            )),
      ]),
    );
  }
}

class CardChip extends StatelessWidget {
  const CardChip({
    super.key,
    required this.icon,
    required this.text,
    this.iconColor = Colors.black,
  });
  final IconData icon;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: AppColors.lightBlue, borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 16,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
