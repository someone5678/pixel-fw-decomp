.class public final Landroidx/window/WindowProperties;
.super Ljava/lang/Object;
.source "WindowProperties.kt"


# static fields
.field public static final INSTANCE:Landroidx/window/WindowProperties;

.field public static final PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE"

.field public static final PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED:Ljava/lang/String; = "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/WindowProperties;

    invoke-direct {v0}, Landroidx/window/WindowProperties;-><init>()V

    sput-object v0, Landroidx/window/WindowProperties;->INSTANCE:Landroidx/window/WindowProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
