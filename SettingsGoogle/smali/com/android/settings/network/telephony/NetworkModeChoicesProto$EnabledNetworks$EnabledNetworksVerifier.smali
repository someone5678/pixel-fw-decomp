.class final Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;
.super Ljava/lang/Object;
.source "NetworkModeChoicesProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnabledNetworksVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 345
    new-instance v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 348
    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->forNumber(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
