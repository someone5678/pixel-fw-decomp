.class public Lcom/google/android/settings/warranty/WarrantyManager;
.super Ljava/lang/Object;
.source "WarrantyManager.java"


# static fields
.field private static sWarrantyManager:Lcom/google/android/settings/warranty/WarrantyManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWarrantyInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/settings/warranty/WarrantyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/settings/warranty/WarrantyManager;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/settings/warranty/WarrantyManager;->isLimitedWarrantyEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/settings/warranty/WarrantyManager;->initWarranties()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WarrantyManager"

    const-string p1, "Initial warranties failed."

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private buildWarrantyInfo(Lorg/json/JSONArray;)Lcom/google/android/settings/warranty/WarrantyInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 116
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 120
    array-length p1, v3

    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    .line 122
    aget-object v2, v3, v0

    .line 123
    aget-object p1, v3, v4

    .line 124
    aget-object v0, v3, v1

    move-object v8, p1

    move-object v9, v0

    move-object v7, v2

    goto :goto_0

    .line 125
    :cond_1
    array-length p1, v3

    if-ne p1, v1, :cond_2

    .line 127
    aget-object p1, v3, v0

    .line 128
    aget-object v0, v3, v4

    move-object v7, p1

    move-object v9, v0

    move-object v8, v2

    goto :goto_0

    :cond_2
    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    .line 131
    :goto_0
    new-instance p1, Lcom/google/android/settings/warranty/WarrantyInfo;

    iget-object v6, p0, Lcom/google/android/settings/warranty/WarrantyManager;->mContext:Landroid/content/Context;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/settings/warranty/WarrantyInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/settings/warranty/WarrantyManager;
    .locals 2

    const-class v0, Lcom/google/android/settings/warranty/WarrantyManager;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/google/android/settings/warranty/WarrantyManager;->sWarrantyManager:Lcom/google/android/settings/warranty/WarrantyManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/google/android/settings/warranty/WarrantyManager;

    invoke-direct {v1, p0}, Lcom/google/android/settings/warranty/WarrantyManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/settings/warranty/WarrantyManager;->sWarrantyManager:Lcom/google/android/settings/warranty/WarrantyManager;

    .line 50
    :cond_0
    sget-object p0, Lcom/google/android/settings/warranty/WarrantyManager;->sWarrantyManager:Lcom/google/android/settings/warranty/WarrantyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initWarranties()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "ro.boot.warranty.sku"

    .line 75
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "WarrantyManager"

    if-eqz v1, :cond_0

    const-string p0, "There is no warranty sku in system property."

    .line 77
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/settings/warranty/WarrantyManager;->loadWarrantyInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/warranty/WarrantyManager;->mWarrantyInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-string p0, "Can not find any warranties."

    .line 83
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private loadWarrantyInfos(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/settings/warranty/WarrantyInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/settings/warranty/WarrantyManager;->mContext:Landroid/content/Context;

    const-string v1, "warranty_mapping"

    .line 89
    invoke-static {v0, v1}, Lcom/google/android/settings/warranty/WarrantyUtils;->readRawFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "WarrantyManager"

    const-string p1, "Invalid mapping table."

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 100
    invoke-direct {p0, v2}, Lcom/google/android/settings/warranty/WarrantyManager;->buildWarrantyInfo(Lorg/json/JSONArray;)Lcom/google/android/settings/warranty/WarrantyInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getWarrantyInfos()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/settings/warranty/WarrantyInfo;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/google/android/settings/warranty/WarrantyManager;->mWarrantyInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hasEligibleWarranties()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/settings/warranty/WarrantyManager;->isLimitedWarrantyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/warranty/WarrantyManager;->mWarrantyInfos:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLimitedWarrantyEnabled()Z
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/google/android/settings/warranty/WarrantyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_limited_warranty_enabled:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
