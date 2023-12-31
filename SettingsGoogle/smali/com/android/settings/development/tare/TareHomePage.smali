.class public Lcom/android/settings/development/tare/TareHomePage;
.super Landroid/app/Activity;
.source "TareHomePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;
    }
.end annotation


# instance fields
.field private mAlarmManagerView:Landroid/widget/TextView;

.field private mConfigObserver:Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;

.field private mJobSchedulerView:Landroid/widget/TextView;

.field private mOnSwitch:Landroid/widget/Switch;

.field private mRevButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfigObserver(Lcom/android/settings/development/tare/TareHomePage;)Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/TareHomePage;->mConfigObserver:Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetEnabled(Lcom/android/settings/development/tare/TareHomePage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/development/tare/TareHomePage;->setEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/development/tare/TareHomePage;->mRevButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/development/tare/TareHomePage;->mAlarmManagerView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/development/tare/TareHomePage;->mJobSchedulerView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 123
    iget-object p0, p0, Lcom/android/settings/development/tare/TareHomePage;->mOnSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public launchAlarmManagerPage(Landroid/view/View;)V
    .locals 2

    .line 106
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/development/tare/DropdownActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "policy"

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public launchJobSchedulerPage(Landroid/view/View;)V
    .locals 2

    .line 113
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/development/tare/DropdownActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "policy"

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0602ce

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0d045e

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/development/tare/TareHomePage;->mOnSwitch:Landroid/widget/Switch;

    const p1, 0x7f0d0512

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/development/tare/TareHomePage;->mRevButton:Landroid/widget/Button;

    const p1, 0x7f0d0079

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/development/tare/TareHomePage;->mAlarmManagerView:Landroid/widget/TextView;

    const p1, 0x7f0d034f

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/development/tare/TareHomePage;->mJobSchedulerView:Landroid/widget/TextView;

    .line 63
    new-instance p1, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;-><init>(Lcom/android/settings/development/tare/TareHomePage;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/development/tare/TareHomePage;->mConfigObserver:Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;

    .line 65
    iget-object p1, p0, Lcom/android/settings/development/tare/TareHomePage;->mOnSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/settings/development/tare/TareHomePage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/tare/TareHomePage$1;-><init>(Lcom/android/settings/development/tare/TareHomePage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/development/tare/TareHomePage;->mConfigObserver:Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;

    invoke-virtual {v0}, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->stop()V

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    iget-object p0, p0, Lcom/android/settings/development/tare/TareHomePage;->mConfigObserver:Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;

    invoke-virtual {p0}, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->start()V

    return-void
.end method

.method public revertSettings(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f04155a

    const/4 v0, 0x1

    .line 95
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enable_tare"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "tare_alarm_manager_constants"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "tare_job_scheduler_constants"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
