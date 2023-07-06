.class public Lcom/google/android/libraries/hats20/model/QuestionRating;
.super Lcom/google/android/libraries/hats20/model/Question;
.source "QuestionRating.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/hats20/model/QuestionRating;",
            ">;"
        }
    .end annotation
.end field

.field public static final READONLY_SURVEY_RATING_ICON_RESOURCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final highValueText:Ljava/lang/String;

.field private final lowValueText:Ljava/lang/String;

.field private final numIcons:I

.field private final sprite:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/hats20/R$drawable;->hats_smiley_1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/hats20/R$drawable;->hats_smiley_2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/hats20/R$drawable;->hats_smiley_3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/hats20/R$drawable;->hats_smiley_4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/hats20/R$drawable;->hats_smiley_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/hats20/model/QuestionRating;->READONLY_SURVEY_RATING_ICON_RESOURCE_MAP:Ljava/util/Map;

    .line 113
    new-instance v0, Lcom/google/android/libraries/hats20/model/QuestionRating$1;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/model/QuestionRating$1;-><init>()V

    sput-object v0, Lcom/google/android/libraries/hats20/model/QuestionRating;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/model/Question;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->lowValueText:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->highValueText:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->numIcons:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/Question;->questionText:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->sprite:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/libraries/hats20/model/QuestionRating$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/model/QuestionRating;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHighValueText()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->highValueText:Ljava/lang/String;

    return-object p0
.end method

.method public getLowValueText()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->lowValueText:Ljava/lang/String;

    return-object p0
.end method

.method public getNumIcons()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->numIcons:I

    return p0
.end method

.method public getSprite()Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->sprite:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/Question;->questionText:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->lowValueText:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->highValueText:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->numIcons:I

    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->sprite:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x61

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "QuestionRating{questionText=\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", lowValueText=\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", highValueText=\'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", numIcons="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sprite="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 97
    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->lowValueText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->highValueText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget p2, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->numIcons:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/Question;->questionText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/QuestionRating;->sprite:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
