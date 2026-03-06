# 🤖 بوت التداول الذكي على Telegram

بوت تداول ذكي متعدد الطبقات يعمل على Binance مع واجهة Telegram تفاعلية. يوفر تداول آلي ذكي مع إدارة مخاطر متقدمة وتعلم ذاتي من الصفقات السابقة.

## ✨ الميزات الرئيسية

### 🧠 محرك التداول الذكي (8 طبقات)
- **Market Regime Detection**: تصنيف حالة السوق (Trending/Range/Chaotic)
- **Trend Analysis**: تحليل الاتجاهات باستخدام EMAs والمؤشرات الفنية
- **Momentum Scoring**: نظام تقييم الزخم من 0-100
- **Volume Confirmation**: تأكيد الحجم والنشاط
- **Multi-Timeframe Analysis**: تحليل أطر زمنية متعددة
- **Risk Management**: إدارة ديناميكية للمخاطر
- **Smart Protection System**: حماية من الخسائر المتتالية
- **Self-Learning Engine**: تعلم ذاتي من الصفقات السابقة

### 💬 واجهة Telegram
- **أزرار تفاعلية** (Inline Keyboards)
- **تنبيهات ملونة**: 🟢 للشراء، 🔴 للبيع
- **عرض المحفظة**: الرصيد الفعلي والأرباح والخسائر
- **تقارير ساعية ويومية**
- **رسوم بيانية**: Equity Curve، توزيع الأصول

### 🔐 الأمان
- **تشفير AES-256** لمفاتيح Binance API
- **تعدد المستخدمين** مع عزل تام للبيانات
- **صلاحيات محدودة** على Binance (بدون سحب)
- **مصادقة آمنة** عبر Telegram

### 📊 التداول الفعلي
- **تنفيذ أوامر حقيقية** على Binance
- **مراقبة حية** للرصيد والصفقات
- **WebSocket streams** للأسعار الفورية
- **حساب PnL** محقق وغير محقق

## 🚀 البدء السريع

### المتطلبات
- Node.js 18+
- pnpm
- MySQL/PostgreSQL
- حساب Binance
- بوت Telegram

### التثبيت المحلي

```bash
# استنساخ المشروع
git clone https://github.com/your-username/ai-trading-bot.git
cd ai-trading-bot

# تثبيت المكتبات
pnpm install

# إعداد قاعدة البيانات
pnpm db:push

# تشغيل التطوير
pnpm dev
```

### الرفع على Railway

اتبع [دليل الرفع](./DEPLOYMENT_GUIDE.md) الشامل.

## 📋 متطلبات البيئة

```env
DATABASE_URL=mysql://user:password@host/database
TELEGRAM_BOT_TOKEN=your-bot-token
ENCRYPTION_SECRET=your-secret-key-min-32-chars
JWT_SECRET=your-jwt-secret
VITE_APP_ID=your-app-id
NODE_ENV=production
```

## 📁 هيكل المشروع

```
ai-trading-bot/
├── server/
│   ├── tradingEngine/        # محرك التداول الذكي
│   ├── telegram/             # واجهة Telegram
│   ├── binance/              # عميل Binance API
│   ├── trading/              # نظام التداول الفعلي
│   ├── charts/               # نظام الرسوم البيانية
│   ├── encryption.ts         # نظام التشفير
│   └── routers.ts            # API endpoints
├── drizzle/
│   └── schema.ts             # تعريف قاعدة البيانات
├── client/
│   ├── src/
│   │   ├── pages/            # صفحات الواجهة
│   │   ├── components/       # مكونات React
│   │   └── App.tsx           # التطبيق الرئيسي
│   └── index.html
└── package.json
```

## 🔧 الأوامر الأساسية

```bash
# التطوير
pnpm dev

# البناء
pnpm build

# التشغيل الإنتاجي
pnpm start

# الاختبارات
pnpm test

# التحقق من الأخطاء
pnpm check
```

## 📚 التوثيق

- [دليل الرفع على Railway](./DEPLOYMENT_GUIDE.md)
- [توثيق Binance API](https://binance-docs.github.io/apidocs)
- [توثيق Telegram Bot](https://core.telegram.org/bots/api)

## ⚠️ تنبيهات أمان مهمة

1. **لا تشارك مفاتيحك**: أبداً لا تضع مفاتيح API في الكود
2. **استخدم IP Whitelist**: على حسابك في Binance
3. **عطّل السحب**: تأكد من تعطيل صلاحية السحب على Binance
4. **النسخ الاحتياطية**: احفظ نسخة من قاعدة البيانات بانتظام
5. **اختبر أولاً**: اختبر البوت على حساب تجريبي قبل الاستخدام الفعلي

## 🐛 استكشاف الأخطاء

### البوت لا يستجيب
```bash
# تحقق من توكن Telegram
# تأكد من أن البوت مفعّل على Telegram
# شاهد السجلات: pnpm dev
```

### خطأ الاتصال بـ Binance
```bash
# تحقق من مفاتيح API
# تأكد من تفعيل IP Whitelist
# تحقق من الاتصال بالإنترنت
```

### مشاكل قاعدة البيانات
```bash
# أعد تشغيل الهجرة
pnpm db:push

# تحقق من DATABASE_URL
```

## 📊 الإحصائيات والأداء

البوت يتتبع:
- عدد الصفقات المفتوحة والمغلقة
- الأرباح والخسائر المحققة وغير المحققة
- نسبة النجاح (Win Rate)
- Profit Factor
- Maximum Drawdown
- Sharpe Ratio

## 🤝 المساهمة

نرحب بالمساهمات! يرجى:

1. عمل Fork للمشروع
2. إنشاء فرع للميزة الجديدة
3. عمل Commit للتغييرات
4. عمل Push وإرسال Pull Request

## 📄 الترخيص

هذا المشروع مرخص تحت MIT License.

## 📞 التواصل والدعم

- **Issues**: استخدم GitHub Issues للإبلاغ عن الأخطاء
- **Discussions**: استخدم GitHub Discussions للأسئلة
- **Email**: contact@example.com

---

**تحذير**: التداول الآلي ينطوي على مخاطر. استخدم البوت على مسؤوليتك الخاصة.

**آخر تحديث**: مارس 2026
