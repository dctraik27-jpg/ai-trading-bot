# 📦 تعليمات التثبيت والرفع

## ✅ ملف ZIP النظيف

هذا الملف **ai-trading-bot-fixed.zip** تم إنشاؤه بدون الملفات المشكلة:
- ❌ بدون `node_modules/` (سيتم تثبيتها تلقائياً)
- ❌ بدون `pnpm-lock.yaml` (سيتم إنشاؤها تلقائياً)
- ❌ بدون `patches/` (سيتم إنشاؤها تلقائياً)
- ❌ بدون `dist/` (سيتم بناؤها تلقائياً)

---

## 🚀 خطوات التثبيت

### الخطوة 1: فك الضغط

```bash
unzip ai-trading-bot-fixed.zip
cd ai-trading-bot
```

### الخطوة 2: التثبيت المحلي (اختياري - للاختبار)

```bash
# تثبيت pnpm
npm install -g pnpm

# تثبيت المكتبات
pnpm install

# البناء
pnpm build

# التشغيل
pnpm dev
```

### الخطوة 3: الرفع على Railway (الطريقة الموصى بها)

#### الطريقة A: Railway CLI (الأسرع)

```bash
# 1. تثبيت Railway CLI
npm install -g @railway/cli

# 2. تسجيل الدخول
railway login

# 3. الرفع
railway init
railway up
```

#### الطريقة B: GitHub (التقليدية)

```bash
# 1. تهيئة Git
git init
git add .
git commit -m "Initial commit: AI Trading Bot"

# 2. إنشاء repository على GitHub

# 3. إضافة remote
git remote add origin https://github.com/YOUR-USERNAME/ai-trading-bot.git
git branch -M main
git push -u origin main

# 4. في Railway Dashboard:
# - اختر "Deploy from GitHub"
# - اختر repository
# - أضف المتغيرات
# - اضغط Deploy
```

---

## 🔧 المتغيرات المطلوبة

أضف هذه المتغيرات في Railway Dashboard تحت "Variables":

```
TELEGRAM_BOT_TOKEN = your-token-from-botfather
ENCRYPTION_SECRET = your-secret-key-min-32-chars
JWT_SECRET = your-jwt-secret-key
VITE_APP_ID = your-app-id
NODE_ENV = production
```

---

## ✅ التحقق من النجاح

### 1. على Railway Dashboard
- اذهب إلى "Deployments"
- يجب أن ترى "✅ Build successful"
- يجب أن ترى "✅ Running"

### 2. اختبر البوت على Telegram
```
1. ابحث عن بوتك على Telegram
2. أرسل /start
3. يجب أن تحصل على رسالة ترحيب
```

### 3. شاهد السجلات
```bash
# إذا كنت تستخدم Railway CLI
railway logs

# أو في Dashboard: اضغط "View logs"
```

---

## 🆘 استكشاف الأخطاء

### المشكلة: "Build failed"

**الحل:**
```bash
# محلياً
pnpm install
pnpm build

# ثم رفع مجدداً
railway up
```

### المشكلة: "Bot not responding"

**الحل:**
1. تحقق من `TELEGRAM_BOT_TOKEN` في Variables
2. تأكد من أن البوت مفعّل على Telegram
3. شاهد السجلات

### المشكلة: "Database connection error"

**الحل:**
1. تحقق من أن قاعدة البيانات تم إنشاؤها
2. تحقق من `DATABASE_URL` في Variables

---

## 📚 الأدلة المتاحة

- **QUICK_START.md** - دليل البدء السريع
- **RAILWAY_SETUP_GUIDE.md** - دليل Railway التفصيلي
- **DIRECT_UPLOAD_GUIDE.md** - 5 طرق رفع مختلفة
- **DEPLOYMENT_GUIDE.md** - دليل الرفع الشامل
- **README_AR.md** - التوثيق الكاملة بالعربية

---

## 🎯 الخطوات التالية

1. ✅ فك الضغط
2. ✅ اختر طريقة الرفع (Railway CLI أو GitHub)
3. ✅ أضف المتغيرات
4. ✅ ابدأ الرفع
5. ✅ اختبر البوت

---

**في 5 دقائق فقط، البوت سيكون يعمل!** 🚀
