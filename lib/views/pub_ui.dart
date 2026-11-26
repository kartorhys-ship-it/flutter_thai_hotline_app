import 'package:flutter/material.dart';

import '../hotline.dart';
import 'hotline_list.dart';

class PubUI extends StatelessWidget {
  const PubUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlineList(
      title: 'สาธารณูปโภค',
      folder: 'pubutil',
      prefix: 'pub',
      entries: [
        Hotline('การไฟฟ้านครหลวง', '1130', 1),
        Hotline('การไฟฟ้าส่วนภูมิภาค', '1129', 2),
        Hotline('การไฟฟ้าฝ่ายผลิตแห่งประเทศไทย', '1416', 3),
        Hotline('การประปานครหลวง', '1125', 4),
        Hotline('การประปาส่วนภูมิภาค', '1662', 5),
        Hotline('ทรู', '1242', 6),
        Hotline('ดีแทค', '1678', 7),
        Hotline('เอไอเอส', '1175', 8),
        Hotline('เอ็นที (ทีโอทีเดิม)', '1888', 9),
      ],
    );
  }
}
