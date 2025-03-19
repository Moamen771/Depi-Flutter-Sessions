import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task26/screens/support_screen.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({
    super.key,
    required this.txt,
    required this.price,
    required this.img,
    required this.id,
  });

  final String txt;
  final String price;
  final String img;
  final int id;

  @override
  Widget build(BuildContext context) {
    Map<int, String> itemInfo = {
      1: 'HP Laptop Performance meets reliability in a sleek design.\n\nProcessor: Powered by high-performance Intel/AMD processors, ensuring seamless multitasking.\n\nDisplay: Features a vibrant, high-definition screen for sharp visuals and true-to-life colors.\n\nDesign: Lightweight and elegant, perfect for work or on-the-go.\n\nBattery Life: Long-lasting battery to keep you connected throughout the day.\nSpecial Features: Pre-installed HP software for enhanced productivity and security.',
      2: 'Elite Gaming Chair Unleash your gaming potential with unmatched comfort and style.\n\nErgonomic Design: Engineered for long gaming sessions with lumbar and neck support cushions.\n\nAdjustable Features: Recline up to 160°, customizable armrests, and height adjustments for a tailored fit.\n\nPremium Materials: Breathable PU leather and high-density foam for durability and comfort.\n\nSturdy Build: Reinforced steel frame and a Class 4 gas lift for stability and safety.',
      3: 'Smartphone Stay connected, productive, and entertained with ease.\n\nPerformance: Powered by a high-speed processor for smooth multitasking and app performance.\n\nDisplay: Crisp and vibrant touchscreen with high resolution for immersive viewing.\n\nCamera: Advanced camera system for stunning photos and videos, even in low light.\n\nBattery: All-day battery life with fast charging support to keep you going.\n\nDesign: Sleek, lightweight, and durable build for a premium feel.',
      4: 'HP Laptop Your perfect companion for work, play, and everything in between.\n\nProcessor: Equipped with cutting-edge Intel/AMD processors for effortless performance.\n\nGraphics: Stunning visuals powered by integrated or dedicated graphics options.\n\nStorage: High-capacity SSD/HDD to store all your files and keep boot times lightning fast.\n\nBuild: Durable, lightweight chassis with an elegant, modern design.\n\nConnectivity: Multiple ports and fast Wi-Fi for seamless connections.',
      5: 'PlayStation 5 (PS5) Elevate your gaming experience to new heights.\n\nPerformance: Powered by a custom AMD processor with ray tracing technology for ultra-realistic visuals.\n\nStorage: Super-fast SSD ensures near-instant loading times and seamless gameplay.\n\nGraphics: 4K gaming with HDR support for breathtaking visuals and vibrant colors.\n\nController: Innovative DualSense wireless controller with adaptive triggers and haptic feedback for immersive gameplay.\n\nDesign: Sleek, futuristic look with a whisper-quiet cooling system.',
      6: 'DualSense Wireless Controller for PS5 Experience next-level immersion in your games.\n\nHaptic Feedback: Feel the impact and texture of every action with dynamic vibrations.\n\nAdaptive Triggers: Adjustable resistance simulates real-world tension for immersive gameplay.\n\nDesign: Sleek and ergonomic with a comfortable grip for long gaming sessions.\n\nBuilt-in Microphone: Chat with friends or teammates without the need for a headset.\n\nAudio Jack: Connect your favorite headphones for a more private gaming experience.',
      8: 'PC Case Style meets functionality for your ultimate build.\n\nDesign: Sleek and modern, with tempered glass panels for showcasing your components.\n\nAirflow: Optimized ventilation with multiple fan mounts and mesh panels for superior cooling.\n\nSpace: Spacious interior to accommodate various motherboard sizes (ATX, Micro-ATX, Mini-ITX) and large GPUs.\n\nCable Management: Dedicated channels and tie points to keep cables organized and out of sight.\n\nConnectivity: Front I/O panel with USB ports, audio jacks, and more for easy access.',
      9: 'Mouse, Keyboard & Headphone Combo The ultimate trio for an exceptional gaming or work experience.\n\nMouse: Precision-engineered with adjustable DPI settings, ergonomic design, and customizable buttons for total control.\n\nKeyboard: Features responsive keys, RGB backlighting, and durable construction for style and performance.\n\nHeadphone: Immersive sound quality with noise-canceling technology, a comfortable fit, and a built-in microphone for crystal-clear communication.',
      10: 'Essential Tech Combo Upgrade your setup with this versatile and functional trio.\n\nMouse: Ergonomic design with high-precision tracking and customizable buttons for productivity or gaming.\n\nKeyboard: Quiet, responsive keys with spill-resistant design and optional backlighting for enhanced usability.\n\nHeadphones: Rich audio quality with comfortable ear cushions and an adjustable headband for all-day use.',
      11: 'Headphone Immerse yourself in exceptional sound quality and comfort.\n\nAudio: Crystal-clear sound with deep bass and balanced tones for an immersive listening experience.\n\nComfort: Soft, cushioned ear pads and an adjustable headband for long-lasting comfort.\n\nConnectivity: Available in both wired and wireless options for seamless connection to your devices.\n\nDesign: Sleek, lightweight, and foldable for easy portability.\n\nMicrophone: Built-in mic for clear communication during calls or gaming.',
    };
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                BackButton(),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(img))),
                ),
                Divider(
                  color: Colors.grey,
                  height: 10,
                  indent: 20,
                  endIndent: 20,
                ),
                Text(
                  txt,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'description',
                  style: TextStyle(
                    color: Colors.purple.shade800,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(),
                  child: Text(
                    '${itemInfo[id]}',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple.shade800,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.all(8)),
                        child: Text(
                          'Get Offer',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SupportScreen(),
                            )),
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.purple.shade800,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.all(12)),
                        icon: Icon(
                          Icons.chat_outlined,
                          size: 30,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
