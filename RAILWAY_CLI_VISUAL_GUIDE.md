# 🎬 دليل مصور تفصيلي - Railway CLI

## 📋 ملخص الخطوات

```
1️⃣ تثبيت Railway CLI
   ↓
2️⃣ تسجيل الدخول
   ↓
3️⃣ فك الضغط وفتح المجلد
   ↓
4️⃣ تهيئة المشروع
   ↓
5️⃣ إضافة قاعدة البيانات
   ↓
6️⃣ إضافة المتغيرات
   ↓
7️⃣ الرفع والتشغيل
   ↓
✅ البوت يعمل!
```

---

## 🚀 الخطوة 1: تثبيت Railway CLI

### على Windows:

**الطريقة 1: استخدام npm (الأسهل)**
```bash
npm install -g @railway/cli
```

**الطريقة 2: تحميل مباشر**
- اذهب إلى: https://railway.app/cli
- حمّل ملف Windows
- شغّل الملف

### على Mac:

```bash
brew install railway
```

### على Linux:

```bash
curl -fsSL https://railway.app/install.sh | bash
```

---

## ✅ الخطوة 2: تسجيل الدخول

```bash
railway login
```

**ما سيحدث:**
1. سيفتح متصفح تلقائياً
2. اضغط **"Authorize"** أو **"Login"**
3. ستعود إلى Terminal وستظهر رسالة نجاح

```
✓ Logged in as: your-email@example.com
```

---

## 📦 الخطوة 3: فك الضغط والدخول للمجلد

```bash
# فك الضغط
unzip ai-trading-bot-fixed.zip

# الدخول للمجلد
cd ai-trading-bot

# تحقق من المحتوى
ls
```

**يجب أن تشاهد:**
```
client/
server/
drizzle/
package.json
railway.json
... وملفات أخرى
```

---

## 🔧 الخطوة 4: تهيئة المشروع

```bash
railway init
```

**الأسئلة التي ستظهر:**

### السؤال 1: "Create a new project or select an existing one?"
```
→ Create a new project
```

### السؤال 2: "Project name?"
```
→ ai-trading-bot
```

**النتيجة:**
```
✓ Created project: ai-trading-bot
✓ Created service: ai-trading-bot
```

---

## 🗄️ الخطوة 5: إضافة قاعدة البيانات

```bash
railway add
```

**الأسئلة التي ستظهر:**

### السؤال 1: "Select a service to add"
```
→ MySQL
```

**النتيجة:**
```
✓ Added MySQL database
✓ Database URL: mysql://...
```

---

## 🔐 الخطوة 6: إضافة المتغيرات

### الطريقة 1: من Terminal (الأسرع)

```bash
# أضف كل متغير واحداً تلو الآخر

railway variables set TELEGRAM_BOT_TOKEN "your-bot-token-here"
railway variables set ENCRYPTION_SECRET "your-secret-key-min-32-chars"
railway variables set JWT_SECRET "your-jwt-secret-key"
railway variables set NODE_ENV "production"
```

**مثال:**
```bash
railway variables set TELEGRAM_BOT_TOKEN "123456789:ABCdefGHIjklmnoPQRstuvwxyz"
```

**النتيجة:**
```
✓ Set TELEGRAM_BOT_TOKEN
```

### الطريقة 2: من Dashboard (الأسهل للمبتدئين)

1. اذهب إلى: https://railway.app
2. اختر المشروع: `ai-trading-bot`
3. اضغط على التبويب: **Variables**
4. اضغط **"New Variable"**
5. أدخل:
   - **Key**: `TELEGRAM_BOT_TOKEN`
   - **Value**: `your-token-here`
6. اضغط **"Add"**

كرر العملية لكل متغير.

---

## 🚀 الخطوة 7: الرفع والتشغيل

```bash
railway up
```

**ما سيحدث:**

```
🚀 Deploying...
📦 Building...
✓ Build successful
🎉 Deployment successful
✓ Service is running
```

---

## ✅ التحقق من النجاح

### 1. من Terminal:

```bash
railway logs
```

يجب أن تشاهد:
```
[2026-03-05] Server running on port 3000
[2026-03-05] Connected to database
[2026-03-05] Bot initialized
```

### 2. من Dashboard:

1. اذهب إلى: https://railway.app
2. اختر المشروع: `ai-trading-bot`
3. يجب أن تشاهد:
   - ✅ **Status: Running**
   - ✅ **Deployments: Successful**

### 3. اختبر البوت على Telegram:

```
1. ابحث عن بوتك على Telegram
2. أرسل: /start
3. يجب أن تحصل على رسالة ترحيب
```

---

## 🆘 استكشاف الأخطاء

### ❌ المشكلة: "Command not found: railway"

**الحل:**
```bash
# أعد التثبيت
npm install -g @railway/cli

# تحقق من التثبيت
railway --version
```

### ❌ المشكلة: "Not logged in"

**الحل:**
```bash
railway login
```

### ❌ المشكلة: "Build failed"

**الحل:**
```bash
# شاهد السجلات
railway logs

# أو من Dashboard: اضغط "View logs"
```

### ❌ المشكلة: "Bot not responding"

**الحل:**
1. تحقق من `TELEGRAM_BOT_TOKEN` صحيح
2. تحقق من أن البوت مفعّل على Telegram
3. شاهد السجلات

---

## 📊 مقارنة الطرق

| الطريقة | الوقت | السهولة | الموثوقية |
|--------|------|--------|----------|
| **Railway CLI** | 3 دقائق | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **GitHub** | 10 دقائق | ⭐⭐⭐ | ⭐⭐⭐⭐ |
| **Heroku** | 5 دقائق | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

---

## 🎯 الخطوات السريعة (Copy & Paste)

```bash
# 1. تثبيت
npm install -g @railway/cli

# 2. تسجيل الدخول
railway login

# 3. فك الضغط والدخول
unzip ai-trading-bot-fixed.zip
cd ai-trading-bot

# 4. تهيئة
railway init

# 5. إضافة قاعدة البيانات
railway add

# 6. إضافة المتغيرات
railway variables set TELEGRAM_BOT_TOKEN "your-token"
railway variables set ENCRYPTION_SECRET "your-secret"
railway variables set JWT_SECRET "your-jwt-secret"
railway variables set NODE_ENV "production"

# 7. الرفع
railway up

# 8. شاهد السجلات
railway logs
```

---

## 📞 الدعم والمساعدة

### إذا واجهت مشكلة:

1. **شاهد السجلات:**
   ```bash
   railway logs
   ```

2. **تحقق من المتغيرات:**
   ```bash
   railway variables
   ```

3. **أعد التهيئة:**
   ```bash
   railway init
   railway up
   ```

---

## 🎉 تم!

**البوت الآن يعمل على Railway!**

### ما يمكنك فعله الآن:

1. ✅ استخدام البوت على Telegram
2. ✅ مراقبة السجلات
3. ✅ إضافة مزيد من المتغيرات
4. ✅ تحديث الكود ورفعه مجدداً

---

## 📚 الموارد الإضافية

- **Railway Docs**: https://docs.railway.app
- **Railway CLI Docs**: https://docs.railway.app/cli/quick-start
- **Telegram Bot API**: https://core.telegram.org/bots/api

---

**استمتع بـ بوتك!** 🚀
