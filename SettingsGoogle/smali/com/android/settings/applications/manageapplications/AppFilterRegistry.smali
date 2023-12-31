.class public Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
.super Ljava/lang/Object;
.source "AppFilterRegistry.java"


# static fields
.field private static sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;


# instance fields
.field private final mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 100
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 103
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_ALLOWLISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x0

    const v4, 0x7f040b07

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 111
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x1

    const v4, 0x7f0409bc

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 119
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 125
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/4 v1, 0x5

    const v2, 0x7f0409c6

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v1

    .line 131
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    const v3, 0x7f0409be

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 137
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    const v3, 0x7f0409c8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 143
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x2

    const v3, 0x7f0413ff

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 149
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x3

    const v3, 0x7f0413fe

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 155
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    const v3, 0x7f040617

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 161
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    const v3, 0x7f040618

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 167
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 173
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    const v3, 0x7f0409d0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 179
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    const v3, 0x7f0409d1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 185
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xd

    const v4, 0x7f0409c7

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 190
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->FILTER_CHANGE_WIFI_STATE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 196
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x10

    const v3, 0x7f0409cb

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 201
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->FILTER_MANAGE_EXTERNAL_STORAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x11

    const v3, 0x7f0409c9

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 207
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;->FILTER_CLOCK_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x12

    const v3, 0x7f04021f

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 213
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;->FILTER_MEDIA_MANAGEMENT_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x13

    const v3, 0x7f040d9b

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 219
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateLocaleBridge;->FILTER_APPS_LOCALE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x14

    const v3, 0x7f04028c

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    .line 226
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->FILTER_BATTERY_UNRESTRICTED_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x15

    const v3, 0x7f0409c4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v1, 0x15

    aput-object p0, v0, v1

    .line 233
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->FILTER_BATTERY_OPTIMIZED_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x16

    const v3, 0x7f0409c2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v1, 0x16

    aput-object p0, v0, v1

    .line 240
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->FILTER_BATTERY_RESTRICTED_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x17

    const v3, 0x7f0409c3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v1, 0x17

    aput-object p0, v0, v1

    return-void
.end method

.method public static getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
    .locals 1

    .line 250
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    .line 253
    :cond_0
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getDefaultFilterType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/16 p0, 0x16

    return p0

    :pswitch_2
    const/16 p0, 0x14

    return p0

    :pswitch_3
    const/16 p0, 0x13

    return p0

    :pswitch_4
    const/16 p0, 0x12

    return p0

    :pswitch_5
    const/16 p0, 0x11

    return p0

    :pswitch_6
    const/16 p0, 0xf

    return p0

    :pswitch_7
    const/16 p0, 0xd

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_a
    const/4 p0, 0x0

    return p0

    :pswitch_b
    const/16 p0, 0xa

    return p0

    :pswitch_c
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
