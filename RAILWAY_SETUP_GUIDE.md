# 🚀 دليل رفع البوت على Railway - خطوة بخطوة

## المرحلة 1: إعداد GitHub

### الخطوة 1: تثبيت Git
```bash
# على Windows: حمّل من https://git-scm.com
# على Mac: brew install git
# على Linux: sudo apt-get install git
```

### الخطوة 2: إعداد Git محلياً
```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

### الخطوة 3: إنشاء Repository على GitHub

1. اذهب إلى [github.com](https://github.com)
2. اضغط على **"+"** في الزاوية العلوية اليمنى
3. اختر **"New repository"**
4. أدخل الاسم: `ai-trading-bot`
5. اختر **"Public"** أو **"Private"**
6. اضغط **"Create repository"**

### الخطوة 4: رفع الأكواد على GitHub

```bash
# 1. فك الضغط من ملف ZIP
unzip ai-trading-bot-complete.zip
cd ai-trading-bot

# 2. تهيئة Git
git init
git add .
git commit -m "Initial commit: AI Trading Bot"

# 3. إضافة الـ remote (استبدل YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/ai-trading-bot.git

# 4. رفع الأكواد
git branch -M main
git push -u origin main
```

**ملاحظة:** قد يطلب منك كلمة المرور أو Personal Access Token

---

## المرحلة 2: إنشاء حساب Railway

### الخطوة 1: التسجيل
1. اذهب إلى [railway.app](https://railway.app)
2. اضغط **"Start Project"**
3. اختر **"Deploy from GitHub"**
4. سجّل الدخول بحسابك على GitHub

### الخطوة 2: ربط GitHub
1. اضغط **"Authorize Railway"**
2. اختر **"Install & Authorize"**
3. اختر Repository: `ai-trading-bot`

---

## المرحلة 3: إعداد قاعدة البيانات

### الخطوة 1: إضافة قاعدة البيانات

1. في لوحة Railway، اضغط **"Add"**
2. اختر **"Add Database"**
3. اختر **"MySQL"** (أو PostgreSQL)
4. سيتم إنشاء `DATABASE_URL` تلقائياً ✅

---

## المرحلة 4: إضافة المتغيرات البيئية

### الخطوة 1: فتح Variables

1. في لوحة Railway
2. اضغط على **"Variables"** في الأعلى
3. اضغط **"Add Variable"**

### الخطوة 2: إضافة المتغيرات

أضف المتغيرات التالية واحداً تلو الآخر:

| المتغير | القيمة | ملاحظة |
|---------|--------|--------|
| `TELEGRAM_BOT_TOKEN` | `8739177204:AAHdeGI_lRINkb3f1KoNXZoW5LbNM2cCy8g` | من BotFather |
| `ENCRYPTION_SECRET` | `your-secret-key-min-32-chars-here` | اختر كلمة سر قوية |
| `JWT_SECRET` | `your-jwt-secret-key-here` | اختر كلمة سر قوية |
| `VITE_APP_ID` | `your-app-id` | من Manus |
| `NODE_ENV` | `production` | لا تغيره |

**كيفية إضافة متغير:**
1. اضغط **"New Variable"**
2. أدخل الاسم (مثل: `TELEGRAM_BOT_TOKEN`)
3. أدخل القيمة
4. اضغط **"Add"**

---

## المرحلة 5: الرفع والتشغيل

### الخطوة 1: بدء الرفع

1. في لوحة Railway
2. اضغط **"Deploy"**
3. سيبدأ البناء تلقائياً

### الخطوة 2: مراقبة الرفع

1. اذهب إلى **"Deployments"**
2. شاهد السجلات (Logs)
3. يجب أن ترى: `Server running on http://localhost:3000/`

### الخطوة 3: التحقق من النجاح

```
✅ Build succeeded
✅ Server started
✅ Database connected
```

---

## المرحلة 6: اختبار البوت

### الخطوة 1: ابدأ البوت على Telegram

1. ابحث عن بوتك على Telegram
2. أرسل `/start`
3. يجب أن تحصل على رسالة ترحيب

### الخطوة 2: أضف مفاتيح Binance

1. أرسل `/portfolio`
2. اتبع التعليمات
3. أدخل مفاتيح Binance API

### الخطوة 3: ابدأ التداول

البوت سيبدأ تلقائياً بمراقبة السوق وإرسال التنبيهات

---

## استكشاف الأخطاء

### المشكلة: "Build failed"

**الحل:**
```bash
# تحقق من package.json
# تأكد من أن جميع المكتبات مثبتة محلياً
pnpm install
pnpm build
```

### المشكلة: "Bot not responding"

**الحل:**
1. تحقق من `TELEGRAM_BOT_TOKEN` في Variables
2. تأكد من أن البوت مفعّل على Telegram
3. شاهد السجلات في Railway

### المشكلة: "Database connection error"

**الحل:**
1. تحقق من `DATABASE_URL` تم إنشاؤه تلقائياً
2. تأكد من أن قاعدة البيانات تعمل

### المشكلة: "Port already in use"

**الحل:**
- Railway ستختار port تلقائياً، لا تقلق

---

## الخطوات التالية

### 1. مراقبة البوت
```
في Railway Dashboard:
- اذهب إلى "Metrics"
- راقب CPU والذاكرة
- اطلع على السجلات
```

### 2. التحديثات
```bash
# عند تحديث الكود محلياً
git add .
git commit -m "Update: feature description"
git push origin main

# سيتم الرفع تلقائياً على Railway
```

### 3. النسخ الاحتياطية
- احفظ نسخة من قاعدة البيانات بانتظام
- احفظ نسخة من الأكواس

---

## نصائح مهمة

1. **لا تشارك المفاتيح**: أبداً لا تضع مفاتيح في الكود
2. **استخدم Railway Variables**: للمتغيرات الحساسة
3. **راقب السجلات**: للكشف عن الأخطاء مبكراً
4. **اختبر محلياً أولاً**: قبل الرفع على Railway
5. **احتفظ بنسخة احتياطية**: من قاعدة البيانات

---

## روابط مفيدة

- [Railway Docs](https://docs.railway.app)
- [GitHub Docs](https://docs.github.com)
- [Telegram Bot API](https://core.telegram.org/bots/api)
- [Binance API](https://binance-docs.github.io/apidocs)

---

**تم! البوت الآن يعمل على Railway 24/7** 🎉
