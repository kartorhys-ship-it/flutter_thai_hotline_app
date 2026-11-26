import 'package:flutter/material.dart';

import '../hotline.dart';
import 'hotline_list.dart';

class TravelUI extends StatelessWidget {
  const TravelUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlineList(
      title: 'การเดินทาง',
      folder: 'travel',
      prefix: 'travel',
      entries: [
        Hotline('ข้อมูลจราจร', '1197', 4),
        Hotline('ตำรวจทางหลวง', '1193', 3),
        Hotline('ตำรวจท่องเที่ยว', '1155', 2),
        Hotline('เส้นทางบนทางด่วน', '1543', 7),
        Hotline('ขสมก.', '1348', 5),
        Hotline('บริษัท ขนส่ง จำกัด', '1490', 6),
        Hotline('กรมทางหลวงชนบท', '1146', 1),
        Hotline('กรมทางหลวง', '1586', 8),
        Hotline('การรถไฟแห่งประเทศไทย', '1690', 9),
      ],
    );
  }
}
