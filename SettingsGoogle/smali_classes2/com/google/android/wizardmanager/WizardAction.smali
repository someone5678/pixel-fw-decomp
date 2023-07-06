.class public Lcom/google/android/wizardmanager/WizardAction;
.super Ljava/lang/Object;
.source "WizardAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/wizardmanager/WizardAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBranches:Lcom/google/android/wizardmanager/WizardBranchArray;

.field private final mId:Ljava/lang/String;

.field private final mIndex:I

.field private final mScriptUri:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/google/android/wizardmanager/WizardAction$1;

    invoke-direct {v0}, Lcom/google/android/wizardmanager/WizardAction$1;-><init>()V

    sput-object v0, Lcom/google/android/wizardmanager/WizardAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/wizardmanager/WizardBranchArray;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/wizardmanager/WizardAction;->mScriptUri:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/google/android/wizardmanager/WizardAction;->mIndex:I

    .line 69
    iput-object p3, p0, Lcom/google/android/wizardmanager/WizardAction;->mId:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/google/android/wizardmanager/WizardAction;->mUri:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/google/android/wizardmanager/WizardAction;->mBranches:Lcom/google/android/wizardmanager/WizardBranchArray;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 119
    instance-of v0, p1, Lcom/google/android/wizardmanager/WizardAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcom/google/android/wizardmanager/WizardAction;

    .line 121
    iget v0, p0, Lcom/google/android/wizardmanager/WizardAction;->mIndex:I

    iget v2, p1, Lcom/google/android/wizardmanager/WizardAction;->mIndex:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardAction;->mId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/wizardmanager/WizardAction;->mId:Ljava/lang/String;

    .line 122
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardAction;->mUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/wizardmanager/WizardAction;->mUri:Ljava/lang/String;

    .line 123
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardAction;->mBranches:Lcom/google/android/wizardmanager/WizardBranchArray;

    iget-object v2, p1, Lcom/google/android/wizardmanager/WizardAction;->mBranches:Lcom/google/android/wizardmanager/WizardBranchArray;

    .line 124
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardAction;->mScriptUri:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/wizardmanager/WizardAction;->mScriptUri:Ljava/lang/String;

    .line 125
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getBranches()Lcom/google/android/wizardmanager/WizardBranchArray;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardAction;->mBranches:Lcom/google/android/wizardmanager/WizardBranchArray;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardAction;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getNextActionId(I)Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardAction;->mBranches:Lcom/google/android/wizardmanager/WizardBranchArray;

    invoke-virtual {p0, p1}, Lcom/google/android/wizardmanager/WizardBranchArray;->getActionId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/google/android/wizardmanager/WizardAction;->mScriptUri:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/wizardmanager/WizardAction;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/wizardmanager/WizardAction;->mId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/wizardmanager/WizardAction;->mUri:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardAction;->mBranches:Lcom/google/android/wizardmanager/WizardBranchArray;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WizardAction{mScriptUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/wizardmanager/WizardAction;->mScriptUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/wizardmanager/WizardAction;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/wizardmanager/WizardAction;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/wizardmanager/WizardAction;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mBranches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardAction;->mBranches:Lcom/google/android/wizardmanager/WizardBranchArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardAction;->mScriptUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/google/android/wizardmanager/WizardAction;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardAction;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardAction;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardAction;->mBranches:Lcom/google/android/wizardmanager/WizardBranchArray;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
