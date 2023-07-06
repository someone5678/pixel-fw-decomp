.class public Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FaceSettingsEnrollButtonPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;
    }
.end annotation


# static fields
.field static final KEY:Ljava/lang/String; = "security_settings_face_enroll_faces_container"

.field private static final TAG:Ljava/lang/String; = "FaceSettings/Remove"


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mIsClicked:Z

.field private mListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "security_settings_face_enroll_faces_container"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isClicked()Z
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mIsClicked:Z

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mIsClicked:Z

    return v0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mIsClicked:Z

    .line 81
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 82
    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;->onStartEnrolling(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public setActivity(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public setListener(Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

    return-void
.end method

.method public setToken([B)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mToken:[B

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mUserId:I

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 68
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0d0549

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mButton:Landroid/widget/Button;

    .line 71
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mButton:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/google/android/setupdesign/util/ButtonStyler;->applyPartnerCustomizationPrimaryButtonStyle(Landroid/content/Context;Landroid/widget/Button;)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method