.class public final synthetic Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentActivity;

    iput-wide p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentActivity;

    iget-wide v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;->f$1:J

    iget p0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->$r8$lambda$ydVPSl7yMegl66AJ3KEBcHDaCwo(Landroidx/fragment/app/FragmentActivity;JILjava/lang/Long;)[B

    move-result-object p0

    return-object p0
.end method
