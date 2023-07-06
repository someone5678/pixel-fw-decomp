.class public Lcom/android/settings/enterprise/EnterprisePrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "EnterprisePrivacySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mPrivacySettingsPreference:Lcom/android/settings/enterprise/PrivacySettingsPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;

    invoke-direct {v0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static isPageEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 171
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p0

    .line 173
    invoke-interface {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->hasDeviceOwner()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->mPrivacySettingsPreference:Lcom/android/settings/enterprise/PrivacySettingsPreference;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/settings/enterprise/PrivacySettingsPreference;->createPreferenceControllers(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "EnterprisePrivacySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x274

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->mPrivacySettingsPreference:Lcom/android/settings/enterprise/PrivacySettingsPreference;

    invoke-interface {p0}, Lcom/android/settings/enterprise/PrivacySettingsPreference;->getPreferenceScreenResId()I

    move-result p0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-static {p1}, Lcom/android/settings/enterprise/PrivacySettingsPreferenceFactory;->createPrivacySettingsPreference(Landroid/content/Context;)Lcom/android/settings/enterprise/PrivacySettingsPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->mPrivacySettingsPreference:Lcom/android/settings/enterprise/PrivacySettingsPreference;

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->mPrivacySettingsPreference:Lcom/android/settings/enterprise/PrivacySettingsPreference;

    instance-of p1, p1, Lcom/android/settings/enterprise/PrivacySettingsFinancedPreference;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f040960

    const-string v0, "Settings.MANAGED_DEVICE_INFO"

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterprisePreferenceScreenTitle(Ljava/lang/String;I)V

    const p1, 0x7f040951

    const-string v0, "exposure_category"

    const-string v1, "Settings.INFORMATION_SEEN_BY_ORGANIZATION_TITLE"

    .line 87
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04094e

    const-string v0, "enterprise_privacy_enterprise_data"

    const-string v1, "Settings.ADMIN_CAN_SEE_WORK_DATA_WARNING"

    .line 90
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040959

    const-string v0, "enterprise_privacy_installed_packages"

    const-string v1, "Settings.ADMIN_CAN_SEE_APPS_WARNING"

    .line 92
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040963

    const-string v0, "enterprise_privacy_usage_stats"

    const-string v1, "Settings.ADMIN_CAN_SEE_USAGE_WARNING"

    .line 94
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04095d

    const-string v0, "network_logs"

    const-string v1, "Settings.ADMIN_CAN_SEE_NETWORK_LOGS_WARNING"

    .line 96
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040948

    const-string v0, "bug_reports"

    const-string v1, "Settings.ADMIN_CAN_SEE_BUG_REPORT_WARNING"

    .line 98
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04095f

    const-string/jumbo v0, "security_logs"

    const-string v1, "Settings.ADMIN_CAN_SEE_SECURITY_LOGS_WARNING"

    .line 100
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040952

    const-string v0, "exposure_changes_category"

    const-string v1, "Settings.CHANGES_BY_ORGANIZATION_TITLE"

    .line 102
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04094f

    const-string v0, "number_enterprise_installed_packages"

    const-string v1, "Settings.ADMIN_ACTION_APPS_INSTALLED"

    .line 105
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04095a

    const-string v0, "enterprise_privacy_number_location_access_packages"

    const-string v1, "Settings.ADMIN_ACTION_ACCESS_LOCATION"

    .line 108
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04095c

    const-string v0, "enterprise_privacy_number_microphone_access_packages"

    const-string v1, "Settings.ADMIN_ACTION_ACCESS_MICROPHONE"

    .line 110
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04094c

    const-string v0, "enterprise_privacy_number_camera_access_packages"

    const-string v1, "Settings.ADMIN_ACTION_ACCESS_CAMERA"

    .line 112
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040950

    const-string v0, "number_enterprise_set_default_apps"

    const-string v1, "Settings.ADMIN_ACTION_SET_DEFAULT_APPS"

    .line 114
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040946

    const-string v0, "always_on_vpn_managed_profile"

    const-string v1, "Settings.ALWAYS_ON_VPN_WORK_PROFILE"

    .line 117
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040957

    const-string v0, "input_method"

    const-string v1, "Settings.ADMIN_ACTION_SET_CURRENT_INPUT_METHOD"

    .line 119
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040955

    const-string v0, "global_http_proxy"

    const-string v1, "Settings.ADMIN_ACTION_SET_HTTP_PROXY"

    .line 121
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04094a

    const-string v0, "ca_certs_current_user"

    const-string v1, "Settings.CA_CERTS_PERSONAL_PROFILE"

    .line 123
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04094b

    const-string v0, "ca_certs_managed_profile"

    const-string v1, "Settings.CA_CERTS_WORK_PROFILE"

    .line 125
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04094d

    const-string v0, "device_access_category"

    const-string v1, "Settings.YOUR_ACCESS_TO_THIS_DEVICE_TITLE"

    .line 127
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f04095b

    const-string v0, "enterprise_privacy_lock_device"

    const-string v1, "Settings.ADMIN_CAN_LOCK_DEVICE"

    .line 130
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040964

    const-string v0, "enterprise_privacy_wipe_device"

    const-string v1, "Settings.ADMIN_CAN_WIPE_DEVICE"

    .line 132
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040953

    const-string v0, "failed_password_wipe_current_user"

    const-string v1, "Settings.ADMIN_CONFIGURED_FAILED_PASSWORD_WIPE_DEVICE"

    .line 134
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040954

    const-string v0, "failed_password_wipe_managed_profile"

    const-string v1, "Settings.ADMIN_CONFIGURED_FAILED_PASSWORD_WIPE_WORK_PROFILE"

    .line 137
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f040956

    const-string v0, "enterprise_privacy_footer"

    const-string v1, "Settings.ENTERPRISE_PRIVACY_FOOTER"

    .line 140
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->mPrivacySettingsPreference:Lcom/android/settings/enterprise/PrivacySettingsPreference;

    .line 147
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method
