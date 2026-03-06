# 📖 دليل Heroku خطوة بخطوة (مصور)

دليل كامل لاستخدام Heroku من الصفر إلى التشغيل الكامل.

---

## 📋 المتطلبات قبل البدء

- ✅ حساب Heroku (مجاني)
- ✅ Git مثبت على جهازك
- ✅ توكن البوت من Telegram
- ✅ ملف ZIP البوت

---

## 🚀 الخطوة 1: إنشاء حساب Heroku

### 1.1 اذهب إلى الموقع
```
https://www.heroku.com
```

### 1.2 اضغط "Sign Up"
- أدخل بريدك الإلكتروني
- اختر كلمة سر قوية
- اضغط "Create Free Account"

### 1.3 تأكيد البريد
- اذهب إلى بريدك الإلكتروني
- اضغط على رابط التأكيد من Heroku

### 1.4 تعيين كلمة السر
- أدخل كلمة سر جديدة
- اضغط "Set password and log in"

✅ **تم! حسابك جاهز**

---

## 🛠️ الخطوة 2: تثبيت Heroku CLI

### الخيار 1: Windows

1. اذهب إلى: https://cli-assets.heroku.com/heroku-x64.exe
2. حمّل الملف
3. شغّل الملف وأكمل التثبيت
4. أعد تشغيل الكمبيوتر

### الخيار 2: Mac

افتح Terminal وأكتب:
```bash
brew install heroku/brew/heroku
```

### الخيار 3: Linux

افتح Terminal وأكتب:
```bash
curl https://cli-assets.heroku.com/install.sh | sh
```

### التحقق من التثبيت

افتح Terminal/Command Prompt وأكتب:
```bash
heroku --version
```

يجب أن يظهر رقم الإصدار (مثل: `heroku/8.0.0`)

✅ **تم التثبيت بنجاح**

---

## 🔐 الخطوة 3: تسجيل الدخول إلى Heroku

افتح Terminal/Command Prompt وأكتب:
```bash
heroku login
```

**ماذا سيحدث:**
1. سيفتح متصفح تلقائياً
2. اضغط "Log In"
3. سيطلب منك تأكيد (اضغط أي مفتاح)
4. عد إلى Terminal

✅ **أنت الآن مسجل الدخول**

---

## 📦 الخطوة 4: فك الضغط والتحضير

### 4.1 فك الضغط

```bash
# Windows: استخدم WinRAR أو 7-Zip
# Mac/Linux: استخدم Terminal

unzip ai-trading-bot-final.zip
```

### 4.2 الدخول إلى المجلد

```bash
cd ai-trading-bot
```

### 4.3 التحقق من الملفات

```bash
ls
```

يجب أن ترى:
```
package.json
server/
client/
drizzle/
README_AR.md
...
```

✅ **المجلد جاهز**

---

## 🎯 الخطوة 5: إنشاء تطبيق على Heroku

### 5.1 أنشئ التطبيق

```bash
heroku create your-app-name
```

**استبدل `your-app-name` باسم فريد (مثل: `ai-bot-trading-2024`)**

**مثال:**
```bash
heroku create ai-bot-trading-2024
```

**ماذا سيحدث:**
- سيتم إنشاء التطبيق
- ستحصل على رابط (مثل: `https://ai-bot-trading-2024.herokuapp.com`)

✅ **التطبيق تم إنشاؤه**

---

## 🗄️ الخطوة 6: إضافة قاعدة البيانات

### 6.1 أضف MySQL

```bash
heroku addons:create cleardb:ignite
```

**ماذا سيحدث:**
- سيتم إضافة قاعدة بيانات مجانية
- ستحصل على رابط الاتصال تلقائياً

✅ **قاعدة البيانات جاهزة**

---

## 🔑 الخطوة 7: إضافة المتغيرات البيئية

### 7.1 أضف TELEGRAM_BOT_TOKEN

```bash
heroku config:set TELEGRAM_BOT_TOKEN="your-bot-token-here"
```

**استبدل `your-bot-token-here` بـ توكن البوت الفعلي**

### 7.2 أضف ENCRYPTION_SECRET

```bash
heroku config:set ENCRYPTION_SECRET="your-secret-key-min-32-chars"
```

**استبدل بـ كلمة سر قوية (أي نص عشوائي)**

### 7.3 أضف JWT_SECRET

```bash
heroku config:set JWT_SECRET="your-jwt-secret-key"
```

**استبدل بـ كلمة سر أخرى**

### 7.4 أضف NODE_ENV

```bash
heroku config:set NODE_ENV="production"
```

### 7.5 تحقق من المتغيرات

```bash
heroku config
```

يجب أن ترى جميع المتغيرات التي أضفتها

✅ **المتغيرات تم إضافتها**

---

## 📤 الخطوة 8: إعداد Git

### 8.1 تهيئة Git

```bash
git init
```

### 8.2 أضف جميع الملفات

```bash
git add .
```

### 8.3 أنشئ Commit

```bash
git commit -m "Initial commit: AI Trading Bot"
```

### 8.4 أضف Heroku Remote

```bash
heroku git:remote -a your-app-name
```

**استبدل `your-app-name` باسم التطبيق الذي أنشأته**

✅ **Git جاهز**

---

## 🚀 الخطوة 9: الرفع إلى Heroku

### 9.1 الرفع

```bash
git push heroku main
```

**ماذا سيحدث:**
- سيبدأ البناء (Build)
- سيتم تثبيت المكتبات
- سيتم نشر التطبيق

**هذا قد يستغرق 2-5 دقائق**

### 9.2 شاهد السجلات

```bash
heroku logs --tail
```

**ستشاهد:**
```
Building...
Installing dependencies...
Starting app...
```

✅ **التطبيق تم نشره**

---

## ✅ الخطوة 10: التحقق من النجاح

### 10.1 شاهد معلومات التطبيق

```bash
heroku info
```

### 10.2 اختبر البوت

أرسل رسالة إلى البوت على Telegram:
```
/start
```

البوت يجب أن يرد!

### 10.3 شاهد السجلات المباشرة

```bash
heroku logs --tail
```

✅ **البوت يعمل!**

---

## 🆘 استكشاف الأخطاء

### ❌ خطأ: "Build failed"

**الحل:**
```bash
# شاهد السجلات المفصلة
heroku logs --tail

# أعد محاولة الرفع
git push heroku main --force
```

### ❌ خطأ: "App crashed"

**الحل:**
```bash
# تحقق من المتغيرات
heroku config

# أعد تشغيل التطبيق
heroku restart

# شاهد السجلات
heroku logs --tail
```

### ❌ البوت لا يستجيب

**الحل:**
```bash
# تحقق من أن TELEGRAM_BOT_TOKEN صحيح
heroku config:get TELEGRAM_BOT_TOKEN

# أعد تشغيل
heroku restart

# شاهد السجلات
heroku logs --tail
```

### ❌ خطأ في قاعدة البيانات

**الحل:**
```bash
# تحقق من متغير DATABASE_URL
heroku config:get DATABASE_URL

# إذا كان فارغاً، أضف قاعدة بيانات جديدة
heroku addons:create cleardb:ignite
```

---

## 📊 أوامر مفيدة

### شاهد السجلات
```bash
heroku logs --tail
```

### أعد تشغيل التطبيق
```bash
heroku restart
```

### شاهد المتغيرات
```bash
heroku config
```

### عدّل متغير
```bash
heroku config:set KEY="value"
```

### احذف متغير
```bash
heroku config:unset KEY
```

### شاهد معلومات التطبيق
```bash
heroku info
```

### افتح التطبيق في المتصفح
```bash
heroku open
```

### احذف التطبيق
```bash
heroku apps:destroy --app your-app-name
```

---

## 🎯 الخطوات السريعة (Copy & Paste)

```bash
# 1. تثبيت Heroku CLI (من الموقع)
# https://cli-assets.heroku.com/heroku-x64.exe

# 2. تسجيل الدخول
heroku login

# 3. فك الضغط
unzip ai-trading-bot-final.zip
cd ai-trading-bot

# 4. إنشاء التطبيق
heroku create your-app-name

# 5. إضافة قاعدة البيانات
heroku addons:create cleardb:ignite

# 6. إضافة المتغيرات
heroku config:set TELEGRAM_BOT_TOKEN="your-token"
heroku config:set ENCRYPTION_SECRET="your-secret"
heroku config:set JWT_SECRET="your-jwt"
heroku config:set NODE_ENV="production"

# 7. إعداد Git
git init
git add .
git commit -m "Initial commit"
heroku git:remote -a your-app-name

# 8. الرفع
git push heroku main

# 9. شاهد السجلات
heroku logs --tail

# 10. اختبر البوت
# أرسل /start إلى البوت على Telegram
```

---

## 🎉 تم!

البوت الآن يعمل على Heroku 24/7!

**المميزات:**
- ✅ يعمل بدون توقف
- ✅ رصيد حقيقي من Binance
- ✅ تنبيهات فورية على Telegram
- ✅ تداول آلي ذكي

---

## 📞 الدعم

- **Heroku Docs**: https://devcenter.heroku.com
- **Heroku CLI**: https://devcenter.heroku.com/articles/heroku-cli

**استمتع بـ بوتك!** 🚀
