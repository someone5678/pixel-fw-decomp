.class public Lcom/google/android/settings/warranty/WarrantyInfo;
.super Ljava/lang/Object;
.source "WarrantyInfo.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Ljava/lang/String;

.field private final mGPN:Ljava/lang/String;

.field private final mLanguageCode:Ljava/lang/String;

.field private final mLocaleForSUW:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mCountryCode:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mLanguageCode:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mGPN:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mLocaleForSUW:Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/settings/warranty/WarrantyInfo;->buildDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 50
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 51
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid arguments to create an warranty info."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 96
    invoke-direct {p0}, Lcom/google/android/settings/warranty/WarrantyInfo;->getCountryLabel()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-direct {p0}, Lcom/google/android/settings/warranty/WarrantyInfo;->getLanguageLabel()Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const v1, 0x7f041758

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    .line 103
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCountryLabel()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLanguageLabel()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mLanguageCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mLanguageCode:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/android/settings/warranty/WarrantyInfo;->buildDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGPN()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mGPN:Ljava/lang/String;

    return-object p0
.end method

.method public getWarranty(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mGPN:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/settings/warranty/WarrantyUtils;->isRawFileExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/warranty/WarrantyInfo;->mGPN:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/android/settings/warranty/WarrantyUtils;->readRawFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
