import 'package:flutter/material.dart';

class GameBody extends StatelessWidget {
  const GameBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Try Again...!",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(child: Image.asset("assets/gameImages/image-1.png")),
              Expanded(child: Image.asset("assets/gameImages/image-2.png")),
            ],
          )
        ],
      ),
    );
  }
}
