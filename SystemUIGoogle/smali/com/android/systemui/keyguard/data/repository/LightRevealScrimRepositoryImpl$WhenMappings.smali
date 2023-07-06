.class public final synthetic Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$WhenMappings;
.super Ljava/lang/Object;
.source "LightRevealScrimRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;->values()[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
