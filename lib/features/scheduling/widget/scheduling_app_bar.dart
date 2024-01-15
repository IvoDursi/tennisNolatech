import 'package:flutter/material.dart';
import 'package:nolatech/extensions/extensions.dart';

class SchedulingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SchedulingAppBar({
    super.key,
    required this.field,
  });

  final Field field;

  @override
  Size get preferredSize => const Size.fromHeight(200);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Stack(
        children: <Widget>[
          Hero(
            tag: field.name,
            child: Image.asset(
              field.image,
              height: 215,
              width: double.maxFinite,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, bottom: 5),
            height: 215,
            width: double.maxFinite,
            color: const Color(0xff0a3740).withOpacity(0.4),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                field.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
