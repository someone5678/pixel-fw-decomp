.class public Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothSnoopLogPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BLUETOOTH_BTSNOOP_LOG_MODE_PROPERTY:Ljava/lang/String; = "persist.bluetooth.btsnooplogmode"

.field static final BTSNOOP_LOG_MODE_DISABLED_INDEX:I = 0x0

.field static final BTSNOOP_LOG_MODE_FILTERED_INDEX:I = 0x1

.field static final BTSNOOP_LOG_MODE_FULL_INDEX:I = 0x2


# instance fields
.field private final mListEntries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f010046

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListEntries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultModeIndex()I
    .locals 5

    .line 60
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_btsnoop_default_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 68
    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bt_hci_snoop_log"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 106
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const-string/jumbo v0, "persist.bluetooth.btsnooplogmode"

    const/4 v1, 0x0

    .line 107
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->getDefaultModeIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListEntries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->getDefaultModeIndex()I

    move-result p0

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "persist.bluetooth.btsnooplogmode"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 90
    check-cast p1, Landroidx/preference/ListPreference;

    const-string/jumbo v0, "persist.bluetooth.btsnooplogmode"

    .line 91
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->getDefaultModeIndex()I

    move-result v1

    const/4 v2, 0x0

    .line 94
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 95
    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListEntries:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
