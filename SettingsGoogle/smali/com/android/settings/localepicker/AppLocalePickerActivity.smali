.class public Lcom/android/settings/localepicker/AppLocalePickerActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "AppLocalePickerActivity.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppLocaleDetailContainer:Landroid/view/View;

.field private mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

.field private mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppLocaleDetailContainer(Lcom/android/settings/localepicker/AppLocalePickerActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetailContainer:Landroid/view/View;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/settings/localepicker/AppLocalePickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    return-void
.end method

.method private canDisplayLocaleUi()Z
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/applications/AppLocaleUtil;->LAUNCHER_ENTRY_INTENT:Landroid/content/Intent;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 161
    invoke-static {p0, v0, v1}, Lcom/android/settings/applications/AppLocaleUtil;->canDisplayLocaleUi(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private launchAppLocaleDetailsPage()Landroid/view/View;
    .locals 3

    .line 128
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0376

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    .line 132
    invoke-virtual {v2, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object v0
.end method

.method private launchLocalePickerPage()V
    .locals 3

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/android/settings/localepicker/AppLocalePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/AppLocalePickerActivity$1;-><init>(Lcom/android/settings/localepicker/AppLocalePickerActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 154
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

    const v1, 0x7f0d01a1

    .line 156
    invoke-virtual {v0, v1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private setAppDefaultLocale(Ljava/lang/String;)V
    .locals 3

    .line 118
    sget-object v0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppDefaultLocale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-class v1, Landroid/app/LocaleManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LocaleManager;

    if-nez v1, :cond_0

    const-string p0, "LocaleManager is null, cannot set default app locale"

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/app/LocaleManager;->setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    .line 53
    sget-object p1, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    const-string v0, "There is no uri data."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    sget-object p1, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    const-string v0, "There is no package name."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->canDisplayLocaleUi()Z

    move-result p1

    if-nez p1, :cond_2

    .line 65
    sget-object p1, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    const-string v0, "Not allow to display Locale Settings UI."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const p1, 0x7f04028c

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 p1, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, p0, p1, v0, p0}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLjava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

    .line 79
    iget-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/applications/appinfo/AppLocaleDetails;->newInstance(Ljava/lang/String;I)Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->launchAppLocaleDetailsPage()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetailContainer:Landroid/view/View;

    .line 82
    invoke-direct {p0}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->launchLocalePickerPage()V

    return-void
.end method

.method public onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->setAppDefaultLocale(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->setAppDefaultLocale(Ljava/lang/String;)V

    .line 101
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 88
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
