import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Color color;
  final bool isGrid;

  CardItem({
    required this.color,
    required this.isGrid,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: !isGrid ? const EdgeInsets.all(15.0) : const EdgeInsets.all(5),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.3),
              color,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'R\$ 15,80',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Text(
                '4020 **** **** 2424',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                'Antonio A G Junior',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
