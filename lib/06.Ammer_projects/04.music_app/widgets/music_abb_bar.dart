import 'package:flutter/material.dart';

class MusicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MusicAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff89019C),
      elevation: 0,
      title: Text(
        "Music",
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
