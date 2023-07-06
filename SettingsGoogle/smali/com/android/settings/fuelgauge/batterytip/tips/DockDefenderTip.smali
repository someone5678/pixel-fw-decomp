.class public Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "DockDefenderTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mMode:I


# direct methods
.method public static synthetic $r8$lambda$icbuJL5k0afmY4TUeprnx_8pQYE(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->lambda$updatePreference$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kvxIOYLRmidpowDxgB9-_TyhNpQ(Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;Landroid/content/Context;Landroidx/preference/Preference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->lambda$updatePreference$0(Landroid/content/Context;Landroidx/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    .line 44
    iput p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->mMode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private castToCardPreferenceSafely(Landroidx/preference/Preference;)Lcom/android/settings/widget/CardPreference;
    .locals 0

    .line 155
    instance-of p0, p1, Lcom/android/settings/widget/CardPreference;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/settings/widget/CardPreference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private synthetic lambda$updatePreference$0(Landroid/content/Context;Landroidx/preference/Preference;Landroid/view/View;)V
    .locals 1

    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->resumeCharging(Landroid/content/Context;)V

    const/4 p3, 0x2

    .line 124
    iput p3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->mMode:I

    .line 125
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "battery.dock.defender.bypass"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const/high16 v0, 0x50000000

    .line 127
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    .line 125
    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->updatePreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method private static synthetic lambda$updatePreference$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f040ad5

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 144
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private resumeCharging(Landroid/content/Context;)V
    .locals 1

    .line 160
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p0

    const/4 v0, 0x1

    .line 162
    invoke-interface {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getResumeChargeIntent(Z)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "send resume charging broadcast intent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DockDefenderTip"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .line 87
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->mMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f0201ff

    goto :goto_0

    :cond_0
    const p0, 0x7f0201f9

    :goto_0
    return p0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 72
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->mMode:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0x7f04041d

    .line 78
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p0, 0x7f040419

    .line 76
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f04041b

    .line 74
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 57
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->mMode:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0x7f04041e

    .line 63
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p0, 0x7f04041a

    .line 61
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f04041c

    .line 59
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    .line 101
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/16 v0, 0x70c

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public updatePreference(Landroidx/preference/Preference;)V
    .locals 5

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->updatePreference(Landroidx/preference/Preference;)V

    .line 108
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->castToCardPreferenceSafely(Landroidx/preference/Preference;)Lcom/android/settings/widget/CardPreference;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "DockDefenderTip"

    const-string p1, "cast Preference to CardPreference failed"

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 116
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 117
    iget v3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->mMode:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_2

    const/4 p0, 0x2

    if-eq v3, p0, :cond_1

    .line 137
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 134
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/CardPreference;->setPrimaryButtonVisible(Z)V

    goto :goto_0

    :cond_2
    const v2, 0x7f040415

    .line 121
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/CardPreference;->setPrimaryButtonText(Ljava/lang/String;)V

    .line 122
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;Landroid/content/Context;Landroidx/preference/Preference;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/CardPreference;->setPrimaryButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/CardPreference;->setPrimaryButtonVisible(Z)V

    :goto_0
    const p0, 0x7f040c26

    .line 141
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/CardPreference;->setSecondaryButtonText(Ljava/lang/String;)V

    .line 142
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/CardPreference;->setSecondaryButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/CardPreference;->setSecondaryButtonVisible(Z)V

    const p0, 0x7f040428

    .line 149
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/CardPreference;->setSecondaryButtonContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 1

    .line 93
    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    .line 94
    instance-of v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;

    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->mMode:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/DockDefenderTip;->mMode:I

    :cond_0
    return-void
.end method
