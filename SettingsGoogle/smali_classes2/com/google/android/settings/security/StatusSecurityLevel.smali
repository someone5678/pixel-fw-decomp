.class final enum Lcom/google/android/settings/security/StatusSecurityLevel;
.super Ljava/lang/Enum;
.source "StatusSecurityLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/settings/security/StatusSecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/settings/security/StatusSecurityLevel;

.field public static final enum CRITICAL_WARNING:Lcom/google/android/settings/security/StatusSecurityLevel;

.field public static final enum INFORMATION_NO_ISSUES:Lcom/google/android/settings/security/StatusSecurityLevel;

.field public static final enum INFORMATION_REVIEW_ISSUES:Lcom/google/android/settings/security/StatusSecurityLevel;

.field public static final enum RECOMMENDATION:Lcom/google/android/settings/security/StatusSecurityLevel;

.field public static final enum STATUS_SECURITY_LEVEL_UNKNOWN:Lcom/google/android/settings/security/StatusSecurityLevel;


# instance fields
.field private final mImageResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 9
    new-instance v0, Lcom/google/android/settings/security/StatusSecurityLevel;

    const-string v1, "STATUS_SECURITY_LEVEL_UNKNOWN"

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/R$drawable;->security_status_info:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/settings/security/StatusSecurityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/settings/security/StatusSecurityLevel;->STATUS_SECURITY_LEVEL_UNKNOWN:Lcom/google/android/settings/security/StatusSecurityLevel;

    .line 10
    new-instance v1, Lcom/google/android/settings/security/StatusSecurityLevel;

    const-string v4, "INFORMATION_NO_ISSUES"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/settings/security/StatusSecurityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/settings/security/StatusSecurityLevel;->INFORMATION_NO_ISSUES:Lcom/google/android/settings/security/StatusSecurityLevel;

    .line 11
    new-instance v3, Lcom/google/android/settings/security/StatusSecurityLevel;

    const-string v4, "INFORMATION_REVIEW_ISSUES"

    const/4 v6, 0x2

    sget v7, Lcom/android/settings/R$drawable;->security_status_info_review:I

    invoke-direct {v3, v4, v6, v7}, Lcom/google/android/settings/security/StatusSecurityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/settings/security/StatusSecurityLevel;->INFORMATION_REVIEW_ISSUES:Lcom/google/android/settings/security/StatusSecurityLevel;

    .line 12
    new-instance v4, Lcom/google/android/settings/security/StatusSecurityLevel;

    const-string v7, "RECOMMENDATION"

    const/4 v8, 0x3

    sget v9, Lcom/android/settings/R$drawable;->security_status_recommendation:I

    invoke-direct {v4, v7, v8, v9}, Lcom/google/android/settings/security/StatusSecurityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/settings/security/StatusSecurityLevel;->RECOMMENDATION:Lcom/google/android/settings/security/StatusSecurityLevel;

    .line 13
    new-instance v7, Lcom/google/android/settings/security/StatusSecurityLevel;

    const-string v9, "CRITICAL_WARNING"

    const/4 v10, 0x4

    sget v11, Lcom/android/settings/R$drawable;->security_status_warn:I

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/settings/security/StatusSecurityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/settings/security/StatusSecurityLevel;->CRITICAL_WARNING:Lcom/google/android/settings/security/StatusSecurityLevel;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/settings/security/StatusSecurityLevel;

    aput-object v0, v9, v2

    aput-object v1, v9, v5

    aput-object v3, v9, v6

    aput-object v4, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/google/android/settings/security/StatusSecurityLevel;->$VALUES:[Lcom/google/android/settings/security/StatusSecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/google/android/settings/security/StatusSecurityLevel;->mImageResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/settings/security/StatusSecurityLevel;
    .locals 1

    .line 6
    const-class v0, Lcom/google/android/settings/security/StatusSecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/settings/security/StatusSecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/google/android/settings/security/StatusSecurityLevel;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/settings/security/StatusSecurityLevel;->$VALUES:[Lcom/google/android/settings/security/StatusSecurityLevel;

    invoke-virtual {v0}, [Lcom/google/android/settings/security/StatusSecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/settings/security/StatusSecurityLevel;

    return-object v0
.end method


# virtual methods
.method public getImageResId()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/android/settings/security/StatusSecurityLevel;->mImageResId:I

    return p0
.end method
