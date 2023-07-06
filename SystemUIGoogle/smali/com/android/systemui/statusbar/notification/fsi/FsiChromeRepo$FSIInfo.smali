.class public final Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;
.super Ljava/lang/Object;
.source "FsiChromeRepo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FSIInfo"
.end annotation


# instance fields
.field public final appIcon:Landroid/graphics/drawable/Drawable;

.field public final appName:Ljava/lang/String;

.field public final fullscreenIntent:Landroid/app/PendingIntent;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->appName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->appName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->fullscreenIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->fullscreenIntent:Landroid/app/PendingIntent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->fullscreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->appName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/fsi/FsiChromeRepo$FSIInfo;->fullscreenIntent:Landroid/app/PendingIntent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FSIInfo(appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appIcon="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fullscreenIntent="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
