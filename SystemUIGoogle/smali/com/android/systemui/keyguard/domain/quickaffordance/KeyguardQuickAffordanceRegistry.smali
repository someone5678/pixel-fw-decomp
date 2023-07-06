.class public interface abstract Lcom/android/systemui/keyguard/domain/quickaffordance/KeyguardQuickAffordanceRegistry;
.super Ljava/lang/Object;
.source "KeyguardQuickAffordanceRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/String;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getAll(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
