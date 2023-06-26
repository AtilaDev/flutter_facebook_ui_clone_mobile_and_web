import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "What's on your mind?",
                  ),
                ),
              )
            ],
          ),
          const Divider(height: 10.0, thickness: 0.5),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  icon: Icons.videocam,
                  label: 'Live',
                  color: Colors.red,
                  onPressed: () => print('Live'),
                ),
                const VerticalDivider(width: 8.0),
                FlatButton(
                  icon: Icons.photo_library,
                  label: 'Photo',
                  color: Colors.green,
                  onPressed: () => print('Photo'),
                ),
                const VerticalDivider(width: 8.0),
                FlatButton(
                  icon: Icons.video_call,
                  label: 'Room',
                  color: Colors.purpleAccent,
                  onPressed: () => print('Room'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
