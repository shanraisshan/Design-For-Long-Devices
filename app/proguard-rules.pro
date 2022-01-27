# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/ammarali/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

#-ignorewarnings
#-keep class * {
#    public private *;
#}

#https://stackoverflow.com/a/56149162/6877588
# Prevent R8 from leaving Data object members always null
-keepclassmembers,allowobfuscation class * {
  @com.google.gson.annotations.SerializedName <fields>;
}

-keepclassmembers,allowobfuscation class * { @com.google.gson.annotations.SerializedName <fields>; }
-keep,allowobfuscation @interface com.google.gson.annotations.SerializedName

#https://firebase.google.com/docs/crashlytics/get-deobfuscated-reports?platform=android
-keepattributes SourceFile,LineNumberTable        # Keep file names and line numbers.
-keep public class * extends java.lang.Exception  # Optional: Keep custom exceptions.

#________________________________________ ANDROID LIBRARIES
#shanraisshan answer - https://stackoverflow.com/a/43111580
#http://stackoverflow.com/a/41901653/4754141
#http://stackoverflow.com/a/23840049/4754141
-keep class android.support.** { *; }
-keep interface android.support.** { *; }

# Dagger ProGuard rules.
# https://github.com/square/dagger
# https://github.com/google/dagger/issues/645
-dontwarn com.google.errorprone.annotations.*

#retrofit
#https://github.com/krschultz/android-proguard-snippets/blob/master/libraries/proguard-square-retrofit2.pro
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keepclasseswithmembers class * {
    @retrofit2.http.* <methods>;
}

#user model rules as discussed with Asad
-dontwarn com.savyour.data.model.**
-keep class com.design.data.model.** { *; }
-keep interface com.design.data.model.** { *; }

-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable

-ignorewarnings
