# 🚀 دليل الرفع على Heroku (بديل Railway)

إذا واجهت مشاكل مع Railway، استخدم **Heroku** - أسهل وأسرع!

---

## 📋 المتطلبات

1. **حساب Heroku** - https://www.heroku.com
2. **Heroku CLI** - https://devcenter.heroku.com/articles/heroku-cli
3. **Git** - https://git-scm.com

---

## 🚀 الخطوات

### الخطوة 1: تثبيت Heroku CLI

**Windows:**
```bash
# تحميل من
https://cli-assets.heroku.com/heroku-x64.exe
```

**Mac:**
```bash
brew install heroku/brew/heroku
```

**Linux:**
```bash
curl https://cli-assets.heroku.com/install.sh | sh
```

---

### الخطوة 2: تسجيل الدخول

```bash
heroku login
```

سيفتح متصفح - اضغط "Login"

---

### الخطوة 3: فك الضغط والدخول

```bash
unzip ai-trading-bot-production.zip
cd ai-trading-bot
```

---

### الخطوة 4: إنشاء تطبيق Heroku

```bash
heroku create your-app-name
```

**مثال:**
```bash
heroku create ai-trading-bot-app
```

---

### الخطوة 5: إضافة قاعدة البيانات

```bash
heroku addons:create cleardb:ignite
```

أو استخدم MySQL:

```bash
heroku addons:create jawsdb:kitefin
```

---

### الخطوة 6: إضافة المتغيرات

```bash
heroku config:set TELEGRAM_BOT_TOKEN="your-bot-token"
heroku config:set ENCRYPTION_SECRET="your-secret-key"
heroku config:set JWT_SECRET="your-jwt-secret"
heroku config:set NODE_ENV="production"
```

---

### الخطوة 7: إعداد Git

```bash
# تهيئة Git
git init
git add .
git commit -m "Initial commit"

# إضافة Heroku remote
heroku git:remote -a your-app-name
```

---

### الخطوة 8: الرفع

```bash
git push heroku main
```

أو إذا كان الفرع `master`:

```bash
git push heroku master
```

---

### الخطوة 9: شاهد السجلات

```bash
heroku logs --tail
```

---

## ✅ التحقق من النجاح

```bash
# شاهد معلومات التطبيق
heroku info

# شاهد المتغيرات
heroku config

# شاهد السجلات
heroku logs --tail
```

---

## 🆘 استكشاف الأخطاء

### ❌ خطأ: "Build failed"

```bash
# شاهد السجلات المفصلة
heroku logs --tail

# أعد محاولة الرفع
git push heroku main --force
```

### ❌ خطأ: "App crashed"

```bash
# تحقق من المتغيرات
heroku config

# أعد تشغيل التطبيق
heroku restart
```

### ❌ البوت لا يستجيب

```bash
# تحقق من أن TELEGRAM_BOT_TOKEN صحيح
heroku config:get TELEGRAM_BOT_TOKEN

# أعد تشغيل
heroku restart
```

---

## 📊 مقارنة Heroku vs Railway

| الميزة | Heroku | Railway |
|--------|--------|---------|
| **السهولة** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| **السرعة** | ⚡⚡⚡ | ⚡⚡⚡⚡ |
| **التكلفة** | مجاني | $5/شهر |
| **الموثوقية** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **الدعم** | ممتاز | جيد |

---

## 🎯 الخطوات السريعة (Copy & Paste)

```bash
# 1. تثبيت
# Windows: حمّل من https://cli-assets.heroku.com/heroku-x64.exe
# Mac: brew install heroku/brew/heroku
# Linux: curl https://cli-assets.heroku.com/install.sh | sh

# 2. تسجيل الدخول
heroku login

# 3. فك الضغط
unzip ai-trading-bot-production.zip
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
```

---

## 📞 الدعم

- **Heroku Docs**: https://devcenter.heroku.com
- **Heroku CLI Docs**: https://devcenter.heroku.com/articles/heroku-cli

---

**استمتع بـ بوتك على Heroku!** 🎉
