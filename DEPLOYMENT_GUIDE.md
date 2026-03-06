# دليل الرفع على Railway

## المتطلبات الأساسية

1. **حساب Railway** - تسجيل على [railway.app](https://railway.app)
2. **Git مثبت** - للرفع على GitHub
3. **Node.js و pnpm** - للاختبار المحلي
4. **مفاتيح Binance API** - للتداول الفعلي
5. **توكن Telegram Bot** - للتواصل عبر Telegram

## خطوات الرفع

### 1. إعداد قاعدة البيانات

قبل الرفع، تأكد من وجود قاعدة بيانات MySQL:

```bash
# إنشاء قاعدة البيانات محلياً للاختبار
pnpm db:push
```

### 2. رفع الكود على GitHub

```bash
# تهيئة git إذا لم تكن قد فعلت ذلك
git init
git add .
git commit -m "Initial commit: AI Trading Bot"

# إضافة remote repository
git remote add origin https://github.com/your-username/ai-trading-bot.git

# رفع الكود
git branch -M main
git push -u origin main
```

### 3. إنشاء مشروع على Railway

1. اذهب إلى [railway.app](https://railway.app)
2. انقر على "New Project"
3. اختر "Deploy from GitHub"
4. اختر repository `ai-trading-bot`
5. اضغط "Deploy"

### 4. إضافة قاعدة البيانات

1. في لوحة التحكم، اضغط على "Add"
2. اختر "Add Database"
3. اختر "MySQL"
4. سيتم إنشاء متغيرات البيئة تلقائياً

### 5. تكوين متغيرات البيئة

في لوحة تحكم Railway، اذهب إلى "Variables" وأضف:

```
# Telegram Bot
TELEGRAM_BOT_TOKEN=your-telegram-bot-token

# Encryption Secret (استخدم كلمة سر قوية)
ENCRYPTION_SECRET=your-encryption-secret-key-min-32-chars

# Manus OAuth (من مشروع Manus الخاص بك)
VITE_APP_ID=your-app-id
OWNER_OPEN_ID=your-open-id
OWNER_NAME=Your Name

# JWT Secret
JWT_SECRET=your-jwt-secret-key

# Node Environment
NODE_ENV=production
```

### 6. اختبار الاتصال

بعد الرفع، تحقق من السجلات:

```bash
# في لوحة Railway
# اذهب إلى "Deployments" وشاهد السجلات
```

يجب أن ترى رسالة مثل:
```
Server running on http://localhost:3000/
```

### 7. تشغيل Telegram Bot

البوت سيبدأ تلقائياً عند الرفع. لاختباره:

1. أرسل `/start` إلى بوتك على Telegram
2. يجب أن تحصل على رسالة ترحيب

## متغيرات البيئة المطلوبة

| المتغير | الوصف | مثال |
|---------|-------|------|
| `DATABASE_URL` | اتصال قاعدة البيانات | `mysql://user:pass@host/db` |
| `TELEGRAM_BOT_TOKEN` | توكن بوت Telegram | `123456789:ABCdefGHIjklmnoPQRstuvwxyz` |
| `ENCRYPTION_SECRET` | مفتاح التشفير (32+ حرف) | `your-secret-key-here-min-32-chars` |
| `JWT_SECRET` | مفتاح التوقيع | `your-jwt-secret-key` |
| `VITE_APP_ID` | معرف تطبيق Manus | `your-app-id` |
| `NODE_ENV` | بيئة التشغيل | `production` |

## نصائح الأمان

1. **لا تشارك المفاتيح**: لا تضع مفاتيح API في الكود
2. **استخدم Railway Secrets**: استخدم نظام المتغيرات الآمن في Railway
3. **مفاتيح Binance**: فعّل IP Whitelist وعطّل صلاحية السحب
4. **النسخ الاحتياطية**: احفظ نسخة من قاعدة البيانات بانتظام

## استكشاف الأخطاء

### الخطأ: "Cannot find module 'ws'"
```bash
# أعد تثبيت المكتبات
pnpm install
```

### الخطأ: "Database connection failed"
```bash
# تحقق من متغير DATABASE_URL
# تأكد من أن قاعدة البيانات تعمل
```

### الخطأ: "Telegram bot not responding"
```bash
# تحقق من TELEGRAM_BOT_TOKEN
# تأكد من أن البوت مفعّل على Telegram
```

## الصيانة والتحديثات

### تحديث الكود

```bash
# قم بالتغييرات محلياً
git add .
git commit -m "Update: feature description"
git push origin main

# سيتم الرفع تلقائياً على Railway
```

### مراقبة الأداء

1. اذهب إلى "Metrics" في Railway
2. راقب استخدام CPU والذاكرة
3. اطلع على السجلات للأخطاء

## الدعم والمساعدة

- **توثيق Railway**: https://docs.railway.app
- **مشاكل Telegram Bot**: https://core.telegram.org/bots/faq
- **Binance API**: https://binance-docs.github.io/apidocs

---

**ملاحظة**: تأكد من اختبار البوت محلياً قبل الرفع على Railway!
