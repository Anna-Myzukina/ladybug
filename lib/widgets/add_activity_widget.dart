import 'package:flutter/material.dart';
import 'package:ladybug/src/constants.dart' as constants;

class AddActivityWidget extends StatelessWidget {
  final bool isActive;
  final String? image;
  final String? title;

  const AddActivityWidget({
    super.key, 
    this.isActive = false,
    this.image,
    this.title
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            color: isActive ? constants.lightBlueButton : Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(image ?? 'assets/images/laptop.jpg'),
                    ),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              const SizedBox(width: 10),
              Text(title ?? 'Electronics',
              style: TextStyle(
                fontSize: 20,
                color: isActive ? constants.bluetext : Colors.black,
              ),
              )
              ],
          ),
        ),
      ),
    );
  }
}