.class public interface abstract Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient;
.super Ljava/lang/Object;
.source "CustomizationProviderClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;
    }
.end annotation


# virtual methods
.method public abstract deleteAllSelections(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract insertSelection(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract observeSelections()Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeSelections$$inlined$map$1;
.end method
