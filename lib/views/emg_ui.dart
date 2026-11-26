import 'package:flutter/material.dart';

import '../hotline.dart';
import 'hotline_list.dart';

class EmgUI extends StatelessWidget {
  const EmgUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlineList(
      title: 'อุบัติเหตุ-เหตุฉุกเฉิน',
      folder: 'emergency',
      prefix: 'emg',
      entries: [
        Hotline('เหตุด่วนเหตุร้าย', '191', 1),
        Hotline('ศูนย์ปลอดภัยคมนาคม', '1356', 6),
        Hotline('หน่วยแพทย์กู้ชีพ กทม.', '1554', 7),
        Hotline('ศูนย์เอราวัณ', '1646', 8),
        Hotline('เจ็บป่วยฉุกเฉิน', '1669', 9),
        Hotline('แจ้งเหตุเพลิงไหม้', '199', 2),
        Hotline('แจ้งรถหาย', '1192', 3),
        Hotline('เหตุด่วนทางน้ำ', '1196', 4),
        Hotline('ศูนย์ช่วยเหลือสังคม', '1300', 5),
      ],
    );
  }
}
