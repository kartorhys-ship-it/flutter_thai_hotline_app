import 'package:flutter/material.dart';

import '../main.dart';
import 'about_ui.dart';
import 'travel_ui.dart';
import 'emg_ui.dart';
import 'bank_ui.dart';
import 'pub_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _category = 0;

  static const _pages = [TravelUI(), EmgUI(), BankUI(), PubUI()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
        actions: [
          IconButton(
            tooltip: 'ผู้จัดทำ',
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const AboutUI())),
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: IndexedStack(index: _category, children: _pages),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _category,
        onTap: (index) => setState(() => _category = index),
        selectedFontSize: 11,
        unselectedFontSize: 11,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car_outlined,
              key: ValueKey('category-0'),
            ),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emergency_outlined, key: ValueKey('category-1')),
            label: 'เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_outlined,
              key: ValueKey('category-2'),
            ),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.electrical_services_outlined,
              key: ValueKey('category-3'),
            ),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
    );
  }
}
