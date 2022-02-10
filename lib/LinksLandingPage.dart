import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:links_landing_page/button.dart';
import 'package:links_landing_page/constants.dart';
import 'package:links_landing_page/footer.dart';

class LinksLandingPage extends StatelessWidget {
  const LinksLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.white,
            radius: 48,

          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "@FelipeGazapina",
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey
            ),
          ),
          SizedBox(
            height: 20,
          ),
          for(var document in documents)
            ButtonLink(
                title: document.title,
                link: document.link
            ),
          Spacer(),
          Footer(),
          SizedBox(height: 23)
        ],
      ),
    );

  }

}