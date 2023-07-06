.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
.super Ljava/lang/Object;
.source "BatteryDiffData.java"


# instance fields
.field private final mAppEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OXjrhcoL1EkYxUw4tVVSTwVRM0Q(DLcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->lambda$setTotalConsumePowerForAllEntries$0(DLcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dcYZ0Azbg-f4n2HHwFNDjDEEGP4(DLcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->lambda$setTotalConsumePowerForAllEntries$1(DLcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->sortEntries()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;D)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    .line 45
    invoke-direct {p0, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->setTotalConsumePowerForAllEntries(D)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->sortEntries()V

    return-void
.end method

.method private static synthetic lambda$setTotalConsumePowerForAllEntries$0(DLcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 59
    invoke-virtual {p2, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    return-void
.end method

.method private static synthetic lambda$setTotalConsumePowerForAllEntries$1(DLcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 60
    invoke-virtual {p2, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    return-void
.end method

.method private setTotalConsumePowerForAllEntries(D)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData$$ExternalSyntheticLambda0;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 60
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData$$ExternalSyntheticLambda1;-><init>(D)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private sortEntries()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getAppDiffEntryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    return-object p0
.end method

.method public getSystemDiffEntryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    return-object p0
.end method
