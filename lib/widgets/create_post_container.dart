import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';

import 'widgets.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key key, @required this.currentUser})
      : super(key: key);

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.orange,
      child: Column(
        children: [
          // current user profile image, what's on your mind
          Row(
            children: [
             ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on your mind?',
                  ),
                ),
              ),
            ],
          ),

          const Divider(
            height: 10,
            thickness: 5,
          ),

          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.videocam, color: Colors.red),
                  label: Text('Live'),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_library, color: Colors.green),
                  label: Text('Photo'),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.video_call, color: Colors.purpleAccent),
                  label: Text('Room'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
