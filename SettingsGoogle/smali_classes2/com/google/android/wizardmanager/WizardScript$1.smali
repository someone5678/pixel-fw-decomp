.class Lcom/google/android/wizardmanager/WizardScript$1;
.super Ljava/lang/Object;
.source "WizardScript.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wizardmanager/WizardScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/wizardmanager/WizardScript;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/wizardmanager/WizardScript;
    .locals 3

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    sget-object v2, Lcom/google/android/wizardmanager/WizardAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 181
    new-instance p1, Lcom/google/android/wizardmanager/WizardScript;

    invoke-direct {p1, p0, v1, v0}, Lcom/google/android/wizardmanager/WizardScript;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/wizardmanager/WizardScript$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/wizardmanager/WizardScript;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/wizardmanager/WizardScript;
    .locals 0

    .line 186
    new-array p0, p1, [Lcom/google/android/wizardmanager/WizardScript;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/wizardmanager/WizardScript$1;->newArray(I)[Lcom/google/android/wizardmanager/WizardScript;

    move-result-object p0

    return-object p0
.end method
