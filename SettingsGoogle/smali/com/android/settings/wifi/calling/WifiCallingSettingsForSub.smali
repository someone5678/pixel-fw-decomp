.class public Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;
    }
.end annotation


# static fields
.field static final REQUEST_CHECK_WFC_DISCLAIMER:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_CHECK_WFC_EMERGENCY_ADDRESS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

.field private mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

.field private mEditableWfcMode:Z

.field private mEditableWfcRoamingMode:Z

.field private mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

.field private mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

.field private mSubId:I

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

.field private final mTelephonyCallback:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateAddress:Landroidx/preference/Preference;

.field private final mUpdateAddressListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mUseWfcHomeModeForRoaming:Z

.field private mValidListener:Z


# direct methods
.method public static synthetic $r8$lambda$yDW8w4NgltbfFKroAZXd5BS31cw(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->lambda$new$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateBody(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateBody()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    const/4 v1, 0x1

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUseWfcHomeModeForRoaming:Z

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 107
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback-IA;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyCallback:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;

    .line 178
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 188
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 219
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getCarrierActivityIntent()Landroid/content/Intent;
    .locals 3

    .line 498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 501
    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string/jumbo v2, "wfc_emergency_address_carrier_app_string"

    .line 504
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 508
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 512
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 513
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 514
    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1
.end method

.method private getWfcModeSummary(I)Ljava/lang/CharSequence;
    .locals 2

    .line 639
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected WFC mode value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const p1, 0x1040958

    goto :goto_1

    :cond_1
    const p1, 0x1040956

    goto :goto_1

    :cond_2
    const p1, 0x1040957

    goto :goto_1

    :cond_3
    :goto_0
    const p1, 0x1040976

    .line 654
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroidx/preference/Preference;)Z
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "EXTRA_LAUNCH_CARRIER_APP"

    .line 182
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v0
.end method

.method private updateBody()V
    .locals 7

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->isWfcProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const-string v0, "carrier_config"

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 352
    iget v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "editable_wfc_mode_bool"

    .line 354
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    const-string v3, "editable_wfc_roaming_mode_bool"

    .line 356
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    const-string/jumbo v3, "use_wfc_home_network_mode_in_roaming_network_bool"

    .line 358
    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUseWfcHomeModeForRoaming:Z

    const-string v3, "carrier_wfc_supports_wifi_only_bool"

    .line 361
    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 366
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v3

    .line 367
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v5, 0x7f041793

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v5, 0x7f041792

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v5, 0x7f04179c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v5, 0x7f04179a

    .line 371
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {v4, v5}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v4, 0x7f0100f2

    .line 376
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v4, 0x7f0100f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v5, 0x7f0100f6

    .line 379
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 378
    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v6, 0x7f0100f3

    .line 383
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-virtual {v0, v6}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 385
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 387
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v4, 0x7f0100f5

    .line 391
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v4, 0x7f0100f9

    .line 393
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v5, 0x7f0100f7

    .line 395
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v6, 0x7f0100f4

    .line 399
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 398
    invoke-virtual {v0, v6}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 401
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 400
    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 403
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 407
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isEnabledByUser()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    invoke-virtual {v0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isAllowUserControl()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v0

    .line 412
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v2

    .line 413
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    return-void
.end method

.method private updateButtonWfcMode(ZII)V
    .locals 2

    .line 568
    iget-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    if-eqz v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 571
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz v1, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 573
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 574
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_2

    move p2, p3

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    if-eqz p1, :cond_4

    .line 577
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 579
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUseWfcHomeModeForRoaming:Z

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move p3, v0

    :goto_3
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 581
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    .line 583
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 584
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 585
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 587
    :goto_4
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iget-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroidx/preference/Preference;

    .line 588
    invoke-static {p1, p2, p3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 587
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateDescriptionForOptions(Ljava/util/List;)V

    return-void
.end method

.method private updateDescriptionForOptions(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    const-string v0, "no_options_description"

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/calling/LinkifyDescriptionPreference;

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f041797

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f041798

    .line 601
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 600
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 602
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    xor-int/lit8 p0, p1, 0x1

    .line 604
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateWfcMode(Z)V
    .locals 2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWfcMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiCallingForSub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiSettingEnabled(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v1

    .line 527
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    if-eqz p1, :cond_0

    .line 529
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, v1, p0, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 531
    :cond_0
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result p0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 271
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_0
    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {p0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    return-object p0
.end method

.method getImsProvisioningManager()Landroid/telephony/ims/ProvisioningManager;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 263
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 266
    :cond_0
    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4ce

    return p0
.end method

.method getResourcesForSubId()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 659
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {v0, p0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method isWfcProvisionedOnDevice()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 336
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isWifiCallingProvisioned()Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 537
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 539
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WFC activity request = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " result = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected request: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_3

    .line 550
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const-string p3, "EXTRA_LAUNCH_CARRIER_APP"

    .line 552
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 556
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    goto :goto_0

    :cond_2
    if-ne p2, p3, :cond_3

    .line 544
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 279
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f16011a

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "subId"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 288
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 292
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getImsProvisioningManager()Landroid/telephony/ims/ProvisioningManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    const-string/jumbo p1, "wifi_calling_switch_bar"

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const-string/jumbo p1, "wifi_calling_mode"

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 298
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "wifi_calling_roaming_mode"

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 301
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "emergency_address_key"

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroidx/preference/Preference;

    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 306
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.telephony.ims.action.WFC_IMS_REGISTRATION_ERROR"

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroidx/preference/Preference;

    .line 310
    invoke-static {p1, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 309
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateDescriptionForOptions(Ljava/util/List;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f060300

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x1020011

    .line 326
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 327
    invoke-static {p2, v0, v2, v1}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 328
    invoke-super {p0, p1, v2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    .line 329
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .line 448
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 450
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 452
    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 453
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 455
    iget v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyCallback:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 457
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->unregisterProvisioningChangedCallback()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    if-ne p1, v0, :cond_0

    .line 610
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange mButtonWfcMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 612
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 613
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 615
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiModeSetting(I)V

    .line 616
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 617
    iget-object p2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 619
    iget-boolean p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUseWfcHomeModeForRoaming:Z

    if-eqz p2, :cond_1

    .line 620
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiRoamingModeSetting(I)V

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    if-ne p1, v0, :cond_1

    .line 625
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 626
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 627
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 629
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiRoamingModeSetting(I)V

    .line 631
    iget-object p2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 420
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 422
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateBody()V

    .line 424
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 425
    iget v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isWifiCallingSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 427
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyCallback:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;

    .line 426
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 429
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    const/4 v1, 0x1

    .line 431
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "alertShow"

    .line 438
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->showAlert(Landroid/content/Intent;)V

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->registerProvisioningChangedCallback()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 315
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    const-string/jumbo v1, "subId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSwitchChanged("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 474
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 480
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 481
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    const-string v1, "EXTRA_SUB_ID"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    .line 483
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 484
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const p2, 0x7f04179e

    .line 485
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 p2, 0x2

    .line 487
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 258
    new-instance v0, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method registerProvisioningChangedCallback()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-nez v0, :cond_0

    return-void

    .line 668
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/ims/ProvisioningManager;->registerProvisioningChangedCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WifiCallingForSub"

    const-string v0, "onResume: Unable to register callback for provisioning changes."

    .line 671
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method showAlert(Landroid/content/Intent;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_TITLE"

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_MESSAGE"

    .line 206
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 208
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 210
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1080027

    .line 211
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method unregisterProvisioningChangedCallback()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ProvisioningManager;->unregisterProvisioningChangedCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V

    return-void
.end method
