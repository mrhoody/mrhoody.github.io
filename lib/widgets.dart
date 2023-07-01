import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class IconLinkPair extends StatelessWidget {
  const IconLinkPair({super.key, this.icon, this.text, this.link});

  final IconData? icon;
  final String? text;
  final String? link;

  Future<void> _launchUrl() async {
    final url = Uri.parse(link!);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            onPressed: (link == null) ? null : _launchUrl),
        Text(text!, style: Theme.of(context).textTheme.bodyLarge)
      ],
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconLinkPair(icon: Icons.mail, text: "hud.syafiq@gmail.com"),
      IconLinkPair(
          icon: LineIcons.github,
          text: "mrhoody",
          link: "https://github.com/mrhoody"),
      IconLinkPair(
          icon: LineIcons.linkedin,
          text: "Hud Syafiq Herman",
          link: "https://www.linkedin.com/in/hud-syafiq-herman/")
    ]);
  }
}
