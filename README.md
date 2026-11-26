# สายด่วน THAILAND

Assignment 07 · `flutter_thai_hotline_app`

แอป Flutter รวมสายด่วนในประเทศไทย 43 รายการ แบ่งเป็นการเดินทาง อุบัติเหตุและเหตุฉุกเฉิน ธนาคาร และสาธารณูปโภค

## เริ่มใช้งาน

ใช้ Flutter 3.47.0 และ Dart 3.13.0 จากนั้นรันคำสั่งจากโฟลเดอร์โปรเจ็กต์

```sh
flutter pub get
flutter run
```

หลังหน้าเปิดแอป เลือกหมวดจากแถบด้านล่าง แล้วแตะไอคอนโทรศัพท์เพื่อเปิดหมายเลขในแอปโทรศัพท์ของอุปกรณ์ แตะไอคอนข้อมูลด้านบนเพื่อเปิดหน้าผู้จัดทำ

## ทดสอบและสร้างแอป

```sh
flutter analyze
flutter test
flutter build apk --debug
flutter build web
```

โปรเจ็กต์มี iOS target สำหรับเปิดด้วย Flutter และ Xcode บน macOS การตรวจขนาด iPhone 16 Pro Max ใช้ viewport 440 × 956 logical pixels

## โครงสร้าง

- `lib/views/` มีหน้าเปิดแอป หน้าหลัก หน้าผู้จัดทำ และรายการตามหมวด
- `lib/hotline.dart` เก็บข้อมูลหนึ่งรายการและสร้าง URI สำหรับเปิดแอปโทรศัพท์
- `assets/` เก็บภาพจากโจทย์ ไอคอนแอป และฟอนต์ Google Kanit สำหรับใช้งานออฟไลน์
- `test/` ตรวจหน้าเปิด การเปลี่ยนหมวด การส่งหมายเลข การย้อนกลับ และการเลื่อนบนจอเล็ก

[Mockup และตารางเบอร์ต้นฉบับ](https://www.figma.com/design/sadTijq8cG1Mi6a8hu87fs/Mobile-App--flutter_thai_hotline_app?node-id=7007-158) · [บันทึกการพัฒนาและผลตรวจ](workflow/CONTEXT.md)
