.class public final Lcom/android/settings/nfc/PaymentDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mNewDefault:Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 6

    const-string v0, "PaymentDefaultDialog"

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string/jumbo v2, "payment"

    .line 95
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Don\'t support defaults for category "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 104
    :cond_1
    iget-object p2, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p2}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p2

    .line 105
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move-object v3, v2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 107
    iget-object v5, v4, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    .line 108
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-ne v5, p3, :cond_3

    move-object v2, v4

    .line 111
    :cond_3
    iget-boolean v5, v4, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-ne v5, p3, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_4
    const-string p2, "Component "

    if-nez v2, :cond_5

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a registered payment service."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 122
    :cond_5
    iget-object v4, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 123
    iget-object v5, v4, Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v4, v4, Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;->userId:I

    if-ne v4, p3, :cond_6

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already default."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 129
    :cond_6
    new-instance p2, Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;

    invoke-direct {p2}, Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;-><init>()V

    iput-object p2, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;

    .line 130
    iput-object p1, p2, Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;->componentName:Landroid/content/ComponentName;

    .line 131
    iput p3, p2, Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;->userId:I

    .line 134
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 p2, 0x1

    if-nez v3, :cond_7

    const p3, 0x7f040ed8

    .line 136
    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const p3, 0x7f040ed6

    .line 137
    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v0, p2, [Ljava/lang/Object;

    .line 138
    iget-object v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 139
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 138
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 140
    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const p3, 0x7f040ecd

    .line 141
    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_7
    const p3, 0x7f040eda

    .line 143
    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const p3, 0x7f040ed7

    .line 144
    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 145
    iget-object v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 146
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 147
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 145
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 148
    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const p3, 0x7f040ece

    .line 149
    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    :goto_1
    const p3, 0x7f0405e3

    .line 151
    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 152
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 153
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return p2

    :cond_8
    :goto_2
    const-string p0, "Component or category are null"

    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0xa

    const/16 v0, 0x20

    .line 160
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x28

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;

    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;->componentName:Landroid/content/ComponentName;

    iget v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentInfo;->userId:I

    invoke-virtual {p2, v1, v0}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;I)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 53
    :try_start_0
    new-instance p1, Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {p1, p0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "component"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v1, "category"

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.USER"

    .line 61
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-nez p1, :cond_0

    .line 65
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    :goto_1
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 71
    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->buildDialog(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_1
    return-void
.end method
