import 'package:flutter/material.dart';
import 'package:flutter_application_31/models/post_model.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(PostModel.posts[index].image!),
              ),
              title: Text(PostModel.posts[index].title!),
              subtitle: Text(PostModel.posts[index].desc!),
            ),
          );
        },
        itemCount: PostModel.posts.length,
      ),
    );
  }
}
