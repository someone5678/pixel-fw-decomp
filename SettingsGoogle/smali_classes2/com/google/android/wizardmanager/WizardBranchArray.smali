.class public Lcom/google/android/wizardmanager/WizardBranchArray;
.super Landroid/util/SparseArray;
.source "WizardBranchArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/wizardmanager/WizardBranchArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultActionId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputmDefaultActionId(Lcom/google/android/wizardmanager/WizardBranchArray;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/wizardmanager/WizardBranchArray;->mDefaultActionId:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/google/android/wizardmanager/WizardBranchArray$1;

    invoke-direct {v0}, Lcom/google/android/wizardmanager/WizardBranchArray$1;-><init>()V

    sput-object v0, Lcom/google/android/wizardmanager/WizardBranchArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 46
    instance-of v0, p1, Lcom/google/android/wizardmanager/WizardBranchArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 47
    check-cast p1, Lcom/google/android/wizardmanager/WizardBranchArray;

    .line 48
    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardBranchArray;->mDefaultActionId:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 49
    iget-object v3, p1, Lcom/google/android/wizardmanager/WizardBranchArray;->mDefaultActionId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/wizardmanager/WizardBranchArray;->mDefaultActionId:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    return v1

    .line 53
    :cond_2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    move v0, v1

    .line 54
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 55
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 56
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    if-nez v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method public getActionId(I)Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardBranchArray;->mDefaultActionId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardBranchArray;->mDefaultActionId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v2, v1

    .line 72
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 73
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    if-eqz v3, :cond_1

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardBranchArray;->mDefaultActionId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 92
    iget-object p2, p0, Lcom/google/android/wizardmanager/WizardBranchArray;->mDefaultActionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    return-void
.end method
