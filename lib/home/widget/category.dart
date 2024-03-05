import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 100,
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('asset/icons/in-stock.png')),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            const Text(
              'Check Stock',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
