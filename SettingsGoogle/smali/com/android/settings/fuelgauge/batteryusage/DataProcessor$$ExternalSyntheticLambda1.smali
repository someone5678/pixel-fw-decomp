.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:[J


# direct methods
.method public synthetic constructor <init>(J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda1;->f$0:J

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda1;->f$1:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda1;->f$0:J

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda1;->f$1:[J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->$r8$lambda$AU1oLKiJCi_Boig7AYy9hepddr8(J[JLjava/lang/Long;)V

    return-void
.end method
