.class public Lcom/google/android/wizardmanager/WizardScript;
.super Ljava/lang/Object;
.source "WizardScript.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/wizardmanager/WizardScript;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/wizardmanager/WizardAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/wizardmanager/WizardAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mFirstActionIndex:I

.field private final mScriptUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/google/android/wizardmanager/WizardScript$1;

    invoke-direct {v0}, Lcom/google/android/wizardmanager/WizardScript$1;-><init>()V

    sput-object v0, Lcom/google/android/wizardmanager/WizardScript;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/wizardmanager/WizardAction;",
            ">;I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/wizardmanager/WizardScript;->mScriptUri:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/google/android/wizardmanager/WizardScript;->mFirstActionIndex:I

    .line 54
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/wizardmanager/WizardScript;->mActionList:Ljava/util/List;

    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 57
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/wizardmanager/WizardAction;

    .line 58
    invoke-virtual {p3}, Lcom/google/android/wizardmanager/WizardAction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/wizardmanager/WizardScript;->mActions:Ljava/util/Map;

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

    .line 145
    instance-of v0, p1, Lcom/google/android/wizardmanager/WizardScript;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/google/android/wizardmanager/WizardScript;

    .line 147
    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardScript;->mScriptUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/wizardmanager/WizardScript;->mScriptUri:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/wizardmanager/WizardScript;->mFirstActionIndex:I

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/google/android/wizardmanager/WizardScript;->mFirstActionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/wizardmanager/WizardScript;->mActions:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/wizardmanager/WizardScript;->mActions:Ljava/util/Map;

    .line 149
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardScript;->mActionList:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/wizardmanager/WizardScript;->mActionList:Ljava/util/List;

    .line 150
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAllActions()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/wizardmanager/WizardAction;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardScript;->mActions:Ljava/util/Map;

    return-object p0
.end method

.method public getScriptUri()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardScript;->mScriptUri:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/google/android/wizardmanager/WizardScript;->mScriptUri:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/wizardmanager/WizardScript;->mFirstActionIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardScript;->mActionList:Ljava/util/List;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 167
    iget-object p2, p0, Lcom/google/android/wizardmanager/WizardScript;->mScriptUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget p2, p0, Lcom/google/android/wizardmanager/WizardScript;->mFirstActionIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object p0, p0, Lcom/google/android/wizardmanager/WizardScript;->mActionList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
