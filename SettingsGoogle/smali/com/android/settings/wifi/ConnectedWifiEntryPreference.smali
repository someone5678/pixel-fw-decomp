.class public Lcom/android/settings/wifi/ConnectedWifiEntryPreference;
.super Lcom/android/settings/wifi/LongPressWifiEntryPreference;
.source "ConnectedWifiEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    const p1, 0x7f0601c8

    .line 37
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0d055b

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    const v1, 0x7f0d055c

    .line 56
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 58
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d068f

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0d055b

    if-ne p1, v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;

    .line 45
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
