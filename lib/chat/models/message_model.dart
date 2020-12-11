import 'package:app_store/chat/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: john,
    time: '5:30 PM',
    text: 'Thank you and Have a nice day!',
    unread: true,
  ),
  Message(
    sender: jennifer,
    time: '4:30 PM',
    text: 'Hey, eargerly waiting for your response!',
    unread: true,
  ),
];
// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: john,
    time: '5:30 PM',
    text: 'Okay! Thank you and Have a nice day!',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'OH! I will check into it and let you know.',
    unread: false,
  ),
  Message(
    sender: john,
    time: '3:16 PM',
    text: 'Can you ship it to my address if its convienent?',
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:15 PM',
    text: 'Ohkay..Then when can I receive it from you?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text:
        'Yea sure! Its a great book but to be franknot that good as the movie.. But you should definitely check it out?',
    unread: true,
  ),
  Message(
    sender: john,
    time: '2:30 PM',
    text:
        'I am good. I am interested in that book of yours "The Godfather". Have you read it?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Hey.. how are you?',
    unread: true,
  ),
  Message(
    sender: john,
    time: '2:00 PM',
    text: 'Hey!',
    unread: true,
  ),
];
