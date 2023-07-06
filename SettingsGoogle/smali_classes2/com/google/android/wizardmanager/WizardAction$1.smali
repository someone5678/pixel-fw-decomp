.class Lcom/google/android/wizardmanager/WizardAction$1;
.super Ljava/lang/Object;
.source "WizardAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wizardmanager/WizardAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/wizardmanager/WizardAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/wizardmanager/WizardAction;
    .locals 6

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 174
    const-class p0, Lcom/google/android/wizardmanager/WizardBranchArray;

    .line 175
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/google/android/wizardmanager/WizardBranchArray;

    .line 176
    new-instance p0, Lcom/google/android/wizardmanager/WizardAction;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/wizardmanager/WizardAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/wizardmanager/WizardBranchArray;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/wizardmanager/WizardAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/wizardmanager/WizardAction;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/wizardmanager/WizardAction;
    .locals 0

    .line 181
    new-array p0, p1, [Lcom/google/android/wizardmanager/WizardAction;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/wizardmanager/WizardAction$1;->newArray(I)[Lcom/google/android/wizardmanager/WizardAction;

    move-result-object p0

    return-object p0
.end method
