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
          buildText(context),
          const SizedBox(height: 24),
          Row(
            children: [
              buildImage(imageNum: leftImageNum),
              buildImage(imageNum: rightImageNum),
            ],
          )
        ],
      ),
    );
  }

  Text buildText(BuildContext context) {
    return Text(
      (leftImageNum != rightImageNum) ? "Try Again...!" : "Congration...!",
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }

  Expanded buildImage({required imageNum}) => Expanded(
        child: InkWell(
          onTap: () => changeImageNum(),
          child: Image.asset('assets/gameImages/image-$imageNum.png'),
        ),
      );
}
