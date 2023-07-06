.class public interface abstract Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;
.super Ljava/lang/Object;
.source "MobileMappings.kt"


# virtual methods
.method public abstract getDefaultIcons(Lcom/android/settingslib/mobile/MobileMappings$Config;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
.end method

.method public abstract getIconKey(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;
.end method

.method public abstract mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/HashMap;
.end method

.method public abstract toIconKey(I)Ljava/lang/String;
.end method

.method public abstract toIconKeyOverride(I)Ljava/lang/String;
.end method
