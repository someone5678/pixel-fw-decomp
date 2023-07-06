.class public interface abstract Lcom/android/systemui/plugins/ClockProviderPlugin;
.super Ljava/lang/Object;
.source "ClockProviderPlugin.kt"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;
.implements Lcom/android/systemui/plugins/ClockProvider;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_CLOCK_PROVIDER"
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/ClockProviderPlugin$Companion;,
        Lcom/android/systemui/plugins/ClockProviderPlugin$DefaultImpls;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_CLOCK_PROVIDER"

.field public static final Companion:Lcom/android/systemui/plugins/ClockProviderPlugin$Companion;

.field public static final VERSION:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/plugins/ClockProviderPlugin$Companion;->$$INSTANCE:Lcom/android/systemui/plugins/ClockProviderPlugin$Companion;

    sput-object v0, Lcom/android/systemui/plugins/ClockProviderPlugin;->Companion:Lcom/android/systemui/plugins/ClockProviderPlugin$Companion;

    return-void
.end method
