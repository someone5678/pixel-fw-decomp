.class public Lcom/android/settingslib/fuelgauge/BatteryStatus;
.super Ljava/lang/Object;
.source "BatteryStatus.java"


# instance fields
.field public final health:I

.field public final level:I

.field public final maxChargingWattage:I

.field public final plugged:I

.field public final present:Z

.field public final status:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const-string/jumbo v0, "plugged"

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const-string v0, "level"

    .line 69
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    const-string v0, "health"

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    const-string/jumbo v0, "present"

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    const-string v0, "max_charging_current"

    const/4 v1, -0x1

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "max_charging_voltage"

    .line 75
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_0

    const p1, 0x4c4b40

    :cond_0
    if-lez v0, :cond_1

    .line 83
    div-int/lit16 v0, v0, 0x3e8

    div-int/lit16 p1, p1, 0x3e8

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    goto :goto_0

    .line 86
    :cond_1
    iput v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    :goto_0
    return-void
.end method

.method public static isCharged(II)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 p0, 0x64

    if-lt p1, p0, :cond_0

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


# virtual methods
.method public final getChargingSpeed(Landroid/content/Context;)I
    .locals 2

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$integer;->config_chargingSlowlyThreshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settingslib/R$integer;->config_chargingFastThreshold:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 169
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    if-gtz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ge p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    if-le p0, p1, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isCharged()Z
    .locals 1

    .line 138
    iget v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-static {v0, p0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged(II)Z

    move-result p0

    return p0
.end method

.method public isPluggedInDock()Z
    .locals 1

    .line 127
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPluggedInWired()Z
    .locals 2

    .line 108
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryStatus{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",plugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",health="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",maxChargingWattage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
