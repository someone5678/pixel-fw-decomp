.class public final Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;
.super Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;
.source "ActionDisabledLearnMoreButtonLauncherImpl.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method public static synthetic $r8$lambda$paD-k4bTK2_rzhmB8rvv6EttGx0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->lambda$setLearnMoreButton$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;-><init>()V

    const-string v0, "activity cannot be null"

    .line 45
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    const-string p1, "builder cannot be null"

    .line 46
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private static synthetic lambda$setLearnMoreButton$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 53
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method protected finishSelf()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected launchShowAdminPolicies(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "context cannot be null"

    .line 58
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo p1, "user cannot be null"

    .line 59
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "admin cannot be null"

    .line 60
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.app.extra.DEVICE_ADMIN"

    .line 64
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected launchShowAdminSettings(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context cannot be null"

    .line 72
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings/Settings$DeviceAdminSettingsActivity;

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 79
    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setLearnMoreButton(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "action cannot be null"

    .line 51
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    const p1, 0x7f040c26

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method
