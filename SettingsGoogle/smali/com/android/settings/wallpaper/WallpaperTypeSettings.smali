.class public Lcom/android/settings/wallpaper/WallpaperTypeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WallpaperTypeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040ab6

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WallpaperTypeSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x65

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160114

    return p0
.end method
