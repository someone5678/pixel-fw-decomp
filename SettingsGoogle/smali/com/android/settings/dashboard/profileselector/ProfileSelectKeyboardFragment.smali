.class public final Lcom/android/settings/dashboard/profileselector/ProfileSelectKeyboardFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectKeyboardFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    .line 42
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "profile"

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    new-instance v2, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-direct {v2}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;-><init>()V

    .line 45
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    .line 48
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    new-instance v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;-><init>()V

    .line 50
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-array p0, v3, [Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    aput-object v2, p0, v3

    aput-object v0, p0, v1

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160032

    return p0
.end method
