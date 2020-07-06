import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TilePage extends StatelessWidget {
  final String img = 'images/pic';

  const TilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: StaggeredGridView.count(
              crossAxisCount: 6,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              physics: BouncingScrollPhysics(),
              staggeredTiles: [
                StaggeredTile.extent(2, 150),
                StaggeredTile.extent(2, 150),
                StaggeredTile.extent(2, 150), //=> 1
                StaggeredTile.extent(6, 150), //=> 2
                StaggeredTile.extent(4, 150),
                StaggeredTile.extent(2, 150), //=> 3
                StaggeredTile.extent(3, 150),
                StaggeredTile.extent(3, 150), //=>4
                StaggeredTile.extent(4, 150),
                StaggeredTile.extent(2, 150), //=> 5
                StaggeredTile.extent(3, 150),
                StaggeredTile.extent(3, 150), //=>6
                StaggeredTile.extent(3, 150),
                StaggeredTile.extent(3, 150) //=>6
              ],
              children: <Widget>[
                imageTile('${img}1.jpeg'),
                imageTile('${img}3.jpeg'),
                textTile(
                    'Aliquip adipisicing pariatur ut sit aliqua enim sunt ullamco nisi quis.'),
                imageTile('${img}4.jpeg'),
                imageTile('${img}1.jpeg'),
                textTile(
                    'Veniam qui laborum mollit anim eu mollit ullamco tempor labore pariatur esse culpa.'),
                imageTile('${img}2.jpeg'),
                imageTile('${img}4.jpeg'),
                textTile(
                    'Cupidatat aliqua reprehenderit minim deserunt non aute ullamco laborum dolore.'),
                imageTile('${img}2.jpeg'),
                imageTile('${img}4.jpeg'),
                imageTile('${img}2.jpeg'),
                imageTile('${img}4.jpeg'),
                imageTile('${img}4.jpeg')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget imageTile(String image) {
  return AnimationConfiguration.synchronized(
    duration: Duration(seconds: 3),
    child: ScaleAnimation(
      child: FadeInAnimation(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                )),
          ),
        ),
      ),
    ),
  );
}

Widget textTile(
  String text, {
  Alignment alignment = Alignment.center,
}) {
  return AnimationConfiguration.synchronized(
    duration: Duration(seconds: 5),
    child: ScaleAnimation(
      child: FadeInAnimation(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: alignment,
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}
