.class public Lcom/google/android/settings/search/SearchFeatureProviderGoogleImpl;
.super Lcom/android/settings/search/SearchFeatureProviderImpl;
.source "SearchFeatureProviderGoogleImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/settings/search/SearchFeatureProviderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected isSignatureAllowlisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 21
    invoke-static {p1, p2}, Lcom/google/android/settings/external/SignatureVerifier;->isPackageAllowlisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendPreIndexIntent(Landroid/content/Context;)V
    .locals 2

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.settings.PRE_INDEX_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-interface {p0, p1}, Lcom/android/settings/search/SearchFeatureProvider;->getSettingsIntelligencePkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
