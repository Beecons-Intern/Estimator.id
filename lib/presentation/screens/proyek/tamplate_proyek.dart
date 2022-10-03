import 'package:flutter/material.dart';

import 'card_template_proyek.dart';

class TemplateProyek extends StatelessWidget {
  const TemplateProyek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Template Proyek",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.black,
              )
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            CardTemplateProyek(size: size),
            CardTemplateProyek(size: size),
            CardTemplateProyek(size: size),
          ],
        ));
  }
}
