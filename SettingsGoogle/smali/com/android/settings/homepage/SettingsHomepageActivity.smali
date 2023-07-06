.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsHomepageActivity.java"

# interfaces
.implements Lcom/android/settings/core/CategoryMixin$CategoryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;,
        Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;,
        Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;
    }
.end annotation


# static fields
.field static final EXTRA_INITIAL_REFERRER:Ljava/lang/String; = "initial_referrer"


# instance fields
.field private mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

.field private mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

.field private mHomepageView:Landroid/view/View;

.field private mIsEmbeddingActivityEnabled:Z

.field private mIsRegularLayout:Z

.field private mIsTwoPane:Z

.field private mLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

.field private mSuggestionView:Landroid/view/View;

.field private mTwoPaneSuggestionView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$BUzzfRttldpJQdCPFiA5bN7T378(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$setupEdgeToEdge$4(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q0VnzxqKLtCf3NDXjV31knZwQ-w(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$updateSplitLayout$3(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qi4PuWlY_ZHlHr5mJvZkBviawd8(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$showSuggestionFragment$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$U9glgHyHrcg28hf6gRURK1CuTvI(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$showHomepageWithSuggestion$0(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wnii903Fj5LluS89sfMyWHaINAo()Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
    .locals 1

    invoke-static {}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$onCreate$1()Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$dSH7Ip8EFDJCy5K295sVwJi-s9o(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$onCreate$2(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    return-void
.end method

.method private getHighlightMenuKey()Ljava/lang/String;
    .locals 3

    .line 613
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    .line 616
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->maybeRemapMenuKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f040de1

    .line 622
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasPrivilegedAccess(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .line 555
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 561
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 562
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    .line 561
    invoke-virtual {p0, p3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    invoke-static {p2, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 576
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-eqz p0, :cond_3

    const/16 p2, 0x3e8

    if-ne p0, p2, :cond_2

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not able to get targetUid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SettingsHomepageActivity"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private initAvatarView()V
    .locals 5

    const v0, 0x7f0d0034

    .line 348
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0d0035

    .line 349
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 350
    invoke-static {p0}, Lcom/android/settings/accounts/AvatarViewMixin;->isAvatarSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 351
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    new-instance v4, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 354
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private initHomepageContainer()V
    .locals 1

    const v0, 0x7f0d02e7

    .line 649
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    .line 651
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private initSearchBarView()V
    .locals 3

    const v0, 0x7f0d0537

    .line 335
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 336
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    const/16 v2, 0x5de

    .line 337
    invoke-interface {v1, p0, v0, v2}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroidx/fragment/app/FragmentActivity;Landroid/widget/Toolbar;I)V

    .line 339
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0539

    .line 340
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 341
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    .line 342
    invoke-interface {v1, p0, v0, v2}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroidx/fragment/app/FragmentActivity;Landroid/widget/Toolbar;I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onCreate$1()Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
    .locals 1

    .line 224
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$onCreate$2(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;
    .locals 3

    .line 230
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {v0}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    .line 231
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$setupEdgeToEdge$4(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 324
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 326
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 330
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private static synthetic lambda$showHomepageWithSuggestion$0(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)V
    .locals 0

    .line 159
    invoke-interface {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;->onHomepageLoaded()V

    return-void
.end method

.method private synthetic lambda$showSuggestionFragment$5()V
    .locals 1

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showHomepageWithSuggestion(Z)V

    return-void
.end method

.method private synthetic lambda$updateSplitLayout$3(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 314
    instance-of v0, p1, Lcom/android/settings/homepage/SplitLayoutListener;

    if-eqz v0, :cond_0

    .line 315
    check-cast p1, Lcom/android/settings/homepage/SplitLayoutListener;

    iget-boolean p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    invoke-interface {p1, p0}, Lcom/android/settings/homepage/SplitLayoutListener;->onSplitLayoutChanged(Z)V

    :cond_0
    return-void
.end method

.method private launchDeepLinkIntentToRight()V
    .locals 13

    .line 420
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 425
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 430
    :cond_1
    instance-of v1, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    const-string v2, "SettingsHomepageActivity"

    if-nez v1, :cond_2

    instance-of v1, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    if-nez v1, :cond_2

    const-string v0, "Not a deep link component"

    .line 432
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    .line 437
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "No EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI to deep link"

    .line 440
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const/4 v3, 0x1

    .line 447
    :try_start_0
    invoke-static {v1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 454
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_4

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid target for the deep link intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 463
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    const-class v7, Landroid/os/UserHandle;

    const-string/jumbo v8, "user_handle"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/os/UserHandle;

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getInitialReferrer()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    if-eqz v7, :cond_6

    .line 476
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-wide/16 v10, 0x0

    .line 477
    invoke-static {v10, v11}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v10

    if-eqz v12, :cond_5

    .line 478
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v11

    .line 476
    :goto_0
    invoke-virtual {v9, v7, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to get callerUid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    move v9, v8

    .line 486
    :goto_1
    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v9, v10}, Lcom/android/settings/homepage/SettingsHomepageActivity;->hasPrivilegedAccess(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 487
    iget-boolean v7, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v7, :cond_7

    const-string v0, "Target Activity is not exported"

    .line 488
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 493
    :cond_7
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/android/settings/homepage/SettingsHomepageActivity;->isCallingAppPermitted(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v0, "Calling app must have the permission of deep link Activity"

    .line 494
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 500
    :cond_8
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v5, 0x0

    .line 503
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10080000

    .line 505
    invoke-virtual {v1, v5}, Landroid/content/Intent;->removeFlags(I)V

    const/high16 v5, 0x2000000

    .line 506
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 509
    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v5, "is_from_settings_homepage"

    .line 511
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "is_from_slice"

    .line 512
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "settings_large_screen_deep_link_intent_data"

    .line 514
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 519
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    .line 521
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    .line 523
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9, v0}, Landroid/app/Activity;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-ne v0, v8, :cond_9

    const-string v0, "Calling app must have the permission to access Uri and grant permission"

    .line 525
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 531
    :cond_9
    new-instance v6, Landroid/content/ComponentName;

    .line 532
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 534
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Landroidx/window/embedding/SplitRule$FinishBehavior;->ALWAYS:Landroidx/window/embedding/SplitRule$FinishBehavior;

    const/4 v11, 0x1

    move-object v5, p0

    move-object v7, v4

    move-object v9, v0

    move-object v10, v0

    .line 531
    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    .line 538
    new-instance v6, Landroid/content/ComponentName;

    .line 539
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 538
    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    if-eqz v12, :cond_a

    .line 547
    invoke-virtual {p0, v1, v12}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 549
    :cond_a
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :catch_1
    move-exception v0

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get target ActivityInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_2
    move-exception v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse deep link intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_b
    :goto_3
    return-void
.end method

.method private maybeRemapMenuKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const v0, 0x7f040de3

    .line 627
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f040de5

    if-nez v0, :cond_1

    .line 628
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const v2, 0x7f040de4

    .line 629
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_2

    .line 631
    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v3, :cond_3

    .line 634
    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 636
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method private setupEdgeToEdge()V
    .locals 2

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    const v0, 0x1020002

    .line 322
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 405
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    .line 408
    invoke-interface {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;->create()Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 409
    invoke-interface {p1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;->init(Landroidx/fragment/app/Fragment;)V

    .line 410
    invoke-virtual {v0, p2, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 412
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;->init(Landroidx/fragment/app/Fragment;)V

    .line 413
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 415
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p0
.end method

.method private showSuggestionFragment(Z)V
    .locals 6

    .line 379
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 380
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getContextualSuggestionFragment()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0d060d

    .line 385
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSuggestionView:Landroid/view/View;

    const v2, 0x7f0d068e

    .line 386
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mTwoPaneSuggestionView:Landroid/view/View;

    const v3, 0x7f0d055f

    .line 387
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 390
    :goto_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    new-instance v3, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    new-instance p1, Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3}, Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;-><init>(Ljava/lang/Class;Z)V

    invoke-direct {p0, p1, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;

    .line 396
    iget-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_2

    .line 397
    new-instance p1, Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;-><init>(Ljava/lang/Class;Z)V

    invoke-direct {p0, p1, v2}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;

    :cond_2
    return-void
.end method

.method private updateAppBarMinHeight()V
    .locals 3

    .line 686
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b042d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 687
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 688
    iget-boolean v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0b01e3

    goto :goto_0

    :cond_0
    const v2, 0x7f0b042e

    .line 687
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0d009b

    .line 691
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method private updateHomepageAppBar()V
    .locals 6

    .line 656
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateAppBarMinHeight()V

    .line 660
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    const v1, 0x7f0d060c

    const v2, 0x7f0d02e6

    const v3, 0x7f0d02e5

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 662
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 663
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 666
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 667
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateHomepageBackground()V
    .locals 3

    .line 362
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 367
    iget-boolean v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0a0348

    .line 368
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const v1, 0x1010031

    .line 369
    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    :goto_0
    const/high16 v2, -0x80000000

    .line 371
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 373
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    const v0, 0x1020002

    .line 375
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private updateHomepagePaddings()V
    .locals 2

    .line 672
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 675
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 678
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/homepage/TopLevelSettings;->setPaddingHorizontal(I)V

    goto :goto_0

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/TopLevelSettings;->setPaddingHorizontal(I)V

    .line 682
    :goto_0
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    iget-boolean p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/TopLevelSettings;->updatePreferencePadding(Z)V

    return-void
.end method

.method private updateSplitLayout()V
    .locals 3

    .line 288
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eqz v0, :cond_1

    .line 293
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isRegularHomepageLayout(Landroid/app/Activity;)Z

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 297
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    if-eqz v0, :cond_2

    return-void

    .line 301
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    const v0, 0x7f0d053d

    .line 304
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 307
    iget-boolean v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0b0435

    goto :goto_0

    :cond_3
    const v2, 0x7f0b0434

    .line 306
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 310
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 313
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public addHomepageLoadedListener(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getCategoryMixin()Lcom/android/settings/core/CategoryMixin;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    return-object p0
.end method

.method getCurrentReferrer()Ljava/lang/String;
    .locals 2

    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.REFERRER"

    .line 599
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.REFERRER_NAME"

    .line 600
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 602
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getInitialReferrer()Ljava/lang/String;
    .locals 2

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getCurrentReferrer()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 591
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "initial_referrer"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 592
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    return-object p0
.end method

.method initSplitPairRules()V
    .locals 1

    .line 271
    new-instance v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->initRules()V

    return-void
.end method

.method isCallingAppPermitted(Ljava/lang/String;I)Z
    .locals 1

    .line 607
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 608
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 276
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 277
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

    invoke-virtual {p1, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p1

    .line 278
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eq v0, p1, :cond_0

    .line 279
    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    .line 280
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageAppBar()V

    .line 281
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageBackground()V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepagePaddings()V

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 176
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_1

    .line 180
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x2000000

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    const-string/jumbo v2, "user_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getCurrentReferrer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initial_referrer"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    if-eqz v1, :cond_0

    .line 189
    const-class v1, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x10000000

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeFlags(I)V

    .line 192
    invoke-virtual {p1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->setupEdgeToEdge()V

    const p1, 0x7f060211

    .line 199
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 201
    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

    .line 202
    invoke-virtual {p1, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    .line 204
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateAppBarMinHeight()V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initHomepageContainer()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageAppBar()V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageBackground()V

    .line 208
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    .line 210
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initSearchBarView()V

    .line 212
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 213
    new-instance p1, Lcom/android/settings/core/CategoryMixin;

    invoke-direct {p1, p0}, Lcom/android/settings/core/CategoryMixin;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    .line 214
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getHighlightMenuKey()Ljava/lang/String;

    move-result-object p1

    .line 218
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    const v1, 0x7f0d039c

    if-nez v0, :cond_3

    .line 219
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initAvatarView()V

    .line 220
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_2

    const v0, 0x7f040de1

    .line 221
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 222
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showSuggestionFragment(Z)V

    const-string/jumbo v0, "settings_contextual_home"

    .line 223
    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;-><init>()V

    const v2, 0x7f0d01a8

    invoke-direct {p0, v0, v2}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;

    .line 225
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 226
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 229
    :cond_3
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/TopLevelSettings;

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    .line 237
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepagePaddings()V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 254
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->reloadHighlightMenuKey()V

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x4000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initSplitPairRules()V

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsApplication;->setHomeActivity(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    .line 245
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method reloadHighlightMenuKey()V
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 644
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getHighlightMenuKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    .line 643
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->reloadHighlightMenuKey()V

    return-void
.end method

.method public showHomepageWithSuggestion(Z)V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showHomepageWithSuggestion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsHomepageActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    .line 155
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSuggestionView:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mTwoPaneSuggestionView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    .line 159
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    new-instance v1, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 160
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 161
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
