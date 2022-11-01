import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/pengguna_view_model.dart';
import 'components/body.dart';
import '../../../../utilities/utilities.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final penggunaViewModel = Provider.of<PenggunaViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primary,
        toolbarHeight: 72,
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1)),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                      scale: 0.5,
                      fit: BoxFit.cover,
                      image: penggunaViewModel.dataPengguna != null &&
                              penggunaViewModel.dataPengguna!.foto != ""
                          ? FileImage(
                                  File(penggunaViewModel.dataPengguna!.foto))
                              as ImageProvider
                          : const AssetImage("assets/icon/avatar.png")),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome to estimator.id 👋",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      penggunaViewModel.dataPengguna != null
                          ? penggunaViewModel.dataPengguna!.namaPengguna
                          : "-",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
