.class public Lcom/google/android/wizardmanager/WizardStack;
.super Ljava/lang/Object;
.source "WizardStack.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/wizardmanager/WizardStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/wizardmanager/WizardAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/google/android/wizardmanager/WizardStack$1;

    invoke-direct {v0}, Lcom/google/android/wizardmanager/WizardStack$1;-><init>()V

    sput-object v0, Lcom/google/android/wizardmanager/WizardStack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/wizardmanager/WizardStack;->mStack:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/wizardmanager/WizardStack;->mStack:Ljava/util/List;

    .line 58
    sget-object p0, Lcom/google/android/wizardmanager/WizardAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, p0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 94
    instance-of v0, p1, Lcom/google/android/wizardmanager/WizardStack;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardStack;->mStack:Ljava/util/List;

    check-cast p1, Lcom/google/android/wizardmanager/WizardStack;

    iget-object p1, p1, Lcom/google/android/wizardmanager/WizardStack;->mStack:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardStack;->mStack:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardStack;->mStack:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardStack;->mStack:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
