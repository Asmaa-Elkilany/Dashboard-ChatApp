import 'package:dashboard/core/extentions/build_context_extension.dart';
import 'package:flutter/material.dart';

import '../components/chat_widgets.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/images/logo.jpg",
              height: 25,
            ),
            const SizedBox(width: 10),
            Text(
              'chat_page_title'.tr(context),
            ),
          ],
        ),
       /* actions: [
          IconButton(
            onPressed: () {
              // add logout function here
            },
            icon: const Icon(Icons.close),
          ),
        ],*/

      ),
      body: const ChatWidget(),
    );
  }
}
