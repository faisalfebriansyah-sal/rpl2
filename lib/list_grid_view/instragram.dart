import 'package:flutter/material.dart';

class LayoutInstragram extends StatelessWidget {
  const LayoutInstragram({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> highlights = [
      {'name': 'cerita', 'image': 'assets/images/profile.png'},
      {'name': 'topik', 'image': 'assets/images/profile.png'},
      {'name': 'dhni', 'image': 'assets/images/profile.png'},
      {'name': 'alham', 'image': 'assets/images/profile.png'},
      {'name': 'ijal', 'image': 'assets/images/profile.png'},
      {'name': 'gadi', 'image': 'assets/images/profile.png'},
      {'name': 'ahmdtmla', 'image': 'assets/images/profile.png'},
    ];

    final List<Map<String, String>> posts = [
      {
        'username': 'topik_ramdani',
        'profile': 'assets/images/profile.png',
        'postImage': 'assets/images/tengkorak.png',
        'caption': '#cukup dikenang jangan diulang'
      },
      {
        'username': 'Dhni',
        'profile': 'assets/images/profile.png',
        'postImage': 'assets/images/kopi.jpg',
        'caption': 'hayu ngopi  sambil pusing'
      },
      {
        'username': 'Alham',
        'profile': 'assets/images/profile.png',
        'postImage': 'assets/images/coffe.jpg',
        'caption': 'p info ngopi'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(fontFamily: 'Cursive', fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 105,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: highlights.length,
                itemBuilder: (context, index) {
                  final highlight = highlights[index];
                  final bool isAddButton = index == 0;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color.fromARGB(255, 246, 0, 0), width: 2),
                          ),
                          child: CircleAvatar(
                            radius: 29,
                            backgroundColor: Colors.grey[800],
                            backgroundImage: isAddButton ? null : NetworkImage(highlight['image']!),
                            child: isAddButton ? const Icon(Icons.add, color: Colors.white, size: 28) : null,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          highlight['name']!,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(height: 1, thickness: 0.3, color: Colors.grey),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(post['profile']!),
                      ),
                      title: Text(
                        post['username']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: const Icon(Icons.more_vert),
                    ),
                    Image.network(
                      post['postImage']!,
                      width: double.infinity,
                      height: 380,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.send_outlined)),
                        const Spacer(),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark_border)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(color: Color.fromARGB(255, 6, 6, 6)),
                          children: [
                            TextSpan(
                              text: '${post['username']} ',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: post['caption']),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}