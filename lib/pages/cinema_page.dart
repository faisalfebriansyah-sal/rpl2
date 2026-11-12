import 'package:flutter/material.dart';

// ==========================================
// DATA ITEMS BIOSKOP (LIST & MAP)
// ==========================================
final List<Map<String, dynamic>> movieList = [
  {
    "id": "1",
    "title": "Waktu Maghrib",
    "director": "Sidharta Tata",
    "rating": "4.8",
    "reviewCount": "12.3K",
    "duration": "1 Hour 40 Minutes",
    "cinema": "Kediri XXI",
    "cinemaAddress": "Ramayana Mall Lt. 3, Jln. Jendral Sudirman No. 50, Kediri",
    "price": 50000,
    "genres": ["Horror", "Action", "Thriller", "Mythology"],
    "synopsis":
        "Waktu Maghrib tells about Indonesian myths that are spread and believed by all residents in a village. Villagers believe that it is not customary to go out at night or when the sun rises. Currently there are many supernatural creatures roaming that can threaten human life.",
    "posterUrl":
        "https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&q=80&w=800",
  },
  {
    "id": "2",
    "title": "Pengantin Setan",
    "director": "Rapi Films",
    "rating": "4.6",
    "reviewCount": "8.5K",
    "duration": "1 Hour 50 Minutes",
    "cinema": "Bandung XXI",
    "cinemaAddress": "Bandung Town Square Lt. 2, Bandung",
    "price": 45000,
    "genres": ["Horror", "Mystery"],
    "synopsis":
        "Kisah mistis pengantin yang terjebak dalam ritual kuno yang membawa petaka bagi seluruh desa.",
    "posterUrl":
        "https://images.unsplash.com/photo-1509198397868-475647b2a1e5?auto=format&fit=crop&q=80&w=800",
  },
  {
    "id": "3",
    "title": "Siksa Kubur",
    "director": "Joko Anwar",
    "rating": "4.9",
    "reviewCount": "25.1K",
    "duration": "1 Hour 57 Minutes",
    "cinema": "CGV Grand Indonesia",
    "cinemaAddress": "Grand Indonesia West Mall Lt. 8, Jakarta",
    "price": 60000,
    "genres": ["Horror", "Drama"],
    "synopsis":
        "Setelah kematian kedua orang tuanya akibat bom bunuh diri, Sita tidak percaya agama dan ingin membuktikan bahwa siksa kubur itu tidak ada.",
    "posterUrl":
        "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&q=80&w=800",
  }
];

// ==========================================
// 1. DAFTAR ITEMS SCREEN (HOME BIOSKOP)
// ==========================================
class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectedCategoryIndex = 1;
  final List<String> _categories = ["All", "Horror", "Romance", "Action", "Fantasy"];
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    final activeMovie = movieList[1];

    return Scaffold(
      backgroundColor: const Color(0xFF0F141C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Banner
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFE52C32),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back, color: Colors.white),
                              onPressed: () => Navigator.pop(context),
                            ),
                            const CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white24,
                              child: Icon(Icons.person, color: Colors.white, size: 18),
                            ),
                            const SizedBox(width: 8),
                            Row(
                              children: const [
                                Icon(Icons.location_on_outlined, color: Colors.white, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  "Bandung City",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications_none, color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Ticket",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Banner Active Ticket Card
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E2634),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE52C32).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(Icons.confirmation_number_outlined,
                                color: Color(0xFFE52C32)),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  activeMovie["title"],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  "Mon, 17 Mar (20:10 - 22:00)",
                                  style: TextStyle(color: Colors.white60, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_on_outlined, color: Colors.redAccent, size: 14),
                              const SizedBox(width: 2),
                              Text(
                                activeMovie["cinema"],
                                style: const TextStyle(color: Colors.white70, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Trending Movies Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Trending Movies",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFE52C32),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Categories Chips
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    final isSelected = _selectedCategoryIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedCategoryIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: isSelected ? const Color(0xFFE52C32) : const Color(0xFF1E2634),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            _categories[index],
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.white60,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              // Movie Cards Horizontal List
              SizedBox(
                height: 420,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: movieList.length,
                  itemBuilder: (context, index) {
                    final movie = movieList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetailScreen(movieData: movie),
                          ),
                        );
                      },
                      child: Container(
                        width: 270,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                            image: NetworkImage(movie["posterUrl"]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.1),
                                    Colors.black.withOpacity(0.95),
                                  ],
                                  stops: const [0.5, 0.7, 1.0],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 16,
                              right: 16,
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      movie["title"],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.access_time,
                                                color: Colors.white70, size: 14),
                                            const SizedBox(width: 4),
                                            Text(
                                              movie["duration"],
                                              style: const TextStyle(
                                                  color: Colors.white70, fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.star,
                                                color: Colors.amber, size: 16),
                                            const SizedBox(width: 4),
                                            Text(
                                              "${movie['rating']} (${movie['reviewCount']})",
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: (i) => setState(() => _bottomNavIndex = i),
        backgroundColor: const Color(0xFF161D27),
        selectedItemColor: const Color(0xFFE52C32),
        unselectedItemColor: Colors.white38,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.confirmation_number), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
    );
  }
}

// ==========================================
// 2. DETAIL ITEMS & PEMILIHAN KURSI MULTI-ITEM
// ==========================================
class MovieDetailScreen extends StatefulWidget {
  final Map<String, dynamic> movieData;
  const MovieDetailScreen({Key? key, required this.movieData}) : super(key: key);

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  int _selectedDateIndex = 2; // Mon 17
  int _selectedTimeIndex = 3; // 15:45

  final List<Map<String, String>> _dates = [
    {"day": "Sat", "date": "15"},
    {"day": "Sun", "date": "16"},
    {"day": "Mon", "date": "17"},
    {"day": "Tue", "date": "21"},
    {"day": "Wed", "date": "22"},
    {"day": "Thu", "date": "23"},
  ];

  final List<String> _times = ["09:30", "12:00", "13:30", "15:45", "18:00", "20:15"];

  // Matriks kursi bioskop: 0 = Kosong, 1 = Dipesan Orang, 2 = Dipilih Kamu
  late List<List<int>> _seats;

  @override
  void initState() {
    super.initState();
    _seats = [
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 1, 1, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 2, 2, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
    ];
  }

  int get selectedSeatCount {
    int count = 0;
    for (var row in _seats) {
      for (var seat in row) {
        if (seat == 2) count++;
      }
    }
    return count;
  }

  List<String> get selectedSeatNames {
    List<String> result = [];
    final rows = ['A', 'B', 'C', 'D', 'E', 'F'];
    for (int r = 0; r < _seats.length; r++) {
      for (int c = 0; c < _seats[r].length; c++) {
        if (_seats[r][c] == 2) {
          result.add("${rows[r]}${c + 1}");
        }
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = selectedSeatCount * (widget.movieData["price"] as int);

    return Scaffold(
      backgroundColor: const Color(0xFF0F141C),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 380,
                      width: double.infinity,
                      child: Image.network(
                        widget.movieData["posterUrl"],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 380,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black45,
                            Colors.transparent,
                            const Color(0xFF0F141C).withOpacity(0.8),
                            const Color(0xFF0F141C),
                          ],
                          stops: const [0.0, 0.3, 0.8, 1.0],
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xFFE52C32),
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back, color: Colors.white),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: const Icon(Icons.bookmark_border, color: Colors.black),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white54),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.play_arrow, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                "Play Trailer Now",
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              widget.movieData["title"],
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE52C32).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.access_time, color: Color(0xFFE52C32), size: 14),
                                const SizedBox(width: 4),
                                Text(
                                  widget.movieData["duration"],
                                  style: const TextStyle(color: Color(0xFFE52C32), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            "${widget.movieData['rating']} (${widget.movieData['reviewCount']})",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 8,
                        children: (widget.movieData["genres"] as List<String>)
                            .map(
                              (genre) => Chip(
                                backgroundColor: genre == "Horror"
                                    ? const Color(0xFFE52C32)
                                    : const Color(0xFF1E2634),
                                label: Text(
                                  genre,
                                  style: const TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                            )
                            .toList(),
                      ),

                      const SizedBox(height: 16),
                      Text(
                        widget.movieData["synopsis"],
                        style: const TextStyle(color: Colors.white60, height: 1.5),
                      ),

                      const SizedBox(height: 24),
                      const Divider(color: Colors.white24),
                      const SizedBox(height: 16),

                      // Cinema Location Selector
                      Row(
                        children: [
                          const Text(
                            "XXI",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.movieData["cinema"],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  widget.movieData["cinemaAddress"],
                                  style: const TextStyle(color: Colors.white54, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFE52C32),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Change", style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Date Picker
                      SizedBox(
                        height: 65,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _dates.length,
                          itemBuilder: (context, index) {
                            bool isSelected = _selectedDateIndex == index;
                            return GestureDetector(
                              onTap: () => setState(() => _selectedDateIndex = index),
                              child: Container(
                                width: 55,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? const Color(0xFFE52C32)
                                      : const Color(0xFF161D27),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(_dates[index]["day"]!,
                                        style: TextStyle(
                                            color: isSelected ? Colors.white : Colors.white54,
                                            fontSize: 12)),
                                    const SizedBox(height: 4),
                                    Text(_dates[index]["date"]!,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Time Picker
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _times.length,
                          itemBuilder: (context, index) {
                            bool isSelected = _selectedTimeIndex == index;
                            return GestureDetector(
                              onTap: () => setState(() => _selectedTimeIndex = index),
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? const Color(0xFFE52C32)
                                      : const Color(0xFF161D27),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  _times[index],
                                  style: TextStyle(
                                    color: isSelected ? Colors.white : Colors.white70,
                                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Status Legends
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildLegendItem(const Color(0xFF1E2634), "Available"),
                          const SizedBox(width: 20),
                          _buildLegendItem(Colors.white, "Booked"),
                          const SizedBox(width: 20),
                          _buildLegendItem(const Color(0xFFE52C32), "You"),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Layar Bioskop
                      Center(
                        child: Column(
                          children: [
                            Container(
                              height: 4,
                              width: 200,
                              decoration: const BoxDecoration(
                                color: Colors.white30,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white24,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text("SCREEN",
                                style: TextStyle(
                                    color: Colors.white38,
                                    fontSize: 10,
                                    letterSpacing: 2)),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Dynamic Grid Seats
                      Column(
                        children: List.generate(_seats.length, (rowIndex) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(_seats[rowIndex].length, (colIndex) {
                                double rightPadding = colIndex == 3 ? 20.0 : 6.0;
                                int seatStatus = _seats[rowIndex][colIndex];

                                Color seatColor;
                                if (seatStatus == 1) {
                                  seatColor = Colors.white;
                                } else if (seatStatus == 2) {
                                  seatColor = const Color(0xFFE52C32);
                                } else {
                                  seatColor = const Color(0xFF1E2634);
                                }

                                return GestureDetector(
                                  onTap: () {
                                    if (seatStatus == 1) return;
                                    setState(() {
                                      _seats[rowIndex][colIndex] = seatStatus == 0 ? 2 : 0;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: rightPadding),
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: seatColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          );
                        }),
                      ),

                      const SizedBox(height: 100),
                    ],
                  ),
                )
              ],
            ),
          ),

          // Bottom Bar Checkout
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: const BoxDecoration(
                color: Color(0xFF161D27),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Payment Total",
                        style: TextStyle(color: Colors.white54, fontSize: 12),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Rp${totalPrice.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')},00",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE52C32),
                      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onPressed: selectedSeatCount == 0
                        ? null
                        : () {
                            _showPaymentBottomSheet(context, totalPrice);
                          },
                    child: const Text(
                      "Checkout Ticket",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLegendItem(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
        ),
        const SizedBox(width: 6),
        Text(label, style: const TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }

  void _showPaymentBottomSheet(BuildContext context, int totalAmount) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color(0xFF161D27),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return PaymentModalContent(
          totalAmount: totalAmount,
          movieData: widget.movieData,
          selectedSeats: selectedSeatNames,
          selectedDate: "${_dates[_selectedDateIndex]['day']}, ${_dates[_selectedDateIndex]['date']} Mar",
          selectedTime: _times[_selectedTimeIndex],
        );
      },
    );
  }
}

// ==========================================
// 3. PAYMENT SHEET (CASH INPUT & QRIS)
// ==========================================
class PaymentModalContent extends StatefulWidget {
  final int totalAmount;
  final Map<String, dynamic> movieData;
  final List<String> selectedSeats;
  final String selectedDate;
  final String selectedTime;

  const PaymentModalContent({
    Key? key,
    required this.totalAmount,
    required this.movieData,
    required this.selectedSeats,
    required this.selectedDate,
    required this.selectedTime,
  }) : super(key: key);

  @override
  State<PaymentModalContent> createState() => _PaymentModalContentState();
}

class _PaymentModalContentState extends State<PaymentModalContent> {
  String _paymentMethod = "qris"; // "qris" atau "cash"
  final TextEditingController _cashController = TextEditingController();
  int _cashGiven = 0;

  @override
  Widget build(BuildContext context) {
    int change = _cashGiven - widget.totalAmount;

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Metode Pembayaran",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 16),

          // Pilihan QRIS atau Cash
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => _paymentMethod = "qris"),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: _paymentMethod == "qris"
                          ? const Color(0xFFE52C32).withOpacity(0.2)
                          : const Color(0xFF0F141C),
                      border: Border.all(
                        color: _paymentMethod == "qris" ? const Color(0xFFE52C32) : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.qr_code_2, color: Colors.white),
                        SizedBox(width: 8),
                        Text("QRIS", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => _paymentMethod = "cash"),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: _paymentMethod == "cash"
                          ? const Color(0xFFE52C32).withOpacity(0.2)
                          : const Color(0xFF0F141C),
                      border: Border.all(
                        color: _paymentMethod == "cash" ? const Color(0xFFE52C32) : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.payments_outlined, color: Colors.white),
                        SizedBox(width: 8),
                        Text("Cash / Tunai", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          if (_paymentMethod == "qris") ...[
            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.qr_code_scanner, size: 140, color: Colors.black),
                    const SizedBox(height: 8),
                    const Text(
                      "Scan QRIS untuk membayar",
                      style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            )
          ] else ...[
            TextField(
              controller: _cashController,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Jumlah Uang Tunai",
                prefixText: "Rp ",
                prefixStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: const Color(0xFF0F141C),
              ),
              onChanged: (val) {
                setState(() {
                  _cashGiven = int.tryParse(val) ?? 0;
                });
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Kembalian:", style: TextStyle(color: Colors.white70)),
                Text(
                  change >= 0
                      ? "Rp${change.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}"
                      : "Uang Kurang",
                  style: TextStyle(
                    color: change >= 0 ? Colors.green : Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],

          const SizedBox(height: 24),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE52C32),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: (_paymentMethod == "cash" && change < 0)
                  ? null
                  : () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReceiptScreen(
                            movieData: widget.movieData,
                            seats: widget.selectedSeats,
                            date: widget.selectedDate,
                            time: widget.selectedTime,
                            totalAmount: widget.totalAmount,
                            paymentMethod: _paymentMethod.toUpperCase(),
                            cashGiven: _cashGiven,
                            change: change,
                          ),
                        ),
                      );
                    },
              child: const Text(
                "Konfirmasi Pembayaran",
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ==========================================
// 4. STRUK PEMBAYARAN SCREEN
// ==========================================
class ReceiptScreen extends StatelessWidget {
  final Map<String, dynamic> movieData;
  final List<String> seats;
  final String date;
  final String time;
  final int totalAmount;
  final String paymentMethod;
  final int cashGiven;
  final int change;

  const ReceiptScreen({
    Key? key,
    required this.movieData,
    required this.seats,
    required this.date,
    required this.time,
    required this.totalAmount,
    required this.paymentMethod,
    required this.cashGiven,
    required this.change,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F141C),
      appBar: AppBar(
        title: const Text("Struk Pembayaran"),
        backgroundColor: const Color(0xFF161D27),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.check_circle, color: Colors.green, size: 60),
                const SizedBox(height: 10),
                const Text(
                  "Pembayaran Berhasil!",
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Terima kasih atas pesanan Anda",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 20),
                const Divider(color: Colors.black26),
                const SizedBox(height: 16),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        movieData["posterUrl"],
                        width: 60,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movieData["title"],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            movieData["cinema"],
                            style: const TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "$date • $time",
                            style: const TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                const Divider(color: Colors.black26),
                const SizedBox(height: 12),

                _buildReceiptRow("Kursi Dipesan", seats.join(", "), isBold: true),
                _buildReceiptRow("Jumlah Tiket", "${seats.length} Tiket"),
                _buildReceiptRow("Metode Bayar", paymentMethod),
                if (paymentMethod == "CASH") ...[
                  _buildReceiptRow("Uang Dibayar", "Rp${cashGiven.toString()}"),
                  _buildReceiptRow("Kembalian", "Rp${change.toString()}"),
                ],

                const Divider(color: Colors.black26),
                const SizedBox(height: 8),
                _buildReceiptRow(
                  "Total Biaya",
                  "Rp${totalAmount.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}",
                  isBold: true,
                  fontSize: 16,
                ),

                const SizedBox(height: 24),

                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.qr_code_2_sharp, size: 90, color: Colors.black87),
                      const SizedBox(height: 4),
                      Text(
                        "TICKET ID: CNM-${DateTime.now().millisecondsSinceEpoch.toString().substring(5)}",
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE52C32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    child: const Text("Kembali ke Beranda", style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReceiptRow(String title, String value, {bool isBold = false, double fontSize = 14}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.black54, fontSize: 14)),
          Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}