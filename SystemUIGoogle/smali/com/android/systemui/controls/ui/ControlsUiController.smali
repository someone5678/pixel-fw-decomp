.class public interface abstract Lcom/android/systemui/controls/ui/ControlsUiController;
.super Ljava/lang/Object;
.source "ControlsUiController.kt"


# virtual methods
.method public abstract getPreferredSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;)",
            "Lcom/android/systemui/controls/ui/SelectedItem;"
        }
    .end annotation
.end method

.method public abstract hide(Landroid/view/ViewGroup;)V
.end method

.method public abstract onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end method

.method public abstract onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSizeChange()V
.end method

.method public abstract resolveActivity()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;)V
.end method
