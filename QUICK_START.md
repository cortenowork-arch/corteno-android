# 🚀 BUILD APK في 5 دقائق - دليل سريع

## ⚡ الطريقة الأسهل: GitHub Actions (مجاني، بدون تثبيت)

### الخطوة 1: حساب GitHub

إذا ما عندكش حساب: [github.com/signup](https://github.com/signup)

---

### الخطوة 2: أنشئ Repository

1. اضغط **"+"** فوق يمين → **"New repository"**

2. عبّي:
   ```
   Repository name: corteno-android
   Description: Corteno IPTV Player Android App
   ```

3. اختار: **Public** (أو Private)

4. اضغط **"Create repository"**

---

### الخطوة 3: رفع الملفات

#### الطريقة 1 (سهلة - drag & drop):

1. في الـ repo الجديد، شوف الرابط:
   ```
   "uploading an existing file"
   ```
   اضغط عليه

2. **اسحب كل ملفات هاد المجلد** (`corteno-android`) للصفحة

3. في الأسفل، عبّي:
   ```
   Commit message: Initial commit
   ```

4. اضغط **"Commit changes"**

---

### الخطوة 4: انتظر البناء

1. في الـ repo، اضغط tab **"Actions"** (في الأعلى)

2. غادي تشوف workflow اسمو **"Build APK"**

3. اضغط عليه - غادي يبدا يخدم تلقائياً

4. **انتظر 3-5 دقائق** (Android Studio compilation)

5. عندما يكتمل: ✅ علامة خضراء

---

### الخطوة 5: تنزيل الـ APK

1. اضغط على الـ workflow الناجح

2. في الأسفل، شوف **"Artifacts"** :
   ```
   📦 corteno-iptv-debug
   📦 corteno-iptv-release-unsigned
   ```

3. اضغط على **`corteno-iptv-debug`** للتنزيل

4. غادي يحمل ZIP file

5. **فك الضغط** → APK file جاهز!

6. **انقلو لهاتفك** وثبتو ✨

---

## 📱 التثبيت على الهاتف

### إذا ما يقبل التثبيت:

1. **Settings** ديال الهاتف
2. **Security** أو **Apps**
3. فعّل **"Install unknown apps"** للمتصفح أو File Manager
4. عاود حاول

---

## 🎨 قبل البناء - تخصيص (اختياري)

### تغيير الرابط:

افتح:
```
app/src/main/java/net/iptvsuppliers/corteno/MainActivity.java
```

السطر 32:
```java
private static final String PLAYER_URL = "http://player.iptvsuppliers.net/";
```

غير ل:
```java
private static final String PLAYER_URL = "URL_ديالك";
```

### تغيير اسم التطبيق:

افتح:
```
app/src/main/res/values/strings.xml
```

غير:
```xml
<string name="app_name">Corteno IPTV Player</string>
```

---

## 🆘 مشاكل شائعة

### "Build failed":
- شوف logs في Actions tab
- معظم الأخطاء بسبب internet timeout - عاود حاول

### "App not installed" على الهاتف:
- احذف نسخة قديمة (إذا موجودة)
- فعّل Unknown sources

### الفيديو ما يخدمش:
- تأكد إن الرابط ديال المشغل صحيح
- تأكد إن المشغل يخدم في المتصفح أولاً

---

## 🎉 خلاص!

دابا عندك:
- ✅ Repository على GitHub
- ✅ APK جاهز للتنزيل في كل push
- ✅ تطبيق Android احترافي

**لتحديث التطبيق في المستقبل:**
1. عدل الكود في الـ repo
2. Commit changes
3. GitHub Actions يبني APK جديد تلقائياً!

---

## 💡 نصيحة: استعمل **Debug APK** للاختبار

- ✅ يخدم بدون توقيع
- ✅ يثبت مباشرة
- ⚠️ ما تقدرش تنشره في Google Play
- 💡 للنشر، تحتاج **Release APK signed**
