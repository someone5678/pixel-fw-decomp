.class public interface abstract Lcom/android/systemui/controls/panels/SelectedComponentRepository;
.super Ljava/lang/Object;
.source "SelectedComponentRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;
    }
.end annotation


# virtual methods
.method public abstract getSelectedComponent()Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;
.end method

.method public abstract removeSelectedComponent()V
.end method

.method public abstract setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V
.end method

.method public abstract setShouldAddDefaultComponent()V
.end method

.method public abstract shouldAddDefaultComponent()Z
.end method
