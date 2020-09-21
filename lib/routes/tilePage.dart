import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tena/routes/before_after.dart';

class TilePage extends StatelessWidget {
  TilePage({Key key, this.assetsAudioPlayer}) : super(key: key);
  final AssetsAudioPlayer assetsAudioPlayer;

  String imgPath(int number) => 'assets/$number-min.jpeg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(imgPath(24)),
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: StaggeredGridView.count(
                crossAxisCount: 6,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                physics: BouncingScrollPhysics(),
                staggeredTiles: [
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 9),
                  StaggeredTile.count(3, 9),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(3, 8),
                  StaggeredTile.count(2, 1),
                ],
                children: <Widget>[
                  imageTile(1),
                  imageTile(2),
                  imageTile(3),
                  imageTile(4),
                  imageTile(5),
                  imageTile(6),
                  imageTile(7),
                  imageTile(8),
                  textTile(
                      '''بص يا عم امير انت بجد احسن اخ وصاحب♥️خلاص هتكمل 17 سنه منهم سنتين احنا صحاب😂♥️مهمها اتخانقنا فبنرجع نتصالح ونتعاتب بس بطل برود شويه😂🙆‍♀️انت بئر اسرارى معاك كل مصايبى🤦‍♀️😂بس ولا مره طلعت حاجه بره✨♥️الوحيد اللى لما انا بعمل مصايب بجرى عليه وهوا بيحللى كل حاجه ربنا يخليك ليا وافضل قرفاك بمصايبى😂♥️♥️كل سنه وانت وسط صحابك ومعايا ونفضل نتخانق ونتصالح احنا توم وجيري 2😈♥️ربنا يخليك لينا يا جيمى وحبيت عيد ميلادك السنه دى تبقى مختلفه لانك هتتفنخ فى 3 ثانوى😂 Happy birthday ya bro🥳♥️♥️
Tena✨♥️'''),
                  imageTile(10),
                  imageTile(11),
                  textTile(
                      '''بص يا عم انت اغلى حد عندي اصلا وانت عارف كده حتى لو بنتخانق كتير بس بجد بنرجع احسن من الاول واحسن ♥️ربنا يخليك ليا يا قمر ♥️
SARSOoooR♥️✨'''),
                  imageTile(24),
                  textTile('''امير 😂♥ ✨
بص احنا كنا صحاب زمان وبعدنا فتره لكن رجعنا نتكلم تانى واحنا مبسوطه اننا بنتكلم ولسه صحاب ايوا مش زى الاول بس مش مشكله وابقى اسال هاا 🤦😂😂♥
اه صح كفايه خناقات ومشاكل مع ... مش لازم اقول مين انت عارف كويس😂😂😂🤦
المهم✨♥
 يعنى كل سنه وانت طيب ♥🌚🎂
كل سنه وانت مع كل الناس اللى بتحبهم واهلك♥♥  
Enjoy y2mr♥🌚
Karin♥'''),
                  Container(
                    height: 50,
                    width: 50,
                    child: RaisedButton(
                        color: Color(0xffFFD700),
                        child: Text('Next'),
                        onPressed: () {
                          assetsAudioPlayer.play();
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BeforeAfterScreen(),
                          ));
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget imageTile(int image) {
    return AnimationConfiguration.synchronized(
      duration: Duration(seconds: 3),
      child: FlipAnimation(
        child: ScaleAnimation(
          child: FadeInAnimation(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage(imgPath(image)),
                      fit: BoxFit.fill,
                    )),
              ),
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
      child: FlipAnimation(
        child: ScaleAnimation(
          child: FadeInAnimation(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: alignment,
                child: Text(
                  text,
                  textDirection: text.contains("ا")
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
