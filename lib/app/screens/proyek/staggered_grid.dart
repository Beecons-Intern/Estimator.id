import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGrid extends StatelessWidget {
  const StaggeredGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: stairedLayout(context),
    );
  }
}

Widget staggeredGrid(BuildContext context) {
  return MasonryGridView.builder(
    mainAxisSpacing: 8,
    crossAxisSpacing: 8,
    gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    ),
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

Widget quiltedLayout(BuildContext context) {
  return GridView.custom(
    gridDelegate: SliverQuiltedGridDelegate(
      crossAxisCount: 2,
      mainAxisSpacing: 6,
      crossAxisSpacing: 6,
      pattern: [
        QuiltedGridTile(2, 1),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 2),
      ],
    ),
    childrenDelegate: SliverChildBuilderDelegate(
      (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "https://source.unsplash.com/random?sig=$index",
            fit: BoxFit.cover,
          ),
        );
      },
    ),
  );
}

Widget stairedLayout(BuildContext context) {
  return GridView.custom(
      gridDelegate: SliverStairedGridDelegate(
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        startCrossAxisDirectionReversed: true,
        pattern: [
          StairedGridTile(0.5, 1),
          StairedGridTile(0.5, 3 / 4),
          StairedGridTile(0.5, 1),
          StairedGridTile(0.5, 3 / 4),
          StairedGridTile(1.0, 10 / 4),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://source.unsplash.com/random?sig=$index",
              fit: BoxFit.cover,
            ),
          );
        },
      ));
}
