import 'package:amiibo_app/controller/amiibo.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DatosAmiiboPages extends StatelessWidget {
  DatosAmiiboPages({Key? key}) : super(key: key);
  final amiiboController = Get.find<AmiiboController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(250),
                        bottomLeft: Radius.circular(250))),
                color: Colors.blueGrey,
              ),
            ],
          ),
          Positioned(
            bottom: 90,
            child: Image.network(
              amiiboController.amiibo.image_uri!,
              height: 220,
            ),
          ),
        ],
      ),
    );
  }
}
