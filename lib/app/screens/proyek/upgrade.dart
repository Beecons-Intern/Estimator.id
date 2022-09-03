import 'package:estimator_id/app/screens/proyek/view_proyek.dart';
import 'package:flutter/material.dart';

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
                  builder: (context) => ViewProyek(),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
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
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset("assets/Images/Zoom_meeting.png"),
            ),
            Text(
              "Saatnya Upgrade \nPaket Anda!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text.rich(
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
            SizedBox(height: 20),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "UPGRADE SEKARANG",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20)
          ],
        ));
  }
}
