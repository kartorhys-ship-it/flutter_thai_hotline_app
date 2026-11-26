import 'package:flutter/material.dart';

import '../hotline.dart';
import 'hotline_list.dart';

class BankUI extends StatelessWidget {
  const BankUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlineList(
      title: 'ธนาคาร',
      folder: 'bank',
      prefix: 'bank',
      entries: [
        Hotline('ธนาคารกรุงไทย', '02-111-1111', 4),
        Hotline('ธนาคารกรุงเทพ', '1333', 1),
        Hotline('ธนาคารกรุงศรีอยุธยา', '1572', 5),
        Hotline('ธนาคารกสิกรไทย', '02-888-8888', 3),
        Hotline('ธนาคารไทยพาณิชย์', '02-777-7777', 10),
        Hotline('ธนาคารออมสิน', '1115', 2),
        Hotline('ธนาคารทีเอ็มบีธนชาต', '1428', 6),
        Hotline('ลูกค้าซิตี้เดิม (ยูโอบี)', '02-285-1555', 7),
        Hotline('ธนาคารแลนด์ แอนด์ เฮ้าส์', '1327', 8),
        Hotline('ธนาคารอาคารสงเคราะห์', '02-645-9000', 9),
        Hotline('ธนาคารเกียรตินาคินภัทร', '02-165-5555', 11),
        Hotline('ธนาคารไทยเครดิต', '02-697-5454', 12),
        Hotline('ธนาคารยูโอบี', '02-285-1555', 13),
        Hotline('ธนาคารทิสโก้', '02-633-6000', 14),
        Hotline('ธนาคารอิสลามแห่งประเทศไทย', '02-204-2766', 15),
        Hotline('ธนาคารซีไอเอ็มบี ไทย', '02-626-7777', 16),
      ],
    );
  }
}
