.class public Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;
.super Ljava/lang/Object;
.source "MultiBiometricEnrollHelper.java"


# instance fields
.field private final mActivity:Landroidx/fragment/app/FragmentActivity;

.field private final mFaceEnrollIntroductionIntent:Landroid/content/Intent;

.field private final mFaceManager:Landroid/hardware/face/FaceManager;

.field private final mFingerprintEnrollIntroductionIntent:Landroid/content/Intent;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGatekeeperHatSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mGkPwHandle:J

.field private final mRequestEnrollFace:Z

.field private final mRequestEnrollFingerprint:Z

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$4g20LupY6RqcwM0iF4DifZJlyg0(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->lambda$launchFaceEnroll$1(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$W2jfpoIsjQ_8djBU0AyYjLIaOIE(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->lambda$launchFingerprintEnroll$2(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydVPSl7yMegl66AJ3KEBcHDaCwo(Landroidx/fragment/app/FragmentActivity;JILjava/lang/Long;)[B
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->lambda$new$0(Landroidx/fragment/app/FragmentActivity;JILjava/lang/Long;)[B

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;IZZJ)V
    .locals 12

    move-object v1, p1

    .line 77
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 78
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/hardware/fingerprint/FingerprintManager;

    const-class v0, Landroid/hardware/face/FaceManager;

    .line 79
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/hardware/face/FaceManager;

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFaceIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    new-instance v11, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;

    move v2, p2

    move-wide/from16 v5, p5

    invoke-direct {v11, p1, v5, v6, p2}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentActivity;JI)V

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    .line 77
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;-><init>(Landroidx/fragment/app/FragmentActivity;IZZJLandroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/content/Intent;Landroid/content/Intent;Ljava/util/function/Function;)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;IZZJLandroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/content/Intent;Landroid/content/Intent;Ljava/util/function/Function;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "IZZJ",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/hardware/face/FaceManager;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Long;",
            "[B>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 64
    iput p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    .line 65
    iput-wide p5, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    .line 66
    iput-boolean p3, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFace:Z

    .line 67
    iput-boolean p4, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFingerprint:Z

    .line 68
    iput-object p7, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 69
    iput-object p8, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 70
    iput-object p9, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFingerprintEnrollIntroductionIntent:Landroid/content/Intent;

    .line 71
    iput-object p10, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFaceEnrollIntroductionIntent:Landroid/content/Intent;

    .line 72
    iput-object p11, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGatekeeperHatSupplier:Ljava/util/function/Function;

    return-void
.end method

.method private synthetic lambda$launchFaceEnroll$1(IIJ)V
    .locals 6

    .line 99
    iget-object p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGatekeeperHatSupplier:Ljava/util/function/Function;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, [B

    .line 100
    iget-object p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFaceEnrollIntroductionIntent:Landroid/content/Intent;

    const-string/jumbo v0, "sensor_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFaceEnrollIntroductionIntent:Landroid/content/Intent;

    const-string p2, "challenge"

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFaceEnrollIntroductionIntent:Landroid/content/Intent;

    iget-wide p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    const/16 v2, 0xbb8

    .line 104
    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private synthetic lambda$launchFingerprintEnroll$2(IIJ)V
    .locals 6

    .line 111
    iget-object p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGatekeeperHatSupplier:Ljava/util/function/Function;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, [B

    .line 112
    iget-object p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFingerprintEnrollIntroductionIntent:Landroid/content/Intent;

    const-string/jumbo v0, "sensor_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFingerprintEnrollIntroductionIntent:Landroid/content/Intent;

    const-string p2, "challenge"

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    iget-boolean p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFace:Z

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFaceEnrollIntroductionIntent:Landroid/content/Intent;

    iget p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    const-string p3, "android.intent.extra.USER_ID"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFaceEnrollIntroductionIntent:Landroid/content/Intent;

    iget-wide p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    const-string p4, "gk_pw_handle"

    invoke-virtual {p1, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 123
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFaceEnrollIntroductionIntent:Landroid/content/Intent;

    const/high16 p4, 0xc000000

    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFingerprintEnrollIntroductionIntent:Landroid/content/Intent;

    const-string p3, "enroll_after_finger"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFingerprintEnrollIntroductionIntent:Landroid/content/Intent;

    const/16 v2, 0xbb9

    iget-wide p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    .line 130
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroidx/fragment/app/FragmentActivity;JILjava/lang/Long;)[B
    .locals 6

    .line 83
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 82
    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p0

    return-object p0
.end method

.method private launchFaceEnroll()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    new-instance v2, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return-void
.end method

.method private launchFingerprintEnroll()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    new-instance v2, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    return-void
.end method


# virtual methods
.method startNextStep()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFingerprint:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->launchFingerprintEnroll()V

    goto :goto_0

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFace:Z

    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->launchFaceEnroll()V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
