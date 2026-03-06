# 📖 دليل Render خطوة بخطوة (مصور)

دليل كامل لاستخدام Render من الصفر إلى التشغيل الكامل - **100% مجاني**!

---

## 📋 المتطلبات قبل البدء

- ✅ حساب GitHub (مجاني)
- ✅ حساب Render (مجاني)
- ✅ توكن البوت من Telegram
- ✅ ملف ZIP البوت

---

## 🚀 الخطوة 1: إنشاء حساب GitHub

### 1.1 اذهب إلى الموقع
```
https://github.com
```

### 1.2 اضغط "Sign Up"
- أدخل بريدك الإلكتروني
- اختر اسم مستخدم (مثل: `your-username`)
- اختر كلمة سر قوية
- اضغط "Create account"

### 1.3 تأكيد البريد
- اذهب إلى بريدك الإلكتروني
- اضغط على رابط التأكيد من GitHub

### 1.4 إكمال الإعداد
- أجب على الأسئلة البسيطة
- اضغط "Skip personalization"

✅ **حساب GitHub جاهز**

---

## 📤 الخطوة 2: رفع البوت على GitHub

### 2.1 فك الضغط

```bash
# Windows: استخدم WinRAR أو 7-Zip
# Mac/Linux: استخدم Terminal

unzip ai-trading-bot-complete-heroku.zip
cd ai-trading-bot
```

### 2.2 تثبيت Git

**Windows:**
- اذهب إلى: https://git-scm.com/download/win
- حمّل وثبّت

**Mac:**
```bash
brew install git
```

**Linux:**
```bash
sudo apt install git
```

### 2.3 إعداد Git

افتح Terminal/Command Prompt وأكتب:

```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

### 2.4 إنشاء Repository على GitHub

1. اذهب إلى https://github.com/new
2. اسم المستودع: `ai-trading-bot`
3. اختر "Public"
4. اضغط "Create repository"

### 2.5 رفع الأكواد

```bash
# في مجلد ai-trading-bot

git init
git add .
git commit -m "Initial commit: AI Trading Bot"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/ai-trading-bot.git
git push -u origin main
```

**استبدل `YOUR-USERNAME` باسم المستخدم الفعلي**

✅ **الأكواد موجودة على GitHub**

---

## 🎯 الخطوة 3: إنشاء حساب Render

### 3.1 اذهب إلى الموقع
```
https://render.com
```

### 3.2 اضغط "Sign Up"
- اختر "GitHub"
- سيطلب منك تسجيل الدخول إلى GitHub
- اضغط "Authorize"

### 3.3 إكمال الإعداد
- أدخل بريدك الإلكتروني
- اختر كلمة سر
- اضغط "Create account"

✅ **حساب Render جاهز**

---

## 🔗 الخطوة 4: ربط GitHub مع Render

### 4.1 في لوحة Render

1. اضغط "New +"
2. اختر "Web Service"
3. اختر "GitHub"
4. ابحث عن `ai-trading-bot`
5. اضغط "Connect"

### 4.2 إعدادات الخدمة

**Name:** `ai-trading-bot`

**Environment:** `Node`

**Build Command:**
```bash
npm install && npm run build
```

**Start Command:**
```bash
npm start
```

**Instance Type:** `Free`

✅ **الربط تم**

---

## 🗄️ الخطوة 5: إضافة قاعدة البيانات

### 5.1 أنشئ قاعدة بيانات جديدة

1. في لوحة Render، اضغط "New +"
2. اختر "PostgreSQL"
3. اسم قاعدة البيانات: `ai-trading-bot-db`
4. اضغط "Create Database"

### 5.2 انتظر التهيئة

قد يستغرق 2-3 دقائق

### 5.3 احصل على رابط الاتصال

ستجد `Internal Database URL` و `External Database URL`

انسخ `External Database URL`

✅ **قاعدة البيانات جاهزة**

---

## 🔑 الخطوة 6: إضافة المتغيرات البيئية

### 6.1 في لوحة Web Service

1. اضغط على خدمتك `ai-trading-bot`
2. اذهب إلى "Environment"
3. اضغط "Add Environment Variable"

### 6.2 أضف المتغيرات واحداً تلو الآخر

**المتغير الأول:**
```
Key: DATABASE_URL
Value: (الرابط من قاعدة البيانات)
```

**المتغير الثاني:**
```
Key: TELEGRAM_BOT_TOKEN
Value: your-bot-token-here
```

**المتغير الثالث:**
```
Key: ENCRYPTION_SECRET
Value: your-secret-key-min-32-chars
```

**المتغير الرابع:**
```
Key: JWT_SECRET
Value: your-jwt-secret-key
```

**المتغير الخامس:**
```
Key: NODE_ENV
Value: production
```

### 6.3 احفظ التغييرات

اضغط "Save Changes"

✅ **المتغيرات تم إضافتها**

---

## 🚀 الخطوة 7: نشر التطبيق

### 7.1 ابدأ النشر

في لوحة Web Service:
1. اضغط "Deploy"
2. أو انتظر النشر التلقائي

### 7.2 شاهد السجلات

في تبويب "Logs"، ستشاهد:
```
Building...
Installing dependencies...
Building application...
Starting service...
```

### 7.3 انتظر النشر

قد يستغرق 5-10 دقائق

✅ **التطبيق تم نشره**

---

## ✅ الخطوة 8: التحقق من النجاح

### 8.1 شاهد الرابط

في لوحة Web Service، ستجد رابط مثل:
```
https://ai-trading-bot.onrender.com
```

### 8.2 اختبر البوت

أرسل رسالة إلى البوت على Telegram:
```
/start
```

البوت يجب أن يرد!

### 8.3 شاهد السجلات

في تبويب "Logs"، يجب أن ترى:
```
Server running on port 3000
Bot connected successfully
```

✅ **البوت يعمل!**

---

## 🆘 استكشاف الأخطاء

### ❌ خطأ: "Build failed"

**الحل:**
1. اذهب إلى "Logs"
2. ابحث عن رسالة الخطأ
3. تحقق من `package.json`
4. أعد الرفع على GitHub

### ❌ خطأ: "Service crashed"

**الحل:**
```
1. تحقق من المتغيرات البيئية
2. تأكد من DATABASE_URL صحيح
3. أعد تشغيل الخدمة (اضغط "Restart")
```

### ❌ البوت لا يستجيب

**الحل:**
```
1. تحقق من TELEGRAM_BOT_TOKEN
2. شاهد السجلات للأخطاء
3. أعد تشغيل الخدمة
```

### ❌ مشكلة في قاعدة البيانات

**الحل:**
```
1. تحقق من DATABASE_URL
2. تأكد من قاعدة البيانات تعمل
3. جرّب إعادة تشغيل قاعدة البيانات
```

---

## 📊 مميزات Render المجاني

✅ **مجاني 100%**
- لا تكاليف إضافية
- لا تحتاج بطاقة ائتمان

✅ **موثوق**
- يعمل 24/7
- SLA 99.9%

✅ **سريع**
- أداء جيد جداً
- استجابة سريعة

✅ **سهل**
- واجهة بسيطة
- ربط مباشر مع GitHub

---

## 📝 ملاحظات مهمة

### ⚠️ التحديثات التلقائية

عندما تعدّل الأكواد على GitHub:
```bash
git add .
git commit -m "Update: description"
git push origin main
```

Render سيعيد النشر تلقائياً!

### ⚠️ النوم (Sleep Mode)

الخطة المجانية قد تدخل "نوم" بعد 15 دقيقة من عدم الاستخدام.

**الحل:** استخدم خدمة مراقبة مثل Uptime Robot

---

## 🎯 الخطوات السريعة (Copy & Paste)

```bash
# 1. فك الضغط
unzip ai-trading-bot-complete-heroku.zip
cd ai-trading-bot

# 2. إعداد Git
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"

# 3. رفع على GitHub
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/ai-trading-bot.git
git push -u origin main

# 4. في Render:
# - اضغط "New +" > "Web Service"
# - اختر GitHub و ai-trading-bot
# - أضف قاعدة البيانات
# - أضف المتغيرات
# - اضغط Deploy

# 5. انتظر النشر (5-10 دقائق)

# 6. اختبر البوت على Telegram
```

---

## 🎉 تم!

البوت الآن يعمل على Render **مجاني 100%**!

**المميزات:**
- ✅ يعمل بدون توقف
- ✅ رصيد حقيقي من Binance
- ✅ تنبيهات فورية على Telegram
- ✅ تداول آلي ذكي
- ✅ **بدون تكاليف**

---

## 📞 الدعم

- **Render Docs**: https://render.com/docs
- **GitHub Docs**: https://docs.github.com

**استمتع بـ بوتك على Render!** 🚀
