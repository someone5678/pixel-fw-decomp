.class public Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SpecialAccessSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f1600ee

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SpecialAccessSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x15f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600ee

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "interact_across_profiles"

    const-string v0, "Settings.CONNECTED_WORK_AND_PERSONAL_APPS_TITLE"

    const v1, 0x7f040b6c

    .line 43
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "device_administrators"

    const-string v0, "Settings.MANAGE_DEVICE_ADMIN_APPS"

    const v1, 0x7f040d59

    .line 45
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
