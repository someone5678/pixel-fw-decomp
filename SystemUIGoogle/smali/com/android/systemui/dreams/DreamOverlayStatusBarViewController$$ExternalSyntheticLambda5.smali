.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$StatusBarItem;

    invoke-interface {p1}, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$StatusBarItem;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
