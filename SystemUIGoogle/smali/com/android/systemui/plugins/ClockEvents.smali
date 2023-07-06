.class public interface abstract Lcom/android/systemui/plugins/ClockEvents;
.super Ljava/lang/Object;
.source "ClockProviderPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/ClockEvents$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onColorPaletteChanged(Landroid/content/res/Resources;)V
.end method

.method public abstract onLocaleChanged(Ljava/util/Locale;)V
.end method

.method public abstract onSeedColorChanged(Ljava/lang/Integer;)V
.end method

.method public abstract onTimeFormatChanged(Z)V
.end method

.method public abstract onTimeZoneChanged(Ljava/util/TimeZone;)V
.end method

.method public abstract onWeatherDataChanged(Lcom/android/systemui/plugins/WeatherData;)V
.end method
