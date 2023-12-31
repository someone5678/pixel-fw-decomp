.class public Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;
.super Lcom/android/settingslib/widget/AppPreference;
.source "PowerGaugePreference.java"


# instance fields
.field private mBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mInfo:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

.field private mProgress:Ljava/lang/CharSequence;

.field private mShowAnomalyIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p3, :cond_0

    .line 62
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p1, 0x7f0601d1

    .line 64
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 65
    iput-object p5, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 66
    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mShowAnomalyIcon:Z

    return-void
.end method


# virtual methods
.method getBatteryDiffEntry()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    return-object p0
.end method

.method getInfo()Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    return-object p0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 123
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0d06da

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mShowAnomalyIcon:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f02042b

    .line 128
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const v0, 0x1020016

    .line 134
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 135
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setPercent(D)V
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-static {p1, p2, v0}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public shouldShowAnomalyIcon(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mShowAnomalyIcon:Z

    .line 101
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
