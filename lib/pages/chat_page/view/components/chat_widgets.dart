import 'package:dashboard/core/extentions/build_context_extension.dart';
import 'package:flutter/material.dart';


class ChatWidget extends StatelessWidget {
  static const String screenRoute='chat_screen';
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Placeholder for messages list
          //Flexible(
          /*child:*/ Container(
            color: Colors.grey[200],
            /*child: ListView(
                  children: const [
                    ListTile(
                      title: Text('User 1: Hello!'),
                    ),
                    ListTile(
                      title: Text('User 2: Hi there!'),
                    ),
                    // Add more messages here
                  ],
                ),*/
          ),
          //),
          Container(
            decoration:  BoxDecoration(
              border: Border(
                top: BorderSide(
                  color:context.getTheme.buttonTheme.colorScheme?.background.withOpacity(0.9) ?? Colors.transparent,
                  width: 2,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration:  InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      hintText: 'Write_your_message_here'.tr(context),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Send'.tr(context)),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}