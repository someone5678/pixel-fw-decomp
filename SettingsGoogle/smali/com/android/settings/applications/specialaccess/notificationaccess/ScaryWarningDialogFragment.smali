.class public Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ScaryWarningDialogFragment.java"


# direct methods
.method public static synthetic $r8$lambda$uThJY0JB81z9O8VxD2aDAL5SuyQ(Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->lambda$getDialogView$0(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vPXErHdgq3zwuUAY3-BVxY_WVdQ(Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->lambda$getDialogView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private getDialogView(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)Landroid/view/View;
    .locals 6

    const-string v0, "layout_inflater"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0600e0

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const v1, 0x7f0d00a7

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040f75

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d066b

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f040f05

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0d04da

    .line 97
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0d0085

    .line 99
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 100
    new-instance p2, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0d01e2

    .line 104
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 105
    new-instance p2, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private synthetic lambda$getDialogView$0(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-virtual {p1, p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->enable(Landroid/content/ComponentName;)V

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$getDialogView$1(Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x22d

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "l"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "c"

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    .line 65
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->getDialogView(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;
    .locals 2

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "c"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "l"

    .line 51
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object p0
.end method
