.class public Lcom/android/settingslib/widget/FooterPreference;
.super Landroidx/preference/Preference;
.source "FooterPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;,
        Lcom/android/settingslib/widget/FooterPreference$Builder;
    }
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field mIconVisibility:I

.field mLearnMoreListener:Landroid/view/View$OnClickListener;

.field private mLearnMoreSpan:Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

.field private mLearnMoreText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    sget v0, Lcom/android/settingslib/widget/R$attr;->footerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/settingslib/widget/FooterPreference;->mIconVisibility:I

    .line 51
    invoke-direct {p0}, Lcom/android/settingslib/widget/FooterPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 160
    sget v0, Lcom/android/settingslib/widget/R$layout;->preference_footer:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 161
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    sget v0, Lcom/android/settingslib/widget/R$drawable;->settingslib_ic_info_outline_24:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    :cond_0
    const v0, 0x7ffffffe

    .line 164
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 165
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "footer_preference"

    .line 166
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 102
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 61
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settingslib/widget/R$id;->settingslib_learn_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 67
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreSpan:Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v2, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 78
    :cond_2
    new-instance v3, Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

    iget-object v4, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreListener:Landroid/view/View$OnClickListener;

    invoke-direct {v3, v4}, Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreSpan:Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

    .line 80
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    .line 79
    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settingslib/widget/R$id;->icon_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 87
    iget p0, p0, Lcom/android/settingslib/widget/FooterPreference;->mIconVisibility:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIconVisibility(I)V
    .locals 1

    .line 152
    iget v0, p0, Lcom/android/settingslib/widget/FooterPreference;->mIconVisibility:I

    if-ne v0, p1, :cond_0

    return-void

    .line 155
    :cond_0
    iput p1, p0, Lcom/android/settingslib/widget/FooterPreference;->mIconVisibility:I

    .line 156
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLearnMoreAction(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreListener:Landroid/view/View$OnClickListener;

    if-eq v0, p1, :cond_0

    .line 143
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreListener:Landroid/view/View$OnClickListener;

    .line 144
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setLearnMoreText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSummary(I)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
