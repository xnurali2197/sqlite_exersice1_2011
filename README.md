# SQLite - Foydalanuvchilar jadvali va masalalar yechimi

Ushbu loyiha SQLite ma'lumotlar bazasida `users` (foydalanuvchilar) jadvalini yaratish, unga test ma'lumotlarini kiritish va berilgan 6 ta SQL so'rov (masala)ni yechish uchun tayyorlangan to'liq skriptni o'z ichiga oladi.

Hozirgi sana: **20-noyabr, 2025-yil**

## Jadval tuzilishi (`users`)

| Ustun             | Turi               | Tavsif                                          |
|-------------------|--------------------|-------------------------------------------------|
| id                | INTEGER PRIMARY KEY AUTOINCREMENT | Avto-inkrement ID                          |
| first_name        | TEXT NOT NULL      | Ismi                                            |
| last_name         | TEXT NOT NULL      | Familiyasi                                      |
| email             | TEXT NOT NULL UNIQUE | Email (unique)                               |
| city              | TEXT NOT NULL      | Shahar                                          |
| region            | TEXT NOT NULL      | Viloyat yoki Toshkent shahri                    |
| status            | TEXT (default 'active') | active / inactive                           |
| registered_at     | DATE NOT NULL      | Ro'yxatdan o'tgan sana (YYYY-MM-DD)             |
| last_login        | DATE               | Oxirgi kirish sanasi (YYYY-MM-DD)               |

## Fayl tarkibi

- `users_db.sql` – to'liq ishlaydigan SQLite skripti:
  1. Jadval yaratish
  2. 17 ta realistik test foydalanuvchi qo'shish
  3. Berilgan 6 ta masalaning yechimi (izohlar bilan)

## Masalalar ro'yxati

1. Toshkent shahrida yashovchi barcha foydalanuvchilarning ismi, familiyasi va emailini chiqarish  
2. 2024-yil mart oyidan keyin ro'yxatdan o'tgan va oxirgi marta noyabr oyida kirgan foydalanuvchilar  
3. Har bir viloyatda nechta foydalanuvchi borligini hisoblash (kamayish tartibida)  
4. Email manzili `@gmail.com` bilan tugaydigan va holati `active` bo'lgan foydalanuvchilar soni  
5. Eng oxirgi ro'yxatdan o'tgan 5 ta foydalanuvchining to'liq ma'lumotlari  
6. 2024-yil iyul oyidan oldin ro'yxatdan o'tgan foydalanuvchilar  

## Qanday ishlatish kerak?

1. **DB Browser for SQLite** yoki boshqa SQLite muharririni oching  
2. Yangi ma'lumotlar bazasi yarating (masalan, `users.db`)  
3. `users_db.sql` fayl tarkibini to'liq nusxalab, "Execute SQL" oynasiga joylashtiring  
4. "Run" tugmasini bosing – jadval yaratiladi, ma'lumotlar qo'shiladi va barcha masalalar natijalari ketma-ket chiqadi  

Yoki terminal orqali:

```bash
sqlite3 users.db < users_db.sql
