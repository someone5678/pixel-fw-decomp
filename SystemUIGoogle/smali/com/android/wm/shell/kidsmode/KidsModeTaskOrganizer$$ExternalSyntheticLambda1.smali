.class public final synthetic Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->dump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
