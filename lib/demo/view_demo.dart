import 'package:flutter/material.dart';
import '../model/post.dart';


class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit:BoxFit.cover
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //  crossAxisCount: 2,
          maxCrossAxisExtent:250,
         crossAxisSpacing: 8,
         mainAxisSpacing: 8,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            'Item $index',
            style: TextStyle(fontSize:18, color:Colors.grey),
          ),
        );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}
class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            'Item',
            style: TextStyle(fontSize:18, color:Colors.grey),
          ),
        );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit:BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold)
              ),
              Text(
                posts[index].author,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // scrollDirection: Axis.vertical,
      controller: PageController(
        initialPage: 1,
        // viewportFraction: 0.5,
      ),
      onPageChanged: (currentPage)=> debugPrint('Page: $currentPage'),
      children: <Widget>[
        Container(
          color: Colors.brown[100],
          alignment: Alignment(0, 0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 30, color: Colors.white)
          ),
        ),
        Container(
          color: Colors.brown[100],
          alignment: Alignment(0, 0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 30, color: Colors.white)
          ),
        ),
        Container(
          color: Colors.brown[100],
          alignment: Alignment(0, 0),
          child: Text(
            'Three',
            style: TextStyle(fontSize: 30, color: Colors.white)
          ),
        ),
      ],
    );
  }
}