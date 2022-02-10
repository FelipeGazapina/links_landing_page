import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    Key? key,
    @required this.title,
    @required this.link,
  }) : super(key: key);

  final title;
  final link;


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print(link);
    return Padding(
        child: SizedBox(
          width: width > 680 ? 680 : width * 0.90,
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20),
            onPressed: () => launch(link),
            child:
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            color: Colors.tealAccent,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 5)
    );
  }
}