.class public Lcom/android/settings/accounts/SyncStateSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "SyncStateSwitchPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f140314

    .line 60
    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 61
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f140314

    .line 51
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 53
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    .line 55
    iput v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mUid:I

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mUid:I

    return p0
.end method

.method public isOneTimeSyncMode()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 75
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0d0637

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/AnimatedImageView;

    const v1, 0x7f0d0638

    .line 78
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 80
    iget-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    const/16 v5, 0x8

    if-eqz v2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    .line 81
    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setAnimating(Z)V

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v5

    .line 85
    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020040

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020010

    .line 96
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 97
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04151f

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 99
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_1

    .line 150
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SyncState"

    const-string v0, "ignoring monkey\'s attempt to flip sync state"

    .line 151
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_0
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 109
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setFailed(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 127
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 135
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setPending(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 118
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 66
    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    .line 68
    iput p4, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mUid:I

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 70
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
