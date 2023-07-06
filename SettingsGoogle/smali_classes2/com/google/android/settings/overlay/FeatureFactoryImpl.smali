.class public final Lcom/google/android/settings/overlay/FeatureFactoryImpl;
.super Lcom/android/settings/overlay/FeatureFactoryImpl;
.source "FeatureFactoryImpl.java"


# instance fields
.field private mAccessibilityMetricsFeatureProvider:Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;

.field private mAccessibilitySearchFeatureProvider:Lcom/android/settings/accessibility/AccessibilitySearchFeatureProvider;

.field private mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

.field private mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

.field private mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

.field private mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

.field private mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

.field private mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

.field private mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

.field private mSecuritySettingsFeatureProvider:Lcom/android/settings/security/SecuritySettingsFeatureProvider;

.field private mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

.field private mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

.field private mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityMetricsFeatureProvider()Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccessibilityMetricsFeatureProvider:Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/google/android/settings/accessibility/AccessibilityMetricsFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/accessibility/AccessibilityMetricsFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccessibilityMetricsFeatureProvider:Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccessibilityMetricsFeatureProvider:Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;

    return-object p0
.end method

.method public getAccessibilitySearchFeatureProvider()Lcom/android/settings/accessibility/AccessibilitySearchFeatureProvider;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccessibilitySearchFeatureProvider:Lcom/android/settings/accessibility/AccessibilitySearchFeatureProvider;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccessibilitySearchFeatureProvider:Lcom/android/settings/accessibility/AccessibilitySearchFeatureProvider;

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccessibilitySearchFeatureProvider:Lcom/android/settings/accessibility/AccessibilitySearchFeatureProvider;

    return-object p0
.end method

.method public getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/google/android/settings/accounts/AccountFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/accounts/AccountFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    return-object p0
.end method

.method public getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 70
    new-instance v0, Lcom/google/android/settings/applications/ApplicationFeatureProviderGoogleImpl;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "device_policy"

    .line 73
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/settings/applications/ApplicationFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    return-object p0
.end method

.method public getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    return-object p0
.end method

.method public getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    return-object p0
.end method

.method public getBatterySettingsFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/google/android/settings/fuelgauge/BatterySettingsFeatureProviderGoogleImpl;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/fuelgauge/BatterySettingsFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

    return-object p0
.end method

.method public getBatteryStatusFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    return-object p0
.end method

.method public getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProvider;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/google/android/settings/bluetooth/BluetoothFeatureProviderGoogleImpl;

    invoke-static {}, Lcom/android/settings/overlay/FeatureFactory;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/settings/bluetooth/BluetoothFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    return-object p0
.end method

.method public getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/google/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    return-object p0
.end method

.method public getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/biometrics/face/FaceFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    return-object p0
.end method

.method public getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/google/android/settings/core/instrumentation/SettingsGoogleMetricsFeatureProvider;

    invoke-direct {v0}, Lcom/google/android/settings/core/instrumentation/SettingsGoogleMetricsFeatureProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method public getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-object p0
.end method

.method public getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/google/android/settings/search/SearchFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/search/SearchFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    return-object p0
.end method

.method public getSecuritySettingsFeatureProvider()Lcom/android/settings/security/SecuritySettingsFeatureProvider;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSecuritySettingsFeatureProvider:Lcom/android/settings/security/SecuritySettingsFeatureProvider;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;

    .line 222
    invoke-static {}, Lcom/android/settings/overlay/FeatureFactory;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSecuritySettingsFeatureProvider:Lcom/android/settings/security/SecuritySettingsFeatureProvider;

    .line 224
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSecuritySettingsFeatureProvider:Lcom/android/settings/security/SecuritySettingsFeatureProvider;

    return-object p0
.end method

.method public getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/google/android/settings/dashboard/suggestions/SuggestionFeatureProviderGoogleImpl;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/dashboard/suggestions/SuggestionFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    return-object p0
.end method

.method public getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/google/android/settings/support/SupportFeatureProviderImpl;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/support/SupportFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    return-object p0
.end method

.method public getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;
    .locals 3

    const v0, 0x7f0406e8

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HatsConfig__is_enabled"

    const/4 v2, 0x0

    .line 157
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/settings/experiments/PhenotypeProxy;->getBooleanFlagByPackageAndKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/google/android/settings/wifi/WifiTrackerLibProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/wifi/WifiTrackerLibProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;

    return-object p0
.end method
