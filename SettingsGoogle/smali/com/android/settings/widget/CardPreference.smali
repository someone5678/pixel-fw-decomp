.class public Lcom/android/settings/widget/CardPreference;
.super Landroidx/preference/Preference;
.source "CardPreference.java"


# instance fields
.field private mButtonsGroup:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mPrimaryButton:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryButtonText:Ljava/lang/String;

.field private mPrimaryButtonVisible:Z

.field private mSecondaryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mSecondaryButton:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryButtonText:Ljava/lang/String;

.field private mSecondaryButtonVisible:Z


# direct methods
.method public static synthetic $r8$lambda$EI4fWDzhPRyuk7Js26zLZI-D1mY(ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/CardPreference;->lambda$updateButtonGroupsVisibility$7(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LIoTTFWjkHJBvplHUMLS1JPJx5Y(Landroid/view/View$OnClickListener;Landroid/widget/Button;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/CardPreference;->lambda$setPrimaryButtonClickListener$0(Landroid/view/View$OnClickListener;Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PFWnes0i3f0clzqrftleyBk0Bsw(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/CardPreference;->lambda$setPrimaryButtonText$2(Ljava/lang/String;Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sh162hicoi9XtZVkrPT-8VVNtio(ZLandroid/widget/Button;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/CardPreference;->lambda$setSecondaryButtonVisible$5(ZLandroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TwR8uACg2W3YhMtCJbW-2HY7yRg(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/CardPreference;->lambda$setSecondaryButtonText$3(Ljava/lang/String;Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jQcgKkglcVivwrXwA8gR3ks-VyQ(Landroid/view/View$OnClickListener;Landroid/widget/Button;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/CardPreference;->lambda$setSecondaryButtonClickListener$1(Landroid/view/View$OnClickListener;Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oEOTiAyqFjYMs8k3HsqwBRaL47I(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/CardPreference;->lambda$setSecondaryButtonContentDescription$6(Ljava/lang/String;Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wFgwphWiA9z9KULdABCBpXNj934(ZLandroid/widget/Button;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/CardPreference;->lambda$setPrimaryButtonVisible$4(ZLandroid/widget/Button;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/CardPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0500aa

    .line 56
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 39
    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonText:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonText:Ljava/lang/String;

    .line 44
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    .line 45
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    .line 46
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mButtonsGroup:Ljava/util/Optional;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonVisible:Z

    .line 49
    iput-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonVisible:Z

    return-void
.end method

.method private initButtonsAndLayout(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const v0, 0x1020019

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    const v0, 0x102001a

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    const v0, 0x7f0d0160

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mButtonsGroup:Ljava/util/Optional;

    .line 71
    iget-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CardPreference;->setPrimaryButtonText(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CardPreference;->setPrimaryButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CardPreference;->setPrimaryButtonVisible(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CardPreference;->setSecondaryButtonText(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CardPreference;->setSecondaryButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CardPreference;->setSecondaryButtonVisible(Z)V

    return-void
.end method

.method private static synthetic lambda$setPrimaryButtonClickListener$0(Landroid/view/View$OnClickListener;Landroid/widget/Button;)V
    .locals 0

    .line 85
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic lambda$setPrimaryButtonText$2(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    .line 105
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$setPrimaryButtonVisible$4(ZLandroid/widget/Button;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 126
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$setSecondaryButtonClickListener$1(Landroid/view/View$OnClickListener;Landroid/widget/Button;)V
    .locals 0

    .line 95
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic lambda$setSecondaryButtonContentDescription$6(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    .line 149
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$setSecondaryButtonText$3(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    .line 115
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$setSecondaryButtonVisible$5(ZLandroid/widget/Button;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 138
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$updateButtonGroupsVisibility$7(ILandroid/view/View;)V
    .locals 0

    .line 155
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateButtonGroupsVisibility()V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 155
    :goto_1
    iget-object p0, p0, Lcom/android/settings/widget/CardPreference;->mButtonsGroup:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/widget/CardPreference;->initButtonsAndLayout(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setPrimaryButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 86
    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPrimaryButtonText(Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 106
    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonText:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryButtonVisible(Z)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 127
    iput-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonVisible:Z

    .line 128
    invoke-direct {p0}, Lcom/android/settings/widget/CardPreference;->updateButtonGroupsVisibility()V

    return-void
.end method

.method public setSecondaryButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda6;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 96
    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSecondaryButtonContentDescription(Ljava/lang/String;)V
    .locals 1

    .line 149
    iget-object p0, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    new-instance v0, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setSecondaryButtonText(Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 116
    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonText:Ljava/lang/String;

    return-void
.end method

.method public setSecondaryButtonVisible(Z)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonVisible:Z

    .line 140
    invoke-direct {p0}, Lcom/android/settings/widget/CardPreference;->updateButtonGroupsVisibility()V

    return-void
.end method
