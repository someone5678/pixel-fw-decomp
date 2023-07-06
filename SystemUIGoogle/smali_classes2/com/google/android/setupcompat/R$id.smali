.class public final Lcom/google/android/setupcompat/R$id;
.super Ljava/lang/Object;
.source "R.java"


# direct methods
.method public static final access$toLayoutGravity(II)I
    .locals 6

    const/16 v0, 0x50

    const/4 v1, 0x5

    const/16 v2, 0x30

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_0

    if-eqz p0, :cond_3

    if-eq p0, v5, :cond_6

    if-eq p0, v3, :cond_5

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v3, :cond_6

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_6

    if-eq p0, v5, :cond_5

    if-eq p0, v3, :cond_4

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_5

    if-eq p0, v5, :cond_4

    if-eq p0, v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_0
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_1
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v4

    :cond_6
    :goto_3
    return v0
.end method
