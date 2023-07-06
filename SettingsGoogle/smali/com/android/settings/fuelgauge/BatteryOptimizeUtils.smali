.class public Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;
.super Ljava/lang/Object;
.source "BatteryOptimizeUtils.java"


# instance fields
.field mAllowListed:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mMode:I

.field private final mPackageName:Ljava/lang/String;

.field mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field private final mUid:I


# direct methods
.method public static synthetic $r8$lambda$SPsUKlCmDLf0wtyoNelpGI2M3jg(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->lambda$getInstalledApplications$0(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    .line 79
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    .line 80
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 81
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 82
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    .line 83
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x46

    .line 84
    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    .line 85
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {p1, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    return-void
.end method

.method public static getAppOptimizationMode(IZ)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-nez p1, :cond_2

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstalledApplications(Landroid/content/Context;Landroid/content/pm/IPackageManager;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/IPackageManager;",
            ")",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 146
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 147
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 151
    :try_start_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x408200

    goto :goto_1

    :cond_1
    const-wide/32 v2, 0x8200

    :goto_1
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 150
    invoke-interface {p1, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BatteryOptimizeUtils"

    const-string v0, "getInstalledApplications() is failed"

    .line 157
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_2
    new-instance p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0
.end method

.method private static isSystemOrDefaultApp(Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Ljava/lang/String;)Z
    .locals 1

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isDefaultActiveApp(Ljava/lang/String;)Z

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

.method private static synthetic lambda$getInstalledApplications$0(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 163
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private refreshState()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    .line 245
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    .line 246
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x46

    .line 247
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    .line 249
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string/jumbo p0, "refresh %s state, allowlisted = %s, mode = %d"

    .line 248
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryOptimizeUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static resetAppOptimizationMode(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;)V
    .locals 2

    .line 113
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    .line 112
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->resetAppOptimizationMode(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Lcom/android/settings/fuelgauge/BatteryUtils;)V

    return-void
.end method

.method static resetAppOptimizationMode(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Lcom/android/settings/fuelgauge/BatteryUtils;)V
    .locals 3

    .line 172
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getInstalledApplications(Landroid/content/Context;Landroid/content/pm/IPackageManager;)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 173
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    .line 180
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    const/16 v0, 0x46

    .line 181
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 184
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 185
    invoke-virtual {p3, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result v1

    .line 184
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 189
    invoke-static {p3, v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp(Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0, p1, p4, p3}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageStateInternal(IILjava/lang/String;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "BatteryOptimizeUtils"

    const-string p1, "no data found in the getInstalledApplications()"

    .line 174
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setAppOptimizationModeInternal(IZILjava/lang/String;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;)V
    .locals 0

    .line 232
    :try_start_0
    invoke-virtual {p4, p2, p3, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p5, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->addApp(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p5, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->removeApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "set OPTIMIZATION MODE failed for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryOptimizeUtils"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static setAppUsageStateInternal(IILjava/lang/String;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;)V
    .locals 8

    if-nez p0, :cond_0

    const-string p0, "BatteryOptimizeUtils"

    const-string/jumbo p1, "set unknown app optimization mode."

    .line 213
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 224
    invoke-static/range {v2 .. v7}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppOptimizationModeInternal(IZILjava/lang/String;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;)V

    return-void
.end method


# virtual methods
.method public getAppOptimizationMode()I
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->refreshState()V

    .line 106
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    invoke-static {v0, p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result p0

    return p0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, "unknown"

    :cond_0
    return-object p0
.end method

.method public isSystemOrDefaultApp()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp(Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidPackageName()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAppUsageState(I)V
    .locals 3

    .line 118
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set the same optimization mode for: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryOptimizeUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageStateInternal(IILjava/lang/String;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;)V

    return-void
.end method
