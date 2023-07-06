.class public final Landroidx/window/area/WindowAreaAdapter;
.super Ljava/lang/Object;
.source "WindowAreaAdapter.kt"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/area/WindowAreaAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/area/WindowAreaAdapter;

    invoke-direct {v0}, Landroidx/window/area/WindowAreaAdapter;-><init>()V

    sput-object v0, Landroidx/window/area/WindowAreaAdapter;->INSTANCE:Landroidx/window/area/WindowAreaAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final translate$window_release(I)Landroidx/window/area/WindowAreaStatus;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 33
    sget-object p0, Landroidx/window/area/WindowAreaStatus;->UNSUPPORTED:Landroidx/window/area/WindowAreaStatus;

    goto :goto_0

    .line 31
    :cond_0
    sget-object p0, Landroidx/window/area/WindowAreaStatus;->AVAILABLE:Landroidx/window/area/WindowAreaStatus;

    goto :goto_0

    .line 32
    :cond_1
    sget-object p0, Landroidx/window/area/WindowAreaStatus;->UNAVAILABLE:Landroidx/window/area/WindowAreaStatus;

    :goto_0
    return-object p0
.end method
