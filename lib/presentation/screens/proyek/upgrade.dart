import 'package:flutter/material.dart';

import 'view_proyek.dart';

class Upgrade extends StatelessWidget {
  const Upgrade({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const ViewProyek(),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(7),
                    child: Icon(
                      Icons.close,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset("assets/Images/Zoom_meeting.png"),
            ),
            const Text(
              "Saatnya Upgrade \nPaket Anda!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text.rich(
              TextSpan(
                text:
                    "fitur duplikat proyek hanya tersedia untuk akun premium. Nikmati fitur tanpa batas dengan beralih ke akun premium dan dapatkan harga spesial",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: " Khusus untuk Anda !",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "UPGRADE SEKARANG",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ));
  }
}
