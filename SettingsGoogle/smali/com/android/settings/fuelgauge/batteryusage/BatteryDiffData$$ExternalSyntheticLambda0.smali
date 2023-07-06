.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:D


# direct methods
.method public synthetic constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData$$ExternalSyntheticLambda0;->f$0:D

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData$$ExternalSyntheticLambda0;->f$0:D

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-static {v0, v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->$r8$lambda$OXjrhcoL1EkYxUw4tVVSTwVRM0Q(DLcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method
