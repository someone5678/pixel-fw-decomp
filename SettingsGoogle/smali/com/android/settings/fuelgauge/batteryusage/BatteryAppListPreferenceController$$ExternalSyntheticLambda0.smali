.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    check-cast p1, Landroid/os/UidBatteryConsumer;

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->$r8$lambda$x_MfXWqGCPtZLykM4ChjuDNU2D8(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;Landroid/os/UidBatteryConsumer;)I

    move-result p0

    return p0
.end method
