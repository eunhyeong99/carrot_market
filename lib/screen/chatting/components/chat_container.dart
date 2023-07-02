import 'package:carrot_market/model/chat_message.dart';
import 'package:carrot_market/screen/components/image_container.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;

  const ChatContainer({
    required this.chatMessage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            ImageContainer(
                borderRadius: 25,
                imgUrl: chatMessage.profileImage,
                width: 50,
                height: 50),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: chatMessage.sender),
                        TextSpan(text: chatMessage.location),
                        TextSpan(text: '* ${chatMessage.sendDate}'),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(chatMessage.message, overflow: TextOverflow.ellipsis),
                  const Spacer(),
                ],
              ),
            ),
            Visibility(
              visible: chatMessage.imageUri != null,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ImageContainer(
                    width: 50,
                    height: 50,
                    borderRadius: 8,
                    imgUrl: chatMessage.imageUri ?? '',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
