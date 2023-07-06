.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field static sCurrentLocale:Ljava/util/Locale;

.field static sHandler:Landroid/os/Handler;

.field static final sRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sRequestThread:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBatteryConsumer:Landroid/os/BatteryConsumer;

.field private mConsumedPower:D

.field private final mConsumerType:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultPackageName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field private final mIsHidden:Z

.field public mName:Ljava/lang/String;

.field public mPercent:D

.field private final mPowerComponentId:I

.field private mTimeInBackgroundMs:J

.field private mTimeInForegroundMs:J

.field private final mUid:I

.field private mUsageDurationMs:J


# direct methods
.method public static synthetic $r8$lambda$1dfvwffMpxEx6S8WwA0CZ8O31Dw(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->lambda$static$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultPackageName(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDefaultPackageName(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    .line 160
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IDDJ)V
    .locals 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    const/4 v0, -0x1

    .line 254
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIsHidden:Z

    .line 256
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPowerComponentId:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-double/2addr p3, p5

    .line 260
    :goto_0
    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    .line 261
    iput-wide p7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUsageDurationMs:J

    const/4 p3, 0x3

    .line 262
    iput p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    .line 265
    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object p2

    .line 266
    iget p3, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIconId:I

    iput p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIconId:I

    .line 267
    iget-object p2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 269
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;DD)V
    .locals 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    const/4 v0, -0x1

    .line 278
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIsHidden:Z

    .line 280
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPowerComponentId:I

    const v0, 0x7f020380

    .line 282
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIconId:I

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 284
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-double/2addr p4, p6

    .line 288
    :goto_0
    iput-wide p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    const/4 p1, 0x3

    .line 289
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 191
    invoke-direct/range {v0 .. v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    sput-object p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 198
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    .line 199
    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    .line 200
    iput-boolean p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIsHidden:Z

    .line 201
    iput-object p8, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    const/4 p2, -0x1

    .line 202
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPowerComponentId:I

    .line 204
    instance-of p3, p4, Landroid/os/UidBatteryConsumer;

    if-eqz p3, :cond_4

    .line 205
    iput p6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    const/4 p2, 0x1

    .line 206
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    .line 207
    invoke-virtual {p4}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    .line 209
    check-cast p4, Landroid/os/UidBatteryConsumer;

    .line 210
    iget-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    const/4 p5, 0x0

    if-nez p3, :cond_2

    if-eqz p7, :cond_0

    .line 212
    array-length p3, p7

    if-ne p3, p2, :cond_0

    .line 213
    aget-object p3, p7, p5

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    goto :goto_1

    .line 215
    :cond_0
    invoke-static {p6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->isSystemUid(I)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "android"

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p4}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    .line 219
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 222
    :try_start_0
    iget-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1, p3, p5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 224
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 226
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PackageManager failed to retrieve ApplicationInfo for: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BatteryEntry"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    .line 231
    :cond_3
    :goto_2
    invoke-virtual {p0, p6, p7, p9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getQuickNameIconForUid(I[Ljava/lang/String;Z)V

    .line 233
    invoke-virtual {p4, p5}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide p5

    iput-wide p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    .line 235
    invoke-virtual {p4, p2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    goto :goto_3

    .line 236
    :cond_4
    instance-of p3, p4, Landroid/os/UserBatteryConsumer;

    if-eqz p3, :cond_5

    .line 237
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    const/4 p2, 0x2

    .line 238
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    .line 239
    invoke-virtual {p4}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    .line 240
    check-cast p4, Landroid/os/UserBatteryConsumer;

    .line 241
    invoke-virtual {p4}, Landroid/os/UserBatteryConsumer;->getUserId()I

    move-result p2

    .line 240
    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object p1

    .line 242
    iget-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    :goto_3
    return-void

    .line 245
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clearUidCache()V
    .locals 1

    .line 157
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f0203bb

    if-eqz p1, :cond_5

    const/4 v2, 0x6

    if-eq p1, v2, :cond_4

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown attribute:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/os/BatteryConsumer;

    const-string v2, "POWER_COMPONENT_"

    invoke-static {v1, v2, p1}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryEntry"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f020380

    move-object p0, v0

    goto/16 :goto_0

    .line 572
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f04023a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0203ad

    goto/16 :goto_0

    .line 592
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041042

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0203da

    goto :goto_0

    .line 605
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041035

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0203cd

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041025

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0203b4

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041024

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0203b3

    goto :goto_0

    .line 600
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041058

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0203de

    goto :goto_0

    .line 584
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041026

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f02020d

    goto :goto_0

    .line 588
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041034

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 596
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f04104e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 615
    :goto_0
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getNameAndIconFromUid(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
    .locals 2

    const v0, 0x7f020380

    .line 549
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez p2, :cond_0

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0410cd

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, -0x4

    if-ne p2, v1, :cond_1

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0410d1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, -0x5

    if-ne p2, v1, :cond_2

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0410cf

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p2, "mediaserver"

    .line 556
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0410ce

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p2, "dex2oat"

    .line 558
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "dex2oat32"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "dex2oat64"

    .line 559
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 560
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0410cb

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 562
    :cond_5
    :goto_0
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object p0
.end method

.method public static getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
    .locals 2

    .line 531
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 532
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 537
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 538
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0411ab

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 543
    :goto_0
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object p1
.end method

.method public static isSystemUid(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)I
    .locals 2

    .line 161
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static loadNameAndIcon(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
    .locals 17

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_e

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    goto/16 :goto_9

    .line 358
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 359
    invoke-static/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->isSystemUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android"

    .line 360
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_b

    .line 362
    array-length v7, v4

    new-array v8, v7, [Ljava/lang/String;

    .line 363
    array-length v0, v4

    invoke-static {v4, v6, v8, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 367
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object/from16 v11, p4

    move v12, v6

    :goto_1
    const-wide/16 v13, 0x0

    const-string v15, ", user "

    const-string v6, "BatteryEntry"

    if-ge v12, v7, :cond_5

    .line 370
    :try_start_0
    aget-object v0, v8, v12

    invoke-interface {v9, v0, v13, v14, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Retrieving null app info for package "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v8, v12

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 377
    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 379
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v12

    .line 381
    :cond_3
    iget v13, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v13, :cond_4

    .line 382
    aget-object v11, v4, v12

    .line 383
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 387
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error while retrieving app info for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v8, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v12, p6

    :goto_3
    if-ne v7, v5, :cond_6

    const/4 v7, 0x0

    .line 393
    aget-object v0, v8, v7

    goto/16 :goto_8

    .line 396
    :cond_6
    array-length v7, v4

    move-object/from16 v8, p5

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v7, :cond_a

    aget-object v14, v4, v13

    move-object/from16 p4, v6

    const-wide/16 v5, 0x0

    .line 398
    :try_start_1
    invoke-interface {v9, v14, v5, v6, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_7

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving null package info for package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v5, p4

    :try_start_2
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    move-object/from16 v5, p4

    .line 404
    iget v6, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v6, :cond_9

    .line 405
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v14, v6, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 408
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 409
    :try_start_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v6, :cond_8

    .line 411
    :try_start_4
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v12, v0

    move-object v11, v14

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v8, v1

    move-object v11, v14

    goto :goto_6

    :cond_8
    :goto_5
    move-object v0, v1

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v8, v1

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v5, p4

    .line 417
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while retrieving package info for package "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    move-object v6, v5

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    move-object v0, v8

    goto :goto_8

    :cond_b
    move-object/from16 v11, p4

    move-object/from16 v0, p5

    move-object/from16 v12, p6

    .line 424
    :goto_8
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v12, :cond_c

    .line 426
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 429
    :cond_c
    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;

    invoke-direct {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;-><init>()V

    .line 430
    iput-object v0, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;->mName:Ljava/lang/String;

    .line 431
    iput-object v12, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 432
    iput-object v11, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;->mPackageName:Ljava/lang/String;

    .line 434
    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_d

    move-object/from16 v1, p3

    const/4 v3, 0x1

    .line 436
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 438
    :cond_d
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v11, v12, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object v1

    :cond_e
    :goto_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static startRequestQueue()V
    .locals 3

    .line 128
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 129
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestThread:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;->abort()V

    .line 134
    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestThread:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 136
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestThread:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 139
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public static stopRequestQueue()V
    .locals 2

    .line 145
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestThread:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;->abort()V

    const/4 v1, 0x0

    .line 148
    sput-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestThread:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;

    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    sput-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 152
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Landroid/os/BatteryConsumer;)V
    .locals 4

    .line 515
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    invoke-virtual {p1}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    .line 516
    instance-of v0, p1, Landroid/os/UidBatteryConsumer;

    if-eqz v0, :cond_0

    .line 517
    check-cast p1, Landroid/os/UidBatteryConsumer;

    .line 518
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    .line 520
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    .line 522
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 523
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getConsumedPower()D
    .locals 2

    .line 507
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    return-wide v0
.end method

.method public getConsumerType()I
    .locals 0

    .line 302
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    return p0
.end method

.method public getDefaultPackageName()Ljava/lang/String;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of v1, v0, Landroid/os/UidBatteryConsumer;

    if-eqz v1, :cond_0

    .line 444
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 445
    :cond_0
    instance-of v0, v0, Landroid/os/UserBatteryConsumer;

    if-eqz v0, :cond_1

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    check-cast p0, Landroid/os/UserBatteryConsumer;

    invoke-virtual {p0}, Landroid/os/UserBatteryConsumer;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 448
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPowerComponentId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPowerComponentId()I
    .locals 0

    .line 307
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPowerComponentId:I

    return p0
.end method

.method getQuickNameIconForUid(I[Ljava/lang/String;Z)V
    .locals 3

    .line 313
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    .line 315
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->clearUidCache()V

    .line 316
    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    .line 319
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;

    .line 322
    iget-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    .line 323
    iget-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    .line 324
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 328
    array-length p2, p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 333
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 329
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromUid(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object p1

    .line 330
    iget-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 331
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    .line 337
    :goto_1
    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 338
    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestQueue:Ljava/util/ArrayList;

    monitor-enter p1

    .line 339
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public getTimeInBackgroundMs()J
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of v0, v0, Landroid/os/UidBatteryConsumer;

    if-eqz v0, :cond_0

    .line 497
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimeInForegroundMs()J
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of v0, v0, Landroid/os/UidBatteryConsumer;

    if-eqz v0, :cond_0

    .line 488
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    return-wide v0

    .line 490
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUsageDurationMs:J

    return-wide v0
.end method

.method public getUid()I
    .locals 0

    .line 482
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    return p0
.end method

.method public isAppEntry()Z
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    return p0
.end method

.method public isHidden()Z
    .locals 0

    .line 454
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIsHidden:Z

    return p0
.end method

.method public isUserEntry()Z
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UserBatteryConsumer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
