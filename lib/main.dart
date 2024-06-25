import 'package:flutter/material.dart';


import 'src/widgets/bottom_part.dart';
import 'src/widgets/app_header.dart';
import 'src/widgets/progress_bar.dart';
import 'src/widgets/today_counter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends HookWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final index = useState<int>(0);
    const pages = [
      HomePage(),
      ProfilePage(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: index.value,
          elevation: 10,
          height: 75,
          indicatorColor: Colors.cyan.shade600,
          onDestinationSelected: (int i) {
            index.value = i;
          },
          backgroundColor: Colors.white,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home, size: 30), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.account_circle, size: 30), label: 'Profile'),
          ],
          animationDuration: const Duration(milliseconds: 1000),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: pages[index.value],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });
  static int counter = 9999;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "TOTAL",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF808080),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.10,
              ),
            ),
            Counter(counter: counter,)
          ],
        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            AppHeader(),
            ProgressBar(),
            TodayCounter(),
          ],
        ),
        BottomPart()
      ],
    );
  }
}
