# ผลการตรวจ

Flutter 3.47.0 / Dart 3.13.0 บน Windows

| การตรวจ | ผลที่สังเกต |
| --- | --- |
| Scaffold · `flutter pub get --offline`, `flutter analyze --no-pub`, `flutter test --no-pub` | ผ่านทั้งสามคำสั่ง |
| Red · `flutter test --no-pub --reporter expanded` | ล้มเหลวทั้งสี่กรณีตามคาด เพราะ scaffold ยังไม่มี splash, เมนูหมวด, ปุ่มโทร และรายการที่เลื่อนได้ |
| Green · `flutter test --no-pub --reporter expanded` | ผ่านทั้งสี่กรณี รวมถึงการส่ง `tel:1197` ไปยัง platform channel จำลองและการแจ้งเมื่อเปิดแอปโทรศัพท์ไม่ได้ |
| `flutter analyze --no-pub` | ไม่พบปัญหา |
| `flutter build web --no-pub --no-wasm-dry-run` | สร้างเว็บสำเร็จ เครื่องมือรายงานคำเตือนเกี่ยวกับ CupertinoIcons |
| `flutter build apk --debug --no-pub` | สร้าง Android debug APK สำเร็จ |
| เว็บที่ 440 × 956 logical pixels | เปิดผ่าน HTTP ในเครื่อง เห็นหน้าการเดินทาง เปลี่ยนไปหมวดสาธารณูปโภค และเปิดหน้าผู้จัดทำได้ เทียบลำดับหัวข้อ ภาพ รายการ ปุ่มโทร และเมนูด้านล่างกับ Figma |
| จอ 320 × 600 logical pixels | Widget test เลื่อนไปถึงสายด่วนการรถไฟ 1690 โดยไม่พบ layout error |
| การโทรจริงและ iOS | ยังไม่ได้ทดสอบบนอุปกรณ์จริงหรือสร้าง iOS build บน macOS |

[เกณฑ์ตรวจรับ](../01-requirements/requirements.md) · [Widget tests](../../test/widget_test.dart)
