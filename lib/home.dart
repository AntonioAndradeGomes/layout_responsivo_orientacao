import 'package:flutter/material.dart';
import 'package:responsive_cards/widgets/card_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Color(0xFF191970),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Seus cartões',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder: (widget, animation) => ScaleTransition(
                    scale: animation,
                    child: widget,
                  ),
                  child: orientation == Orientation.portrait
                      ? ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Center(
                              child: CardItem(
                                isGrid: false,
                                color: Colors
                                    .primaries[index % Colors.primaries.length],
                              ),
                            );
                          },
                        )
                      : GridView.builder(
                          itemCount: 20,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) {
                            return Center(
                              child: CardItem(
                                isGrid: true,
                                color: Colors
                                    .primaries[index % Colors.primaries.length],
                              ),
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
