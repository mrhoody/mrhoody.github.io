import 'package:flutter/material.dart';

class SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
        icon: const Icon(
          Icons.facebook,
          color: Colors.blue,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(
          Icons.mail,
          color: Colors.red,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(
          Icons.phone,
          color: Colors.green,
        ),
        onPressed: () {},
      ),
    ]);
  }
}
