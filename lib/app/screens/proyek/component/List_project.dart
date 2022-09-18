import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListProjek extends StatelessWidget {
  const ListProjek({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 300,
      child: masonaryLayout(context),
    );
  }
}

Widget masonaryLayout(BuildContext context) {
  return MasonryGridView.builder(
    gridDelegate:
        SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: 10,
    itemBuilder: (context, index) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://source.unsplash.com/random?sig=$index",
        ),
      );
    },
  );
}
