.class public abstract Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BiometricsSettingsBase.java"


# static fields
.field static final CONFIRM_REQUEST:I = 0x7d1

.field static final RETRY_PREFERENCE_BUNDLE:Ljava/lang/String; = "retry_preference_bundle"

.field static final RETRY_PREFERENCE_KEY:Ljava/lang/String; = "retry_preference_key"


# instance fields
.field private mConfirmCredential:Z

.field private mDoNotFinishActivity:Z

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field protected mGkPwHandle:J

.field private mRetryPreferenceExtra:Landroid/os/Bundle;

.field private mRetryPreferenceKey:Ljava/lang/String;

.field protected mUserId:I


# direct methods
.method public static synthetic $r8$lambda$RAG0xb0qiBeWDP_yWE0f1-pXqkk(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroid/content/Context;Landroidx/preference/Preference;ZIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->lambda$onRetryPreferenceTreeClick$1(Landroid/content/Context;Landroidx/preference/Preference;ZIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lXh92g6u22GVt6iEGzS0Z5bd4FY(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroid/content/Context;Landroidx/preference/Preference;ZIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->lambda$onRetryPreferenceTreeClick$0(Landroid/content/Context;Landroidx/preference/Preference;ZIIJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    return-void
.end method

.method private getUseAnyBiometricSummary()Ljava/lang/String;
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 315
    :goto_0
    iget-object v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    .line 316
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 318
    :goto_1
    invoke-static {v0, v1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseBiometricSummaryRes(ZZ)I

    move-result v0

    if-nez v0, :cond_2

    const-string p0, ""

    goto :goto_2

    .line 319
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private static getUseBiometricSummaryRes(ZZ)I
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const p0, 0x7f040461

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const p0, 0x7f040463

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f040465

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private getUseClass2BiometricSummary()Ljava/lang/String;
    .locals 6

    .line 325
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 328
    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    if-eq v4, v3, :cond_1

    if-ne v4, v1, :cond_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 337
    :goto_0
    iget-object v4, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_5

    .line 339
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 340
    iget v5, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    if-eq v5, v3, :cond_4

    if-ne v5, v1, :cond_3

    :cond_4
    move v2, v3

    .line 348
    :cond_5
    invoke-static {v0, v2}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseBiometricSummaryRes(ZZ)I

    move-result v0

    if-nez v0, :cond_6

    const-string p0, ""

    goto :goto_1

    .line 349
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private synthetic lambda$onRetryPreferenceTreeClick$0(Landroid/content/Context;Landroidx/preference/Preference;ZIIJ)V
    .locals 7

    .line 148
    :try_start_0
    iget-wide v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    iget v4, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p1

    .line 150
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p5

    const-string v0, "hw_auth_token"

    .line 151
    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo p1, "sensor_id"

    .line 152
    invoke-virtual {p5, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "challenge"

    .line 153
    invoke-virtual {p5, p1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    invoke-super {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    .line 157
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    .line 158
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->launchChooseOrConfirmLock()V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "face generateChallenge fail"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$onRetryPreferenceTreeClick$1(Landroid/content/Context;Landroidx/preference/Preference;ZIIJ)V
    .locals 7

    .line 172
    :try_start_0
    iget-wide v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    iget v4, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    const-string p5, "hw_auth_token"

    .line 175
    invoke-virtual {p4, p5, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "challenge"

    .line 176
    invoke-virtual {p4, p1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 177
    invoke-super {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    .line 180
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    .line 181
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->launchChooseOrConfirmLock()V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "fingerprint generateChallenge fail"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    :goto_0
    return-void
.end method

.method private onRetryPreferenceTreeClick(Landroidx/preference/Preference;Z)Z
    .locals 5

    .line 139
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getFacePreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 145
    iput-boolean v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    new-instance v4, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroid/content/Context;Landroidx/preference/Preference;Z)V

    invoke-virtual {v0, v2, v4}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return v3

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getFingerprintPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iput-boolean v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    .line 170
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    new-instance v4, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroid/content/Context;Landroidx/preference/Preference;Z)V

    invoke-virtual {v0, v2, v4}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private retryPreferenceKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ".retryPreferenceKey, fail to find "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 215
    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, v0, p1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onRetryPreferenceTreeClick(Landroidx/preference/Preference;Z)Z

    return-void
.end method


# virtual methods
.method public abstract getFacePreferenceKey()Ljava/lang/String;
.end method

.method public abstract getFingerprintPreferenceKey()Ljava/lang/String;
.end method

.method public abstract getUnlockPhonePreferenceKey()Ljava/lang/String;
.end method

.method public abstract getUseInAppsPreferenceKey()Ljava/lang/String;
.end method

.method protected launchChooseOrConfirmLock()V
    .locals 4

    .line 283
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x7d1

    .line 285
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const v1, 0x7f041243

    .line 286
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 287
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 290
    iget v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    .line 291
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 293
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    .line 294
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "hide_insecure_options"

    .line 298
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "request_gk_pw_handle"

    .line 300
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "for_biometrics"

    .line 301
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "page_transition_type"

    .line 302
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    iget v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    if-eq v1, v3, :cond_1

    const-string v2, "android.intent.extra.USER_ID"

    .line 306
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const/16 v1, 0x7d2

    .line 308
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 236
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_5

    :cond_0
    const/4 p1, 0x0

    .line 238
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    .line 239
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Password not confirmed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    .line 241
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 242
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    .line 243
    iget-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f07003d

    const p3, 0x7f07003e

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 246
    iget-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->retryPreferenceKey(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Data null or GK PW missing."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    .line 257
    iput-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    :cond_5
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 80
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "confirm_credential"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    const-string v0, "do_not_finish_activity"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    const-string/jumbo v0, "retry_preference_key"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    const-string/jumbo v0, "retry_preference_bundle"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    const-string/jumbo v0, "request_gk_pw_handle"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    .line 105
    :cond_1
    iget-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->launchChooseOrConfirmLock()V

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUnlockPhonePreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 112
    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseAnyBiometricSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseInAppsPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 117
    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseClass2BiometricSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const/4 v0, 0x1

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onRetryPreferenceTreeClick(Landroidx/preference/Preference;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onResume()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 222
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    const-string v1, "confirm_credential"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    const-string v1, "do_not_finish_activity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    iget-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "request_gk_pw_handle"

    .line 226
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    const-string/jumbo v1, "retry_preference_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    const-string/jumbo v0, "retry_preference_bundle"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 131
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    invoke-static {v0, v1, v2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected requestGatekeeperHat(Landroid/content/Context;JIJ)[B
    .locals 0

    .line 198
    invoke-static/range {p1 .. p6}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p0

    return-object p0
.end method
