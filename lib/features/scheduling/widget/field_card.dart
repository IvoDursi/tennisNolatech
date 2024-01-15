import 'package:flutter/material.dart';
import 'package:nolatech/extensions/extensions.dart';

class FieldCard extends StatelessWidget {
  const FieldCard({
    Key? key,
    required this.onTap,
    required this.field,
  }) : super(key: key);

  final VoidCallback onTap;
  final Field field;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: field.name,
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(right: 8, top: 8),
          height: 250,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(15),
                ),
                child: Image.asset(
                  field.image,
                  height: 250,
                  width: double.maxFinite,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 250,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xff0a3740).withOpacity(0.8),
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(15),
                          )),
                      height: 50,
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Text(
                            field.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.place,
                              color: Colors.white60,
                              size: 24,
                            ),
                            Text(
                              field.location,
                              style: const TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
