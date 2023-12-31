.class public Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "EnableVerboseVendorLoggingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final DBG:Z

.field private static final DUMP_STATE_AIDL_SERVICE_NAME:Ljava/lang/String;


# instance fields
.field private mDumpstateHalVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EnableVerboseVendorLoggingPreferenceController"

    const/4 v1, 0x3

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/dumpstate/IDumpstateDevice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DUMP_STATE_AIDL_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    return-void
.end method


# virtual methods
.method getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;
    .locals 3

    .line 201
    :try_start_0
    sget-object v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DUMP_STATE_AIDL_SERVICE_NAME:Ljava/lang/String;

    .line 202
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/hardware/dumpstate/IDumpstateDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/dumpstate/IDumpstateDevice;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    sget-boolean v1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get AIDL service fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 208
    iput v1, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    :cond_1
    return-object v0
.end method

.method getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;
    .locals 6

    const-string v0, "EnableVerboseVendorLoggingPreferenceController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    :try_start_0
    invoke-static {v1}, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;->getService(Z)Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;

    move-result-object v2

    .line 172
    iput v1, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 174
    sget-boolean v4, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get HIDL v1.1 service fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 180
    :try_start_1
    invoke-static {v1}, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;->getService(Z)Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v2

    const/4 v1, 0x0

    .line 181
    iput v1, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 183
    sget-boolean v3, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get HIDL v1.0 service fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    const/4 v0, -0x1

    .line 188
    iput v0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    :cond_2
    return-object v2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_verbose_vendor_logging"

    return-object p0
.end method

.method getVerboseLoggingEnabled()Z
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;

    move-result-object v0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/dumpstate/IDumpstateDevice;->getVerboseLoggingEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 142
    sget-boolean v2, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aidlService.getVerboseLoggingEnabled fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 148
    iget p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    const/4 v3, 0x1

    if-ge p0, v3, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    :try_start_1
    check-cast v0, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;

    .line 157
    invoke-interface {v0}, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;->getVerboseLoggingEnabled()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 160
    sget-boolean v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HIDL v1.1 getVerboseLoggingEnabled fail: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    .line 149
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "getVerboseLoggingEnabled not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2
.end method

.method public isAvailable()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->isIDumpstateDeviceAidlServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->isIDumpstateDeviceV1_1ServiceAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isIDumpstateDeviceAidlServiceAvailable()Z
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isIDumpstateDeviceV1_1ServiceAvailable()Z
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    sget-boolean v1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    const-string v2, "IDumpstateDevice v1.1 service is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 95
    iget p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->setVerboseLoggingEnabled(Z)V

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->setVerboseLoggingEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method setVerboseLoggingEnabled(Z)V
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;

    move-result-object v0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/dumpstate/IDumpstateDevice;->setVerboseLoggingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 112
    sget-boolean v2, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aidlService.setVerboseLoggingEnabled fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 118
    iget p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    const/4 v2, 0x1

    if-ge p0, v2, :cond_1

    goto :goto_2

    .line 124
    :cond_1
    :try_start_1
    check-cast v0, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;

    .line 127
    invoke-interface {v0, p1}, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;->setVerboseLoggingEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 130
    sget-boolean p1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HIDL v1.1 setVerboseLoggingEnabled fail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    .line 119
    :cond_3
    :goto_2
    sget-boolean p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz p0, :cond_4

    const-string/jumbo p0, "setVerboseLoggingEnabled not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getVerboseLoggingEnabled()Z

    move-result p1

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
