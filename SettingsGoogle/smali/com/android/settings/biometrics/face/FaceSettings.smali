.class public Lcom/android/settings/biometrics/face/FaceSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FaceSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAttentionController:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

.field private mChallenge:J

.field private mConfirmingPassword:Z

.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEnrollButton:Landroidx/preference/Preference;

.field private mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

.field private final mEnrollListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

.field private mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mLockscreenController:Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

.field private final mRemovalListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

.field private mRemoveButton:Landroidx/preference/Preference;

.field private mRemoveController:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

.field private mSensorId:I

.field private mTogglePreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:[B

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$4Exg0QFoH4mTasqOMuBl58JRxts(Lcom/android/settings/biometrics/face/FaceSettings;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->lambda$onCreate$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A7AeKc0lK2dNW4d7Q1it-j6gGTw(Lcom/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/face/FaceSettings;->lambda$onActivityResult$3(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TEoDiWzAgU6GzwUROT5ko2T2ca0(Lcom/android/settings/biometrics/face/FaceSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vq1FnFpoQWPXSz490WImkKmzj1s(Lcom/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettings;->lambda$new$1(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 328
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettings$1;

    const v1, 0x7f1600de

    invoke-direct {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/biometrics/face/FaceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/face/FaceSettings;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemovalListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

    .line 101
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/face/FaceSettings;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static isFaceHardwareDetected(Landroid/content/Context;)Z
    .locals 5

    .line 109
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p0

    const-string v0, "FaceSettings"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v2, "FaceManager is null"

    .line 112
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v2

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceManager is not null. Hardware detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mTogglePreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 93
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveButton:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 98
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollButton:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x5

    .line 102
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$3(Landroid/content/Intent;IIJ)V
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p3

    iget v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p3, p1, v0, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 257
    iput p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    .line 258
    iput-wide p4, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 260
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mAttentionController:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->setToken([B)V

    .line 261
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setToken([B)V

    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mConfirmingPassword:Z

    return-void
.end method

.method private synthetic lambda$onCreate$2()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f04128e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->isFaceHardwareDetected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 298
    :cond_0
    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mControllers:Ljava/util/List;

    .line 300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 301
    instance-of v1, v0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    if-eqz v1, :cond_2

    .line 302
    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mAttentionController:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    goto :goto_0

    .line 303
    :cond_2
    instance-of v1, v0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    if-eqz v1, :cond_3

    .line 304
    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveController:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    .line 305
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemovalListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->setListener(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveController:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    goto :goto_0

    .line 307
    :cond_3
    instance-of v1, v0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    if-eqz v1, :cond_1

    .line 308
    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    .line 309
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setListener(Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    goto :goto_0

    .line 314
    :cond_4
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040ad9

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FaceSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e7

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600de

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 244
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FaceSettings"

    const-string v1, "No credential"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 267
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettings;->isFaceHardwareDetected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "FaceSettings"

    const-string v0, "no faceManager, finish this"

    .line 147
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 152
    :cond_0
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserManager:Landroid/os/UserManager;

    .line 153
    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceManager;

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 154
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    const-string/jumbo v4, "sensor_id"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v3, 0x0

    const-string v5, "challenge"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 160
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "android.intent.extra.USER_ID"

    .line 159
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    .line 163
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 165
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/face/FaceSettings;)V

    const-string v5, "Settings.FACE_SETTINGS_FOR_WORK_TITLE"

    invoke-virtual {v3, v5, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    :cond_1
    invoke-static {v0}, Lcom/android/settings/Utils;->isMultipleBiometricsSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    const-class v0, Lcom/android/settings/biometrics/face/BiometricLockscreenBypassPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    goto :goto_0

    .line 172
    :cond_2
    const-class v0, Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mLockscreenController:Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    .line 173
    iget v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->setUserId(I)V

    const-string/jumbo v0, "security_settings_face_keyguard"

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string/jumbo v3, "security_settings_face_app"

    .line 176
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const-string/jumbo v4, "security_settings_face_require_attention"

    .line 177
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    const-string/jumbo v5, "security_settings_face_require_confirmation"

    .line 178
    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    .line 179
    iget-object v6, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mLockscreenController:Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    .line 180
    invoke-virtual {v6}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 181
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x5

    new-array v8, v8, [Landroidx/preference/Preference;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v3, v8, v1

    const/4 v1, 0x2

    aput-object v4, v8, v1

    const/4 v1, 0x3

    aput-object v5, v8, v1

    const/4 v1, 0x4

    aput-object v6, v8, v1

    .line 182
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mTogglePreferences:Ljava/util/List;

    const-string/jumbo v1, "security_settings_face_delete_faces_container"

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveButton:Landroidx/preference/Preference;

    const-string/jumbo v1, "security_settings_face_enroll_faces_container"

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollButton:Landroidx/preference/Preference;

    .line 188
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 189
    instance-of v4, v3, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;

    if-eqz v4, :cond_4

    .line 190
    check-cast v3, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;

    iget v4, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->setUserId(I)V

    goto :goto_1

    .line 191
    :cond_4
    instance-of v4, v3, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    if-eqz v4, :cond_3

    .line 192
    check-cast v3, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget v4, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setUserId(I)V

    goto :goto_1

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveController:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->setUserId(I)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 200
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mLockscreenController:Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_6
    if-eqz p1, :cond_7

    .line 204
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    :cond_7
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 210
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mConfirmingPassword:Z

    if-nez v1, :cond_0

    .line 213
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x4

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const v1, 0x7f04128d

    .line 216
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    .line 218
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    .line 223
    iput-boolean v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mConfirmingPassword:Z

    if-nez v0, :cond_1

    const-string v0, "FaceSettings"

    const-string v1, "Password not set"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mAttentionController:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->setToken([B)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setToken([B)V

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollButton:Landroidx/preference/Preference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveButton:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/biometrics/face/FaceFeatureProvider;->isAttentionSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "security_settings_face_require_attention"

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 275
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 277
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->isClicked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mConfirmingPassword:Z

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    iget v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-wide v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->revokeChallenge(IIJ)V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method
