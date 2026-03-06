# 🚀 دليل البدء السريع

## الخطوة 1: تحضير مفاتيح Binance

1. اذهب إلى [Binance API Management](https://www.binance.com/en/account/api-management)
2. انقر على "Create API Key"
3. اختر "System generated"
4. **تفعيل الصلاحيات**:
   - ✅ Enable Reading
   - ✅ Enable Spot & Margin Trading
   - ❌ Disable Withdrawals (مهم جداً!)
5. **إضافة IP Whitelist** (اختياري لكن موصى به):
   - أضف IP عنوان Railway أو خادمك
6. احفظ المفاتيح في مكان آمن

## الخطوة 2: إنشاء بوت Telegram

1. تحدث مع [@BotFather](https://t.me/botfather) على Telegram
2. أرسل `/newbot`
3. اتبع التعليمات:
   - اختر اسم للبوت (مثل: `MyTradingBot`)
   - اختر username (مثل: `my_trading_bot`)
4. احفظ التوكن الذي سيعطيك إياه

## الخطوة 3: إعداد قاعدة البيانات

### خيار 1: محلي (للاختبار)
```bash
# تثبيت MySQL محلياً
# ثم إنشاء قاعدة بيانات
mysql -u root -p
CREATE DATABASE ai_trading_bot;
```

### خيار 2: Railway (للإنتاج)
- Railway ستنشئ قاعدة البيانات تلقائياً

## الخطوة 4: الرفع على Railway

### أ. إعداد GitHub

```bash
# تهيئة git
git init
git add .
git commit -m "Initial commit"

# إنشاء repository على GitHub
# ثم:
git remote add origin https://github.com/your-username/ai-trading-bot.git
git branch -M main
git push -u origin main
```

### ب. الرفع على Railway

1. اذهب إلى [railway.app](https://railway.app)
2. اضغط "New Project"
3. اختر "Deploy from GitHub"
4. اختر repository `ai-trading-bot`
5. اضغط "Deploy"

### ج. إضافة المتغيرات

في لوحة Railway، اذهب إلى "Variables" وأضف:

```
TELEGRAM_BOT_TOKEN=your-bot-token-from-botfather
ENCRYPTION_SECRET=generate-a-random-32-char-string
JWT_SECRET=another-random-string
VITE_APP_ID=your-app-id
NODE_ENV=production
```

## الخطوة 5: اختبار البوت

1. ابحث عن بوتك على Telegram (باستخدام username)
2. أرسل `/start`
3. يجب أن تحصل على رسالة ترحيب

## الخطوة 6: إضافة مفاتيح Binance

1. أرسل `/portfolio` للبوت
2. اتبع التعليمات لإدخال مفاتيح Binance
3. المفاتيح ستُشفّر تلقائياً

## الخطوة 7: البدء بالتداول

1. البوت سيبدأ بمراقبة السوق تلقائياً
2. عند إيجاد فرصة تداول، سيرسل لك تنبيه 🟢
3. عند إغلاق الصفقة، سيرسل لك النتيجة 🔴

## الأوامر الأساسية

| الأمر | الوصف |
|------|-------|
| `/start` | ابدأ البوت |
| `/portfolio` | عرض المحفظة الحالية |
| `/status` | حالة البوت |
| `/help` | المساعدة |
| `/settings` | الإعدادات |

## استكشاف الأخطاء

### البوت لا يرد على الرسائل
```
✓ تحقق من TELEGRAM_BOT_TOKEN
✓ تأكد من أن البوت مفعّل على Telegram
✓ شاهد السجلات على Railway
```

### خطأ في الاتصال بـ Binance
```
✓ تحقق من مفاتيح API
✓ تأكد من تفعيل IP Whitelist
✓ جرّب مع مفاتيح جديدة
```

### لا يوجد رصيد
```
✓ تأكد من وجود USDT في محفظتك على Binance
✓ تحقق من أن المفاتيح صحيحة
```

## نصائح مهمة

1. **ابدأ بمبلغ صغير**: لا تضع كل أموالك في البداية
2. **راقب البوت**: تابع الصفقات والأرباح
3. **اختبر أولاً**: استخدم حساب تجريبي أولاً
4. **احفظ المفاتيح**: احفظ نسخة احتياطية من مفاتيحك
5. **تحديثات منتظمة**: تحقق من التحديثات الجديدة

## الخطوات التالية

- اقرأ [دليل الرفع الكامل](./DEPLOYMENT_GUIDE.md)
- اقرأ [التوثيق الكاملة](./README_AR.md)
- تابع السجلات على Railway
- راقب أداء البوت

---

**استغرق الإعداد حوالي 15 دقيقة فقط!** 🎉

بعد ذلك، البوت سيعمل تلقائياً 24/7 على Railway.
