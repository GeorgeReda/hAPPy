import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key key, this.cameras}) : super(key: key);
  final cameras;
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverAppBar(
                      bottom: TabBar(tabs: [
                        Tab(icon: Icon(Icons.camera_alt)),
                        Tab(child: Text('CHATS')),
                        Tab(child: Text('STATUS')),
                        Tab(child: Text('CALLS'))
                      ]),
                      backgroundColor: Colors.blueGrey,
                      title: Text('WhatsApp',
                          style: TextStyle(color: Colors.white)),
                      actions: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {},
                            tooltip: 'Search',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {},
                            tooltip: 'More Options',
                          ),
                        )
                      ],
                    )
                  ],
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Container(color: Colors.indigo),
                  Container(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, index) => ListTile(
                        leading: CircleAvatar(
                            backgroundImage: AssetImage('images/pic1.jpeg')),
                        onTap: () {},
                        title: Text('Koka'),
                        trailing: Text('Saturday'),
                        subtitle: Text('adjgdsbkahlkfa'),
                      ),
                    ),
                  ),
                  Container(color: Colors.green),
                  Container(color: Colors.red),
                ],
              )),
        ),
      ),
    );
  }
}
