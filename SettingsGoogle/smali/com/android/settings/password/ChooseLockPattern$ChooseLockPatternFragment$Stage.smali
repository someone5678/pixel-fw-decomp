.class public final enum Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final messageForBiometrics:I

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 369
    new-instance v9, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v10, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v11, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f040caf

    const v4, 0x7f040cca

    const/4 v7, -0x1

    const/4 v8, 0x1

    move-object v0, v9

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v9, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 374
    new-instance v12, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f040d20

    const v4, 0x7f040d20

    const/4 v8, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v12, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 378
    new-instance v13, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v14, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f040d10

    const v4, 0x7f040d10

    const/4 v8, 0x1

    move-object v0, v13

    move-object v5, v14

    move-object v6, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v13, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 383
    new-instance v11, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f040d0f

    const v4, 0x7f040d0f

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v11, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 387
    new-instance v14, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v15, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f040d0c

    const v4, 0x7f040d0c

    const/4 v8, 0x1

    move-object v0, v14

    move-object v5, v10

    move-object v6, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v14, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 391
    new-instance v16, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f040d0d

    const v4, 0x7f040d0d

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v16, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 396
    new-instance v15, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f040d0e

    const v4, 0x7f040d0e

    const/4 v8, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v15, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    aput-object v12, v0, v1

    const/4 v1, 0x2

    aput-object v13, v0, v1

    const/4 v1, 0x3

    aput-object v11, v0, v1

    const/4 v1, 0x4

    aput-object v14, v0, v1

    const/4 v1, 0x5

    aput-object v16, v0, v1

    const/4 v1, 0x6

    aput-object v15, v0, v1

    .line 367
    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .line 414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 415
    iput p4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 416
    iput p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->messageForBiometrics:I

    .line 417
    iput-object p5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 418
    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 419
    iput p7, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 420
    iput-boolean p8, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .line 367
    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .line 367
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
