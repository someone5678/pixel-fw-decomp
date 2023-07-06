.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
.super Ljava/lang/Object;
.source "BatteryDiffEntry.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field

.field static sCurrentLocale:Ljava/util/Locale;

.field static final sResourceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final sValidForRestriction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAppIcon:Landroid/graphics/drawable/Drawable;

.field mAppIconId:I

.field mAppLabel:Ljava/lang/String;

.field public mBackgroundUsageTimeInMs:J

.field public final mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

.field public mConsumePower:D

.field private mContext:Landroid/content/Context;

.field private mDefaultPackageName:Ljava/lang/String;

.field public mForegroundUsageTimeInMs:J

.field mIsLoaded:Z

.field private mPercentOfTotal:D

.field private mTotalConsumePower:D

.field private mUserManager:Landroid/os/UserManager;

.field mValidForRestriction:Z


# direct methods
.method public static synthetic $r8$lambda$VJWM2xv6VgD9bqWmyUvZhfuM6lM(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->lambda$static$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsLoaded:Z

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    .line 84
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 85
    iput-wide p6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    .line 86
    iput-wide p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    .line 87
    iput-wide p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    .line 88
    iput-object p8, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 89
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 379
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 380
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private getBadgeIconForUser(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    long-to-int v0, v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getCache()Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
    .locals 4

    .line 298
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 299
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v1, "clearCache() locale is changed from %s to %s"

    .line 300
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryDiffEntry"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sCurrentLocale:Ljava/util/Locale;

    .line 303
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clearCache()V

    .line 305
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    return-object p0
.end method

.method private isOtherUsers()Z
    .locals 6

    .line 188
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isSystemUid(I)Z
    .locals 1

    .line 390
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)I
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private loadNameAndIconForUid()V
    .locals 9

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 310
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "BatteryDiffEntry"

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 312
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    :try_start_0
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to retrieve ApplicationInfo for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 326
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    return-void

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    long-to-int v1, v1

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 333
    array-length v0, v0

    if-nez v0, :cond_3

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 335
    invoke-static {v0, v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromUid(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    .line 336
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 337
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 341
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->loadNameAndIcon(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    .line 345
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->clearUidCache()V

    if-eqz v0, :cond_4

    .line 347
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 348
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 349
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 351
    invoke-virtual {v1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 352
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    aput-object p0, v1, v8

    const/4 p0, 0x1

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mPackageName:Ljava/lang/String;

    aput-object v0, v1, p0

    const-string p0, "found different package: %s | %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 10

    .line 106
    new-instance v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-object v8, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    return-object v9
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object p0

    return-object p0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isOtherUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    const v0, 0x7f020380

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAppIconId()I
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 140
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    return p0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isOtherUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    const v0, 0x7f04044b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    goto :goto_1

    .line 122
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method getKey()Ljava/lang/String;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-object v0

    :cond_1
    const-string p0, ":"

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 153
    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 154
    aget-object v0, p0, v0

    :cond_2
    return-object v0
.end method

.method public getPercentOfTotal()D
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentOfTotal:D

    return-wide v0
.end method

.method public isSystemEntry()Z
    .locals 6

    .line 165
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isOtherUsers()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_2

    const/4 p0, 0x2

    if-eq v2, p0, :cond_1

    const/4 p0, 0x3

    if-eq v2, p0, :cond_1

    return v3

    :cond_1
    return v1

    .line 173
    :cond_2
    iget-wide v4, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    long-to-int v2, v4

    .line 174
    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    if-nez v0, :cond_5

    const/4 v0, -0x4

    if-eq v2, v0, :cond_5

    const/4 v0, -0x5

    if-ne v2, v0, :cond_3

    goto :goto_0

    .line 179
    :cond_3
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 182
    invoke-static {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemUid(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :cond_5
    :goto_0
    return v1
.end method

.method loadLabelAndIcon()V
    .locals 5

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getCache()Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 200
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 201
    iget v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIconId:I

    iput v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    .line 203
    :cond_1
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsLoaded:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->updateRestrictionFlagState()V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_7

    const/4 v0, 0x2

    if-eq v2, v0, :cond_6

    const/4 v0, 0x3

    if-eq v2, v0, :cond_4

    goto/16 :goto_0

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    .line 233
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 236
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 237
    iget v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIconId:I

    if-eqz v0, :cond_5

    .line 238
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    .line 239
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 241
    :cond_5
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    invoke-direct {v2, v3, v4, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    long-to-int v1, v1

    .line 221
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 224
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 225
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4, p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 226
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadNameAndIconForUid()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 250
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 253
    :cond_8
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getBadgeIconForUser(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 254
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    .line 255
    :cond_9
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4, p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 255
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_0
    return-void
.end method

.method public setTotalConsumePower(D)V
    .locals 3

    .line 94
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentOfTotal:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryDiffEntry{"

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    .line 363
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "\n\tname=%s restrictable=%b"

    .line 362
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentOfTotal:D

    .line 365
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v4

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v5

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v1

    const-string v6, "\n\tconsume=%.2f%% %f/%f"

    .line 364
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    long-to-double v7, v7

    .line 367
    invoke-static {v6, v7, v8, v5, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    long-to-double v7, v7

    .line 369
    invoke-static {v6, v7, v8, v5, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "\n\tforeground:%s background:%s"

    .line 366
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-object v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    aput-object v6, v3, v4

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-wide v4, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    .line 373
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "\n\tpackage:%s|%s uid:%d userId:%d"

    .line 371
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateRestrictionFlagState()V
    .locals 5

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    .line 271
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->isAppEntry()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 275
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    .line 278
    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    return-void

    .line 282
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x401240

    .line 283
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 292
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "getPackageInfo() error %s for package=%s"

    .line 291
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryDiffEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    :goto_2
    return-void
.end method

.method public validForRestriction()Z
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 160
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    return p0
.end method
