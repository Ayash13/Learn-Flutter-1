import 'package:flutter/material.dart';

int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('How to be happy ${(index + 1)}'),
          leading: const Icon(Icons.check),
          trailing: const Icon(Icons.yard),
          onTap: () {
            debugPrint('How to be happy ${(index + 1)} selected');
          },
        );
      },
    );
  }
}
