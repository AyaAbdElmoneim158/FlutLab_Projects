import 'package:flutter/material.dart';
import 'dart:math';

class GameBody extends StatefulWidget {
  const GameBody({
    super.key,
  });

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  int leftImageNum = 1;
  int rightImageNum = 1;

  void changeImageNum() {
    leftImageNum = Random().nextInt(8) + 1;
    rightImageNum = Random().nextInt(8) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            (leftImageNum != rightImageNum)
                ? "Try Again...!"
                : "Congration...!",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              ImageItem(imageNum: leftImageNum),
              ImageItem(imageNum: rightImageNum),
            ],
          )
        ],
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
    required this.imageNum,
  });

  final int imageNum;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => changeImageNum(),
        child: Image.asset('assets/gameImages/image-$imageNum.png'),
      ),
    );
  }
}
