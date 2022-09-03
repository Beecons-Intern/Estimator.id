import 'package:estimator_id/app/screens/proyek/duplikat.dart';
import 'package:estimator_id/app/screens/proyek/popup_bagikan.dart';
import 'package:estimator_id/app/screens/proyek/upgrade.dart';
import 'package:flutter/material.dart';

Future<dynamic> MenuProyek(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext contex) => AlertDialog(
      elevation: 4.0,
      content: SizedBox(
        height: 42,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (() => showDialog(
                          context: context,
                          builder: (BuildContext context) => const Upgrade(),
                        )),
                    child: Icon(
                      Icons.edit_note,
                      size: 24,
                    ),
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Column(
                children: [
                  Icon(
                    Icons.delete,
                    size: 24,
                  ),
                  Text(
                    "Hapus",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (() => showDialog(
                    context: context,
                    builder: (BuildContext context) => const Duplikat(),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    Icon(
                      Icons.content_copy,
                      size: 24,
                    ),
                    Text(
                      "Duplicate",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (() => showDialog(
                    context: context,
                    builder: (BuildContext context) => PopupBagikan(),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 24,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      alignment: Alignment.bottomCenter,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      contentPadding: EdgeInsets.all(10),
    ),
  );
}
