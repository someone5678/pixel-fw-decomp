.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:[Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda7;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda7;->f$1:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda7;->f$0:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda7;->f$1:[Ljava/lang/CharSequence;

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    invoke-static {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->$r8$lambda$pY4MeMhQ1deFIROo0zTt37laXX8(Ljava/util/Set;[Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;)V

    return-void
.end method
