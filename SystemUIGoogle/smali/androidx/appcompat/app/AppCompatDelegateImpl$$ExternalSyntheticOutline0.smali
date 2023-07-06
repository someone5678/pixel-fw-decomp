.class public final synthetic Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(ILjavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/systemui/screenshot/ImageTileSet_Factory;

    .line 5
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ImageTileSet_Factory;-><init>(ILjava/lang/Object;)V

    .line 6
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p0

    return-object p0
.end method
