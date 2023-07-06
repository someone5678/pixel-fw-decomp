.class Lcom/google/android/wizardmanager/WizardBranchArray$1;
.super Ljava/lang/Object;
.source "WizardBranchArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wizardmanager/WizardBranchArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/wizardmanager/WizardBranchArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/wizardmanager/WizardBranchArray;
    .locals 3

    .line 101
    new-instance p0, Lcom/google/android/wizardmanager/WizardBranchArray;

    invoke-direct {p0}, Lcom/google/android/wizardmanager/WizardBranchArray;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/wizardmanager/WizardBranchArray;->-$$Nest$fputmDefaultActionId(Lcom/google/android/wizardmanager/WizardBranchArray;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/wizardmanager/WizardBranchArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/wizardmanager/WizardBranchArray;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/wizardmanager/WizardBranchArray;
    .locals 0

    .line 112
    new-array p0, p1, [Lcom/google/android/wizardmanager/WizardBranchArray;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/wizardmanager/WizardBranchArray$1;->newArray(I)[Lcom/google/android/wizardmanager/WizardBranchArray;

    move-result-object p0

    return-object p0
.end method
