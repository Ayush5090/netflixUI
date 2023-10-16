import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalAppBar extends StatelessWidget {
  bool isSecondScreen;
  GlobalAppBar({super.key, this.isSecondScreen = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: isSecondScreen
          ? InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            )
          : const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
      actions: const [
        Icon(
          CupertinoIcons.search,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
