.class public Lcom/android/settingslib/mobile/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field public static final CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FLIGHT_MODE_ICON:I

.field public static final FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ICON_1X:I

.field public static final ICON_3G:I

.field public static final ICON_4G:I

.field public static final ICON_4G_LTE:I

.field public static final ICON_4G_LTE_PLUS:I

.field public static final ICON_4G_PLUS:I

.field public static final ICON_5G:I

.field public static final ICON_5G_E:I

.field public static final ICON_5G_PLUS:I

.field public static final ICON_CWF:I

.field public static final ICON_E:I

.field public static final ICON_G:I

.field public static final ICON_H:I

.field public static final ICON_H_PLUS:I

.field public static final ICON_LTE:I

.field public static final ICON_LTE_PLUS:I

.field public static final ICON_NAME_TO_ICON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final MOBILE_CALL_STRENGTH_ICONS:[I

.field public static final NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 30
    sget v0, Lcom/android/settingslib/R$drawable;->stat_sys_airplane_mode:I

    sput v0, Lcom/android/settingslib/mobile/TelephonyIcons;->FLIGHT_MODE_ICON:I

    .line 32
    sget v0, Lcom/android/settingslib/R$drawable;->ic_lte_mobiledata:I

    sput v0, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_LTE:I

    .line 33
    sget v1, Lcom/android/settingslib/R$drawable;->ic_lte_plus_mobiledata:I

    sput v1, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_LTE_PLUS:I

    .line 34
    sget v2, Lcom/android/settingslib/R$drawable;->ic_g_mobiledata:I

    sput v2, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_G:I

    .line 35
    sget v3, Lcom/android/settingslib/R$drawable;->ic_e_mobiledata:I

    sput v3, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_E:I

    .line 36
    sget v4, Lcom/android/settingslib/R$drawable;->ic_h_mobiledata:I

    sput v4, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_H:I

    .line 37
    sget v5, Lcom/android/settingslib/R$drawable;->ic_h_plus_mobiledata:I

    sput v5, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_H_PLUS:I

    .line 38
    sget v6, Lcom/android/settingslib/R$drawable;->ic_3g_mobiledata:I

    sput v6, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_3G:I

    .line 39
    sget v7, Lcom/android/settingslib/R$drawable;->ic_4g_mobiledata:I

    sput v7, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G:I

    .line 40
    sget v8, Lcom/android/settingslib/R$drawable;->ic_4g_plus_mobiledata:I

    sput v8, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G_PLUS:I

    .line 41
    sget v9, Lcom/android/settingslib/R$drawable;->ic_4g_lte_mobiledata:I

    sput v9, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G_LTE:I

    .line 42
    sget v10, Lcom/android/settingslib/R$drawable;->ic_4g_lte_plus_mobiledata:I

    sput v10, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G_LTE_PLUS:I

    .line 43
    sget v11, Lcom/android/settingslib/R$drawable;->ic_5g_e_mobiledata:I

    sput v11, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_E:I

    .line 44
    sget v12, Lcom/android/settingslib/R$drawable;->ic_1x_mobiledata:I

    sput v12, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_1X:I

    .line 45
    sget v13, Lcom/android/settingslib/R$drawable;->ic_5g_mobiledata:I

    sput v13, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G:I

    .line 46
    sget v14, Lcom/android/settingslib/R$drawable;->ic_5g_plus_mobiledata:I

    sput v14, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_PLUS:I

    .line 47
    sget v15, Lcom/android/settingslib/R$drawable;->ic_carrier_wifi:I

    sput v15, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_CWF:I

    move/from16 v16, v15

    .line 49
    new-instance v15, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move/from16 v17, v14

    sget v14, Lcom/android/settingslib/R$string;->carrier_network_change_mode:I

    move/from16 v18, v13

    const-string v13, "CARRIER_NETWORK_CHANGE"

    move/from16 v19, v11

    const/4 v11, 0x0

    invoke-direct {v15, v13, v14, v11}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 55
    new-instance v13, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v14, Lcom/android/settingslib/R$string;->data_connection_3g:I

    const-string v11, "3G"

    invoke-direct {v13, v11, v14, v6}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 61
    new-instance v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v11, "WFC"

    const/4 v14, 0x0

    invoke-direct {v6, v11, v14, v14}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 66
    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v20, v6

    const-string v6, "Unknown"

    invoke-direct {v11, v6, v14, v14}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 71
    new-instance v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v14, Lcom/android/settingslib/R$string;->data_connection_edge:I

    move-object/from16 v21, v11

    const-string v11, "E"

    invoke-direct {v6, v11, v14, v3}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 77
    new-instance v3, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v11, Lcom/android/settingslib/R$string;->data_connection_cdma:I

    const-string v14, "1X"

    invoke-direct {v3, v14, v11, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 83
    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_gprs:I

    const-string v14, "G"

    invoke-direct {v11, v14, v12, v2}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 89
    new-instance v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_3_5g:I

    const-string v14, "H"

    invoke-direct {v2, v14, v12, v4}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 95
    new-instance v4, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_3_5g_plus:I

    const-string v14, "H+"

    invoke-direct {v4, v14, v12, v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 101
    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_4g:I

    const-string v14, "4G"

    invoke-direct {v5, v14, v12, v7}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 107
    new-instance v7, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_4g_plus:I

    const-string v14, "4G+"

    invoke-direct {v7, v14, v12, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 113
    new-instance v8, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_lte:I

    const-string v14, "LTE"

    invoke-direct {v8, v14, v12, v0}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 119
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_lte_plus:I

    const-string v14, "LTE+"

    invoke-direct {v0, v14, v12, v1}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 125
    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_4g_lte:I

    const-string v14, "4G LTE"

    invoke-direct {v1, v14, v12, v9}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 131
    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_4g_lte_plus:I

    const-string v14, "4G LTE+"

    invoke-direct {v9, v14, v12, v10}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 137
    new-instance v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_5ge_html:I

    const-string v14, "5Ge"

    move-object/from16 v22, v0

    move/from16 v0, v19

    invoke-direct {v10, v14, v12, v0}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 143
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_5g:I

    const-string v14, "5G"

    move-object/from16 v19, v8

    move/from16 v8, v18

    invoke-direct {v0, v14, v12, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 149
    new-instance v8, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_5g_plus:I

    const-string v14, "5G_PLUS"

    move-object/from16 v18, v0

    move/from16 v0, v17

    invoke-direct {v8, v14, v12, v0}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 155
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->cell_data_off_content_description:I

    const-string v14, "DataDisabled"

    move-object/from16 v17, v8

    const/4 v8, 0x0

    invoke-direct {v0, v14, v12, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 161
    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v14, Lcom/android/settingslib/R$string;->not_default_data_content_description:I

    move-object/from16 v23, v0

    const-string v0, "NotDefaultData"

    invoke-direct {v12, v0, v14, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 167
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v8, Lcom/android/settingslib/R$string;->data_connection_carrier_wifi:I

    const-string v14, "CWF"

    move-object/from16 v24, v12

    move/from16 v12, v16

    invoke-direct {v0, v14, v8, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    const-string v8, "carrier_network_change"

    .line 180
    invoke-interface {v0, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "3g"

    .line 181
    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "wfc"

    move-object/from16 v12, v20

    .line 182
    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "unknown"

    move-object/from16 v12, v21

    .line 183
    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "e"

    .line 184
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "1x"

    .line 185
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "g"

    .line 186
    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "h"

    .line 187
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "h+"

    .line 188
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4g"

    .line 189
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4g+"

    .line 190
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4glte"

    .line 191
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4glte+"

    .line 192
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5ge"

    .line 193
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lte"

    move-object/from16 v2, v19

    .line 194
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lte+"

    move-object/from16 v2, v22

    .line 195
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5g"

    move-object/from16 v2, v18

    .line 196
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5g_plus"

    move-object/from16 v2, v17

    .line 197
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "datadisable"

    move-object/from16 v2, v23

    .line 198
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "notdefaultdata"

    move-object/from16 v2, v24

    .line 199
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 202
    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    return-void
.end method
