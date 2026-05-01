# ProGuard rules
-keep class net.iptvsuppliers.corteno.** { *; }
-keepattributes JavascriptInterface
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
