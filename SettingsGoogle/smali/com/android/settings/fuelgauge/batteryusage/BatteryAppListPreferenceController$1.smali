.class Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$1;
.super Ljava/lang/Object;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldShowBatteryAttributionList(Landroid/content/Context;)Z
    .locals 3

    .line 111
    new-instance p0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "screen.full.display"

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide p0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    cmpl-double v1, p0, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldShowBatteryAttributionList(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryAppListPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method
