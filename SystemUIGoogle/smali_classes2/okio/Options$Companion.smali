.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "Options.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 -Util.kt\nokio/-Util\n*L\n1#1,236:1\n11335#2:237\n11670#2,3:238\n13608#2,3:243\n37#3,2:241\n1#4:246\n74#5:247\n74#5:248\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n43#1:237\n43#1:238,3\n44#1:243,3\n43#1:241,2\n151#1:247\n208#1:248\n*E\n"
.end annotation


# direct methods
.method public static buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 21

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p4

    move/from16 v2, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    if-ge v2, v11, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, "Failed requirement."

    if-eqz v5, :cond_15

    move v5, v2

    :goto_1
    if-ge v5, v11, :cond_3

    .line 1
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    .line 2
    invoke-virtual {v7}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v7

    if-lt v7, v1, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_3
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    add-int/lit8 v6, v11, -0x1

    .line 5
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    .line 6
    invoke-virtual {v5}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v7

    if-ne v1, v7, :cond_4

    .line 7
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    move-object/from16 v20, v7

    move v7, v2

    move v2, v5

    move-object/from16 v5, v20

    goto :goto_3

    :cond_4
    move v7, v2

    const/4 v2, -0x1

    .line 9
    :goto_3
    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v8

    invoke-virtual {v6, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v9

    const/4 v3, 0x2

    if-eq v8, v9, :cond_e

    add-int/lit8 v5, v7, 0x1

    const/4 v4, 0x1

    :goto_4
    if-ge v5, v11, :cond_6

    add-int/lit8 v6, v5, -0x1

    .line 10
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    .line 11
    invoke-virtual {v6, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v6

    .line 12
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokio/ByteString;

    .line 13
    invoke-virtual {v8, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v8

    if-eq v6, v8, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 14
    :cond_6
    iget-wide v5, v0, Lokio/Buffer;->size:J

    const/4 v8, 0x4

    int-to-long v8, v8

    .line 15
    div-long/2addr v5, v8

    add-long v5, v5, p0

    int-to-long v13, v3

    add-long/2addr v5, v13

    mul-int/lit8 v3, v4, 0x2

    int-to-long v13, v3

    add-long/2addr v13, v5

    .line 16
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    .line 17
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    move v2, v7

    :goto_5
    if-ge v2, v11, :cond_9

    .line 18
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    .line 19
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v3

    if-eq v2, v7, :cond_7

    add-int/lit8 v4, v2, -0x1

    .line 20
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    .line 21
    invoke-virtual {v4, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v4

    if-eq v3, v4, :cond_8

    :cond_7
    and-int/lit16 v3, v3, 0xff

    .line 22
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 23
    :cond_9
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    :goto_6
    if-ge v7, v11, :cond_d

    .line 24
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    .line 25
    invoke-virtual {v2, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    move v4, v3

    :goto_7
    if-ge v4, v11, :cond_b

    .line 26
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    .line 27
    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v5

    if-eq v2, v5, :cond_a

    move v5, v4

    goto :goto_8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    move v5, v11

    :goto_8
    if-ne v3, v5, :cond_c

    add-int/lit8 v2, v1, 0x1

    .line 28
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    .line 29
    invoke-virtual {v3}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 30
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    move/from16 v17, v5

    move-object v15, v6

    move-wide/from16 v18, v8

    goto :goto_9

    .line 31
    :cond_c
    iget-wide v2, v6, Lokio/Buffer;->size:J

    .line 32
    div-long/2addr v2, v8

    add-long/2addr v2, v13

    long-to-int v2, v2

    const/4 v3, -0x1

    mul-int/2addr v2, v3

    .line 33
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int/lit8 v16, v1, 0x1

    move-wide v2, v13

    move-object v4, v6

    move/from16 v17, v5

    move/from16 v5, v16

    move-object v15, v6

    move-object/from16 v6, p4

    move-wide/from16 v18, v8

    move/from16 v8, v17

    move-object/from16 v9, p7

    .line 34
    invoke-static/range {v2 .. v9}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    :goto_9
    move-object v6, v15

    move/from16 v7, v17

    move-wide/from16 v8, v18

    goto :goto_6

    :cond_d
    move-object v15, v6

    :goto_a
    const-wide/16 v1, 0x2000

    .line 35
    invoke-virtual {v15, v0, v1, v2}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v1, -0x1

    cmp-long v3, v3, v1

    if-eqz v3, :cond_14

    goto :goto_a

    .line 36
    :cond_e
    invoke-virtual {v5}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v8

    invoke-virtual {v6}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v9

    .line 37
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v1

    const/4 v13, 0x0

    :goto_b
    if-ge v9, v8, :cond_f

    .line 38
    invoke-virtual {v5, v9}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v14

    invoke-virtual {v6, v9}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v15

    if-ne v14, v15, :cond_f

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 39
    :cond_f
    iget-wide v8, v0, Lokio/Buffer;->size:J

    const/4 v6, 0x4

    int-to-long v14, v6

    .line 40
    div-long/2addr v8, v14

    add-long v8, v8, p0

    move-object v6, v5

    int-to-long v4, v3

    add-long/2addr v8, v4

    int-to-long v3, v13

    add-long/2addr v8, v3

    const-wide/16 v3, 0x1

    add-long/2addr v3, v8

    neg-int v5, v13

    .line 41
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)V

    .line 42
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int v5, v1, v13

    :goto_c
    if-ge v1, v5, :cond_10

    .line 43
    invoke-virtual {v6, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 44
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_10
    add-int/lit8 v1, v7, 0x1

    if-ne v1, v11, :cond_13

    .line 45
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    .line 46
    invoke-virtual {v1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    if-ne v5, v1, :cond_11

    const/4 v3, 0x1

    goto :goto_d

    :cond_11
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_12

    .line 47
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    goto :goto_f

    .line 48
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_13
    new-instance v9, Lokio/Buffer;

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    .line 50
    iget-wide v1, v9, Lokio/Buffer;->size:J

    .line 51
    div-long/2addr v1, v14

    add-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, -0x1

    mul-int/2addr v1, v2

    .line 52
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    move-wide v1, v3

    move-object v3, v9

    move v4, v5

    move-object/from16 v5, p4

    move v6, v7

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 53
    invoke-static/range {v1 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    const-wide/16 v1, 0x2000

    .line 54
    :goto_e
    invoke-virtual {v9, v0, v1, v2}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_14

    goto :goto_e

    :cond_14
    :goto_f
    return-void

    .line 55
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
