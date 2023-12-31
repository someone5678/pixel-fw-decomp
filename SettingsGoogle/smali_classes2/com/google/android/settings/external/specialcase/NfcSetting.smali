.class public Lcom/google/android/settings/external/specialcase/NfcSetting;
.super Ljava/lang/Object;
.source "NfcSetting.java"

# interfaces
.implements Lcom/google/android/settings/external/Queryable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAvailability(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    .line 115
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 117
    invoke-static {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private getIconResource()I
    .locals 0

    sget p0, Lcom/android/settings/R$drawable;->ic_settings_wireless:I

    return p0
.end method

.method private static getNfcStatus(Landroid/nfc/NfcAdapter;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    sget p0, Lcom/android/settings/R$string;->connected_devices_dashboard_title:I

    .line 125
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;
    .locals 7

    .line 41
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    .line 42
    invoke-static {p2}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getNfcStatus(Landroid/nfc/NfcAdapter;)I

    move-result v0

    .line 43
    invoke-static {p1, p2}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getAvailability(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I

    move-result p2

    .line 45
    const-class v4, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "nfc"

    sget v6, Lcom/android/settings/R$string;->menu_key_connected_devices:I

    move-object v1, p0

    move-object v2, p1

    .line 45
    invoke-interface/range {v1 .. v6}, Lcom/google/android/settings/external/Queryable;->getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-direct {p0}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getIconResource()I

    move-result p0

    .line 50
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_QUERY_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "existing_value"

    invoke-virtual {v2, v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "availability"

    invoke-virtual {v0, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const-string v0, "intent"

    .line 55
    invoke-virtual {p2, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "icon"

    invoke-virtual {p1, p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "dependent_setting"

    const-string p2, "toggle_airplane"

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v1
.end method

.method public getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;I)Landroid/database/Cursor;
    .locals 8

    .line 64
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    .line 65
    invoke-static {p2}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getNfcStatus(Landroid/nfc/NfcAdapter;)I

    move-result v0

    .line 67
    invoke-static {p1, p2}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getAvailability(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I

    move-result v1

    .line 68
    const-class v5, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "nfc"

    sget v7, Lcom/android/settings/R$string;->menu_key_connected_devices:I

    move-object v2, p0

    move-object v3, p1

    .line 68
    invoke-interface/range {v2 .. v7}, Lcom/google/android/settings/external/Queryable;->getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-direct {p0}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getIconResource()I

    move-result v2

    .line 77
    invoke-interface {p0, v1, v0, p3}, Lcom/google/android/settings/external/Queryable;->shouldChangeValue(III)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-ne p3, p0, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    if-nez p3, :cond_1

    .line 80
    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    .line 84
    :cond_2
    :goto_0
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_UPDATE_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    .line 87
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v3, "newValue"

    invoke-virtual {p2, v3, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "existing_value"

    invoke-virtual {p2, v0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "availability"

    invoke-virtual {p2, v0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const-string p3, "intent"

    .line 90
    invoke-virtual {p2, p3, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "icon"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    const-string p2, "dependent_setting"

    const-string p3, "toggle_airplane"

    .line 92
    invoke-virtual {p1, p2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p0
.end method
