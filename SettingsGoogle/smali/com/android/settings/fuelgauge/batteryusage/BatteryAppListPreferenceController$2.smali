.class Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$2;
.super Landroid/os/Handler;
.source "BatteryAppListPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 130
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 133
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->-$$Nest$fgetmUserManager(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->isAppEntry()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->setContentDescription(Ljava/lang/String;)V

    .line 148
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
