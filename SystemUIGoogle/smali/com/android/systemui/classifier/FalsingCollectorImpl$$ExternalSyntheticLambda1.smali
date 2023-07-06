.class public final synthetic Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/shade/ShadeQsExpansionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    return-void
.end method


# virtual methods
.method public final onQsExpansionChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onQsExpansionChanged(Ljava/lang/Boolean;)V

    return-void
.end method
