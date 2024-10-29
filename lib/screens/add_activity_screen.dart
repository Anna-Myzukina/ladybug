import 'package:ladybug/screens/track_screen.dart';
import 'package:ladybug/screens/user_screen.dart';
import 'package:ladybug/widgets/add_activity_widget.dart';
import 'package:ladybug/widgets/custom_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';

class AddActivityScreen extends StatelessWidget {
  const AddActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFabacae),
      body: CustomBottomSheetWidget(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 18.0),
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('What activity would you like to add?'),
            const SizedBox(
              height: 20,
            ),
            const AddActivityWidget(
              image: 'assets/images/tshirt.png',
              title: 'Clothing',
            ),
            const AddActivityWidget(
              isActive: true,
            ),
            const AddActivityWidget(
              image: 'assets/images/soap.png',
              title: 'Personal Care',
            ),
            const AddActivityWidget(
              image: 'assets/images/other.png',
              title: 'Other',
            ),
            const AddActivityWidget(
              image: 'assets/images/car.webp',
              title: 'Trip',
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                   Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TrackScreen(),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UserScreen(),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_forward),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
