import 'package:flutter/material.dart';
import 'package:flutterproducts/core/theme.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Recent Text',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.all(5),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildRecentContact('Aayush', context),
                _buildRecentContact('Aniket', context),
                _buildRecentContact('Rupesh', context),
                _buildRecentContact('Pragyan', context),
                _buildRecentContact('Babin', context),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: DefaultColors.messageListPage,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )
              ),
              child: ListView(
                children: [
                  _buildMessageTile('Aayush A', 'aayush@gmail.com', '08:43'),
                  _buildMessageTile('Aniket T', 'aniket@gmail.com', '08:23'),
                  _buildMessageTile('Rupesh G', 'ruepsh@gmail.com', '08:11'),
                  _buildMessageTile('Pragyan K', 'pragyan@gmail.com', '08:03'),
                  _buildMessageTile('Babin B', 'babin@gmail.com', '08:01'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageTile(String name, String message, String time) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage('https://via.placeholder.com/150'),
      ),
      title: Text(
        name,
        style: const TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        message,
        style: const TextStyle(color: Colors.grey),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        time,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _buildRecentContact(String name, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
