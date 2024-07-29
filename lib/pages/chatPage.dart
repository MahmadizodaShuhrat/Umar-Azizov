import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Map<String, dynamic>> messages = [];
  TextEditingController _controller = TextEditingController();

  void sendMessage(String text) {
    setState(() {
      messages.add({
        'text': text,
        'sender': 'user',
        'timestamp': DateTime.now().toString(),
      });
    });
    _controller.clear();
  }

  void deleteMessage(int index) {
    setState(() {
      messages.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/UmarAzizov.png"),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Умар Азизов'),
                Text(
                  'в сети',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Align(
                    alignment: messages[index]['sender'] == 'user'
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: messages[index]['sender'] == 'user'
                            ? Colors.blue[100]
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(messages[index]['text']),
                    ),
                  ),
                  onLongPress: () => deleteMessage(index),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.emoji_emotions),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.image),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'сообщений',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (_controller.text.trim().isNotEmpty) {
                      sendMessage(_controller.text.trim());
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
