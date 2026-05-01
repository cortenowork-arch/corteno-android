# 📱 Corteno IPTV Player - Android App

**تطبيق Android احترافي للمشغل ديالك (~3-5 MB APK)**

---

## ⚡ ابدأ هنا

📖 **اقرأ:** [`QUICK_START.md`](QUICK_START.md) - دليل سريع لبناء APK في 5 دقائق

---

## ✨ المميزات

- 📦 **حجم خفيف:** 3-5 MB (مثل IBO Player Pro)
- 🌐 **HTTP support:** يخدم بدون قيود Mixed Content
- 📺 **Android TV:** يدعم remote control
- 🎬 **Picture-in-Picture:** متابعة المشاهدة
- ⚡ **Hardware acceleration:** سرعة قصوى
- 🌟 **Splash screen:** مع لوغو احترافي
- 🔄 **Auto-rotation:** للقنوات
- 🎯 **Full screen:** تجربة immersive

---

## 🛠️ Build (3 طرق)

| الطريقة | الوقت | الصعوبة | الجودة |
|---------|------|---------|--------|
| 🌟 **GitHub Actions** | 5 دقائق | 🟢 سهل | ⭐⭐⭐⭐⭐ |
| 🅱️ **Android Studio** | 30 دقيقة | 🟡 متوسط | ⭐⭐⭐⭐⭐ |
| 🌐 **Codemagic** | 10 دقائق | 🟢 سهل | ⭐⭐⭐⭐ |

**موصى به:** GitHub Actions - بدون تثبيت أي شيء، مجاني تماماً.

---

## 📂 هيكل المشروع

```
corteno-android/
├── .github/
│   └── workflows/
│       └── build.yml             ← GitHub Actions (auto-build)
├── app/
│   ├── build.gradle              ← Build config
│   ├── proguard-rules.pro        ← Optimization
│   └── src/main/
│       ├── AndroidManifest.xml
│       ├── java/net/iptvsuppliers/corteno/
│       │   ├── SplashActivity.java   ← شاشة البداية
│       │   └── MainActivity.java      ← المشغل (WebView)
│       └── res/
│           ├── drawable/         ← الإيقونات
│           ├── layout/           ← UI Layouts
│           ├── mipmap-*/         ← App icon
│           ├── values/
│           │   ├── strings.xml
│           │   ├── colors.xml
│           │   └── themes.xml
│           └── xml/
│               └── network_security_config.xml
├── build.gradle                  ← Project build
├── settings.gradle
├── gradle.properties
├── gradle/wrapper/
├── README.md                     ← هذا الملف
└── QUICK_START.md                ← دليل البناء السريع
```

---

## 🎨 التخصيص

### 1. تغيير الرابط:

`app/src/main/java/net/iptvsuppliers/corteno/MainActivity.java`:
```java
private static final String PLAYER_URL = "YOUR_URL_HERE";
```

### 2. تغيير الاسم:

`app/src/main/res/values/strings.xml`:
```xml
<string name="app_name">YOUR_APP_NAME</string>
```

### 3. تغيير الإيقونة:

استبدل ملفات `app/src/main/res/drawable/ic_launcher_*.xml`

أو في Android Studio:
- Right-click `res/drawable` → New → Image Asset

### 4. تغيير الألوان:

`app/src/main/res/values/colors.xml`

---

## 🚀 كيفية البناء (Quick Start)

### 1. GitHub Method (موصى به):

```
1. أنشئ Repo في GitHub
2. ارفع كل الملفات
3. اضغط Actions tab
4. انتظر 5 دقائق
5. حمّل APK من Artifacts ✓
```

### 2. Android Studio:

```
1. Open project
2. Wait for sync
3. Build → Build APK
4. APK في: app/build/outputs/apk/debug/
```

---

## 📱 التثبيت

1. **انقل APK** للهاتف
2. **افتح** الملف
3. اقبل **Unknown sources** إذا طلب
4. **Install** ✓

---

## 🌐 النشر

### Google Play Store:
- **التكلفة:** $25 (مرة واحدة)
- **يحتاج:** ID + Privacy Policy
- **الوقت:** 1-3 أيام للقبول

### Amazon Appstore:
- **مجاني**
- **سريع** (ساعات)

### APKPure / Aptoide:
- **مجاني**
- **فوري**

---

## 🎯 المعلومات التقنية

| | القيمة |
|--|--------|
| **Min Android** | 5.0 (API 21) |
| **Target Android** | 14 (API 34) |
| **Package** | `net.iptvsuppliers.corteno` |
| **APK Size** | ~3-5 MB |
| **WebView** | System Chrome |

---

## 🔐 الأمان

- ✅ Network Security Config (HTTPS الذكي)
- ✅ ProGuard للـ release builds
- ✅ Certificate pinning ready (optional)
- ✅ Cleartext traffic للـ HTTP الضروري

---

## 📞 الدعم

أي مشكل في البناء أو التثبيت، تحقق من:
1. ✅ Logs في GitHub Actions
2. ✅ ADB logcat (Android Studio)
3. ✅ المشغل يخدم في المتصفح أولاً

---

**Made with 💙 for Corteno IPTV**
