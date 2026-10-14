import 'package:flutter/material.dart';


class TwitterProfileScreen extends StatelessWidget {
  const TwitterProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/berdiri.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black54,
                          radius: 18,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 20),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 18,
                              child: ClipOval(
                                child: ColorFiltered(
                                  colorFilter: const ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.difference,
                                  ),
                                  child: Image.asset(
                                    'assets/images/berdiri.png',
                                    width: 36,
                                    height: 36,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 18,
                              child: IconButton(
                                icon: const Icon(Icons.search, color: Colors.white, size: 20),
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(width: 8),
                            CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 18,
                              child: IconButton(
                                icon: const Icon(Icons.more_vert, color: Colors.white, size: 20),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: -40,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 4),
                    ),
                    child: const CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/berdiri.png'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Faisal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    '@Faisal',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: const [
                      Icon(Icons.location_on_outlined, color: Colors.grey, size: 18),
                      SizedBox(width: 6),
                      Text(
                        'Amsterdams, Walanda',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.link, color: Colors.grey, size: 18),
                      SizedBox(width: 6),
                      Text(
                        'medium.com/@faisal',
                        style: TextStyle(color: Colors.blueAccent, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 16,
                    runSpacing: 4,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.cake_outlined, color: Colors.grey, size: 18),
                          SizedBox(width: 6),
                          Text(
                            'Born March 15, 1995',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.calendar_today_outlined, color: Colors.grey, size: 18),
                          SizedBox(width: 6),
                          Text(
                            'Joined November 2012',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text('Halaman About'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali ke Halaman Home'),
          ),
          ],
        ),
      ),
    );
  }
}