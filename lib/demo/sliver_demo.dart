import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text('Mob'),
            // pinned: true,
            floating: true,
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'mob flutter'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                'https://resources.ninghao.org/images/childhood-in-a-picture.jpg',
                fit: BoxFit.cover,
              ),
              
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(18),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Material(
              borderRadius: BorderRadius.circular(12),
              elevation: 14,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child:
                        Image.network(posts[index].imageUrl, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 32,
                    left: 32,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(posts[index].title,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(posts[index].author,
                        style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1.2),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
