.class Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;
.super Ljava/util/TreeSet;
.source "ContextualCardLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 8

    .line 69
    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    const-class v3, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 70
    new-instance v4, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const/4 v5, 0x3

    const v6, 0x7f060097

    invoke-direct {v4, v5, v6, v3, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v4, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const v6, 0x7f060096

    invoke-direct {v4, v5, v6, v3, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v4, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    const-class v5, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;

    const/4 v6, 0x2

    const v7, 0x7f06011d

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const/4 v4, 0x1

    const v5, 0x7f0600a3

    invoke-direct {v0, v4, v5, v2, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const v5, 0x7f0600a4

    invoke-direct {v0, v4, v5, v2, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const v5, 0x7f0600a5

    invoke-direct {v0, v4, v5, v2, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    const/4 v2, 0x5

    const v4, 0x7f060095

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    const/4 v2, 0x4

    const v4, 0x7f060098

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method