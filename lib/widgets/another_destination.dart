import 'package:flutter/material.dart';
import 'package:project_uas/constant.dart';
import 'package:project_uas/pages/description_page.dart';

class AnotherDestination extends StatefulWidget {
  const AnotherDestination({Key? key}) : super(key: key);

  @override
  State<AnotherDestination> createState() => _AnotherDestinationState();
}

class _AnotherDestinationState extends State<AnotherDestination> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Another Destination",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 4; i < 13; i++)
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DescriptionPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: 190,
                    height: 300,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: kGrayColor.withOpacity(0.9),
                          spreadRadius: 2,
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            "assets/splash_images/splash$i.jpg",
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "It's All The Same",
                                style: TextStyle(
                                  color: kTextGrayColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Beach",
                                style: TextStyle(
                                  color: kTextGrayColor,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: kThirdColor,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "8.5",
                                    style: TextStyle(
                                      color: kTextGrayColor,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ],
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
    );
  }
}
