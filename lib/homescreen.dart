import 'package:assignment/signout.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildHeader(context),
          const SizedBox(height: 20.0),
          _buildWelcomeMessage(),
          const SizedBox(height: 20.0),
          _buildHorizontalImageRow(),
          const SizedBox(height: 20.0),
          _buildCenteredText('Starts from 10 Guests Onwards!', Icons.supervised_user_circle_rounded),
          const SizedBox(height: 20.0),
          _buildImageSection(),
          const SizedBox(height: 20.0),
          const Center(
            child: Text(
              'What’s Your Next Occasion?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 20.0),
          _buildOccasionGrid(),
          const SizedBox(height: 20.0),
          Image.asset('assets/Frame4.png'),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignOut()),
            );
          },
          icon: const Icon(Icons.account_circle_rounded),
        ),
        const Text('Hyderabad'),
        const Icon(Icons.arrow_drop_down_outlined),
        const Spacer(),
        const Text('Rewards'),
      ],
    );
  }

  Widget _buildWelcomeMessage() {
    return const Column(
      children: [
        Center(
          child: Text(
            'Hello,',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
        Center(
          child: Text(
            'Hyderabad!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  Widget _buildHorizontalImageRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildImageAsset('assets/Frame1.png'),
        _buildImageAsset('assets/Frame 3.png'),
        _buildImageAsset('assets/Frame 2.png'),
      ],
    );
  }

  Widget _buildImageAsset(String imagePath) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(imagePath),
      ),
    );
  }

  Widget _buildCenteredText(String text, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        Icon(icon),
      ],
    );
  }

  Widget _buildImageSection() {
    return Column(
      children: [
        Image.asset('assets/Group1.png'),
        Image.asset('assets/Group2.png'),
      ],
    );
  }

  Widget _buildOccasionGrid() {
    final occasions = [
      {'image': 'assets/House Party.png', 'label': 'House Party'},
      {'image': 'assets/Haldi.png', 'label': 'Haldi'},
      {'image': 'assets/Birthday Party.png', 'label': 'Birthday'},
      {'image': 'assets/Cocktail Party.png', 'label': 'Cocktail Party'},
      {'image': 'assets/Pooja.png', 'label': 'Pooja'},
      {'image': 'assets/Engagement.png', 'label': 'Engagement'},
      {'image': 'assets/Office Party.png', 'label': 'Office Party'},
      {'image': 'assets/Kitty Party.png', 'label': 'Kitty Party'},
      {'image': 'assets/Get together.png', 'label': 'Get Together'},
      {'image': 'assets/Wedding.jpg', 'label': 'Wedding'},
      {'image': 'assets/Farmhouse Party.png', 'label': 'Farmhouse Party'},
      {'image': 'assets/House Warming.png', 'label': 'House Warming'},
      {'image': 'assets/Reception.png', 'label': 'Reception'},
      {'image': 'assets/Workshop.png', 'label': 'Workshop'},
    ];

    return SizedBox(
      height: 360,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: occasions.length,
        itemBuilder: (context, index) {
          return _buildStackItem(occasions[index]['image']!, occasions[index]['label']!);
        },
      ),
    );
  }

  Widget _buildStackItem(String imagePath, String label) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      fixedColor: const Color(0xff6066bc),
      unselectedItemColor: const Color(0xff60666c),
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant_rounded),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cake_rounded),
          label: 'Events',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/cart animated.png')),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard_rounded),
          label: 'Submit Leads',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.circle),
          label: 'Offers',
        ),
      ],
    );
  }
}
