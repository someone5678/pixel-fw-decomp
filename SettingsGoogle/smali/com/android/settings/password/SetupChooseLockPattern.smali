.class public Lcom/android/settings/password/SetupChooseLockPattern;
.super Lcom/android/settings/password/ChooseLockPattern;
.source "SetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;-><init>()V

    return-void
.end method

.method public static modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 45
    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 56
    const-class p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    return-object p0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 51
    const-class p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040ccb

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    return-void
.end method
