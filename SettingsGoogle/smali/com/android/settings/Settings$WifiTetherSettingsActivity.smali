.class public Lcom/android/settings/Settings$WifiTetherSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiTetherSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 70
    invoke-static {v0, p0}, Lcom/android/settings/Settings;->-$$Nest$smwrapIntentWithAllInOneTetherSettingsIfNeeded(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
