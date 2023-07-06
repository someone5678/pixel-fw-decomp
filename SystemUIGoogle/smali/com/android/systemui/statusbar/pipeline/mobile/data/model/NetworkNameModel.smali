.class public interface abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;
.super Ljava/lang/Object;
.source "NetworkNameModel.kt"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel$Default;,
        Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel$IntentDerived;,
        Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel$SimDerived;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/log/table/Diffable<",
        "Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method
