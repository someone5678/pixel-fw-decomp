.class Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;
.super Ljava/lang/Thread;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameAndIconLoader"
.end annotation


# instance fields
.field private mAbort:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "BatteryUsage Icon Loader"

    .line 91
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;->mAbort:Z

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;->mAbort:Z

    return-void
.end method

.method public run()V
    .locals 9

    .line 102
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIconLoader;->mAbort:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->-$$Nest$fgetmContext(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Landroid/content/Context;

    move-result-object v2

    .line 113
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getUid()I

    move-result v3

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->-$$Nest$fgetmDefaultPackageName(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    .line 112
    invoke-static/range {v2 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->loadNameAndIcon(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    .line 118
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->-$$Nest$fputmDefaultPackageName(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    :goto_1
    :try_start_1
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    .line 105
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
