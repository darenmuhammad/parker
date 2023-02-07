import 'package:flutter/material.dart';
import 'package:project_uas/auth/main_page.dart';
import 'package:project_uas/constant.dart';
import 'package:project_uas/pages/category_page.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MainPage();
                  },
                ),
              );
            },
            child: const Icon(
              Icons.home,
              size: 30,
              color: kTextGrayColor,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CategoryPage();
                  },
                ),
              );
            },
            child: const Icon(
              Icons.category,
              size: 30,
              color: kTextGrayColor,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.favorite_border_rounded,
              size: 30,
              color: kTextGrayColor,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.person,
              size: 30,
              color: kTextGrayColor,
            ),
          ),
        ],
      ),
    );
  }
}
