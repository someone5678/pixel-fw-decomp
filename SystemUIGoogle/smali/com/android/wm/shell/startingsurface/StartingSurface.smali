.class public interface abstract Lcom/android/wm/shell/startingsurface/StartingSurface;
.super Ljava/lang/Object;
.source "StartingSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;
    }
.end annotation


# virtual methods
.method public getBackgroundColor(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 0

    const/high16 p0, -0x1000000

    return p0
.end method

.method public abstract setSysuiProxy(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda19;)V
.end method
