.class public Lcom/google/android/libraries/hats20/model/SurveyController;
.super Ljava/lang/Object;
.source "SurveyController.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/hats20/model/SurveyController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private answerUrl:Ljava/lang/String;

.field private promptMessage:Ljava/lang/String;

.field private promptParams:Ljava/lang/String;

.field private questions:[Lcom/google/android/libraries/hats20/model/Question;

.field private showInvitation:Z

.field private thankYouMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/google/android/libraries/hats20/model/SurveyController$1;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/model/SurveyController$1;-><init>()V

    sput-object v0, Lcom/google/android/libraries/hats20/model/SurveyController;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    new-array v1, v0, [Lcom/google/android/libraries/hats20/model/Question;

    iput-object v1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 297
    iget-object v1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    const-class v3, Lcom/google/android/libraries/hats20/model/Question;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/hats20/model/Question;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->thankYouMessage:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptParams:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->answerUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/libraries/hats20/model/SurveyController$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/model/SurveyController;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAnswerUrl()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->answerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getQuestions()[Lcom/google/android/libraries/hats20/model/Question;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    return-object p0
.end method

.method public getThankYouMessage()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->thankYouMessage:Ljava/lang/String;

    return-object p0
.end method

.method public shouldIncludeSurveyControls()Z
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/model/Question;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 74
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    aget-object p0, p0, v1

    check-cast p0, Lcom/google/android/libraries/hats20/model/QuestionRating;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getSprite()Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    move-result-object p0

    sget-object v0, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->SMILEYS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 280
    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 281
    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 283
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_0
    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->thankYouMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptParams:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->answerUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
