# วิธีการติดตั้ง VS Code
1. ดาวน์โหลด [คลิกที่นี่!!](https://code.visualstudio.com)
2. เมื่อติดตั้งสำเร็จให้เข้าโปรแกรม VS Code
3. กด Ctrl+Shift+P
4. ใช้คำสั่ง flutter doctor เพื่อเช็คสถานะการติดตั้งอีกครั้ง

# วิธีการติดตั้ง Flutter
1. ดาวน์โหลด SDK [ที่นี่!!](https://docs.flutter.dev/get-started/install/windows/desktop?tab=download)
2. สร้างโฟลเดอร์ชื่อ "src" ในไดรฟ์ C และนำไฟล์ที่ดาวน์โหลดใส่เข้าไปในโฟลเดอร์ !!ห้ามวางไฟล์ไว้ใน C:\Program Files\!!
3. ทำการแตกไฟล์
4. กดปุ่ม Start ไปที่ช่อง search หรือถ้าไม่มีก็เข้า Settings > ใส่ env ที่ช่อง search > เลือก Edit The System Environment Variables ไปที่ Advanced กดปุ่ม Environment Variables
5. ดูตรง User variables คลิกที่ Path แล้วกดปุ่ม "Edit…" จากนั้น กดปุ่ม "New"
6. ไปที่โฟลเดอร์ตามข้อ 2 กดเข้าไปจนถึง flutter\bin แล้วก็อป path มาวาง แล้วกด OK เท่านี้ก้เรียบร้อยสำหรับการ set up path
7. เปิด Windows PowerShell ใส่คำสั่ง "C:\src\flutter>flutter doctor" และรอสักพัก

# วิธีการใช้งาน
1. ดาวน์โหลดไฟล์ในหน้า github ทั้งหมดลงเครื่องและแตกไฟล์
2. คลิกขวาที่ชื่อไฟล์ > "Open in terminal"
3. พิมพ์คำสั่ง "code ." และกด Enter
4. เปิด Terminal
5. run คำสั่ง flutter run -d chrome
6. ใส่จำนวนคนที่จะคัดสรรสถาบัน
7. ใส่ชื่อคนโดยแบ่งชื่อแต่ละคนด้วยช่องว่าง
8. กดปุ่ม 'คัดสรร'
9. จะมีการคัดสรรสถาบันให้

# ภาษาและ Framwork ที่ใช้
- ภาษา: Dart
- Framework: Flutter

#### เหตุผลที่ใช้ภาษานี้
- เป็นภาษาที่เข้าใจง่าย และเป็นภาษาที่ตนเองถนัด
