.class public Lcom/google/android/settings/aware/TapGestureDialogPreference;
.super Lcom/google/android/settings/aware/AwareGestureDialogPreference;
.source "TapGestureDialogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getDestination()Ljava/lang/String;
    .locals 0

    .line 35
    const-class p0, Lcom/google/android/settings/aware/TapGestureSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getDialogDisabledMessage()I
    .locals 0

    const p0, 0x7f040a36

    return p0
.end method

.method public getGestureDialogMessage()I
    .locals 0

    const p0, 0x7f040a38

    return p0
.end method

.method public getGestureDialogTitle()I
    .locals 0

    const p0, 0x7f040a39

    return p0
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method