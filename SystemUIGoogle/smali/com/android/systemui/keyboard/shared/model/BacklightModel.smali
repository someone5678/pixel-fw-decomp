.class public final Lcom/android/systemui/keyboard/shared/model/BacklightModel;
.super Ljava/lang/Object;
.source "BacklightModel.kt"


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/keyboard/shared/model/BacklightModel;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/android/systemui/keyboard/shared/model/BacklightModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "BacklightModel(level=0, maxLevel=0)"

    return-object p0
.end method
