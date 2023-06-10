import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  var faker = Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Extract Wdiget"),
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ChatItem(
              imageUrl: "https://picsum.photos/id/$index/200/300",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Text("12.00 AM"),
    );
  }
}
