import 'package:flutter/material.dart';



class TestSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('My SliverAppBar Example'),
              background: Image.network(
                'https://example.com/your_image_url.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('List item $index'),
                );
              },
              childCount: 50, // Replace with your desired number of list items
            ),
          ),
        ],
      ),
    );
  }
}
