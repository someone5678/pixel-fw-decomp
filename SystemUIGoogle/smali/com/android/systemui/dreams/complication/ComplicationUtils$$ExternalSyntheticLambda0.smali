.class public final synthetic Lcom/android/systemui/dreams/complication/ComplicationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x80

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x40

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x20

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x10

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
