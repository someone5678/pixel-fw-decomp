.class public Lcom/android/settings/notification/app/BubblePreference;
.super Landroidx/preference/Preference;
.source "BubblePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;
    }
.end annotation


# instance fields
.field private mBubbleAllButton:Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

.field private mBubbleNoneButton:Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

.field private mBubbleSelectedButton:Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

.field private mContext:Landroid/content/Context;

.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private mSelectedPreference:I

.field private mSelectedVisible:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/notification/app/BubblePreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/BubblePreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/BubblePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/app/BubblePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/app/BubblePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    new-instance p3, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {p3, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/settings/notification/app/BubblePreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p3, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    .line 72
    iput-object p1, p0, Lcom/android/settings/notification/app/BubblePreference;->mContext:Landroid/content/Context;

    const p1, 0x7f060079

    .line 73
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getSelectedPreference()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/settings/notification/app/BubblePreference;->mSelectedPreference:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 13

    .line 97
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    const v1, 0x1020010

    .line 100
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/settings/notification/app/BubblePreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 103
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x7f0d0135

    .line 109
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0d0136

    .line 110
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/widget/ImageView;

    const v4, 0x7f0d0137

    .line 111
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    .line 112
    new-instance v10, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

    const/4 v9, 0x1

    move-object v4, v10

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;-><init>(Lcom/android/settings/notification/app/BubblePreference;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    iput-object v10, p0, Lcom/android/settings/notification/app/BubblePreference;->mBubbleAllButton:Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

    .line 114
    iget-object v4, p0, Lcom/android/settings/notification/app/BubblePreference;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/notification/app/BubblePreference;->mSelectedPreference:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v10, v4, v5}, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->setSelected(Landroid/content/Context;Z)V

    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 117
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0d013b

    .line 119
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0d013c

    .line 120
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/ImageView;

    const v4, 0x7f0d013d

    .line 121
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    .line 122
    new-instance v4, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

    const/4 v12, 0x2

    move-object v7, v4

    move-object v8, p0

    move-object v9, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;-><init>(Lcom/android/settings/notification/app/BubblePreference;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    iput-object v4, p0, Lcom/android/settings/notification/app/BubblePreference;->mBubbleSelectedButton:Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

    .line 124
    iget-object v5, p0, Lcom/android/settings/notification/app/BubblePreference;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/settings/notification/app/BubblePreference;->mSelectedPreference:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    invoke-virtual {v4, v5, v7}, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->setSelected(Landroid/content/Context;Z)V

    .line 126
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-boolean v4, p0, Lcom/android/settings/notification/app/BubblePreference;->mSelectedVisible:Z

    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v4, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v2

    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0d0138

    .line 131
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0d0139

    .line 132
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/ImageView;

    const v4, 0x7f0d013a

    .line 133
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Landroid/widget/TextView;

    .line 134
    new-instance p1, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

    const/4 v12, 0x0

    move-object v7, p1

    move-object v8, p0

    move-object v9, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;-><init>(Lcom/android/settings/notification/app/BubblePreference;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    iput-object p1, p0, Lcom/android/settings/notification/app/BubblePreference;->mBubbleNoneButton:Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

    .line 136
    iget-object v4, p0, Lcom/android/settings/notification/app/BubblePreference;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/notification/app/BubblePreference;->mSelectedPreference:I

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    move v6, v3

    :goto_6
    invoke-virtual {p1, v4, v6}, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->setSelected(Landroid/content/Context;Z)V

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    .line 139
    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreference;->mBubbleAllButton:Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

    iget-object v1, p0, Lcom/android/settings/notification/app/BubblePreference;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v1, v4}, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->setSelected(Landroid/content/Context;Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreference;->mBubbleSelectedButton:Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

    iget-object v1, p0, Lcom/android/settings/notification/app/BubblePreference;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v0, v1, v4}, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->setSelected(Landroid/content/Context;Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreference;->mBubbleNoneButton:Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;

    iget-object p0, p0, Lcom/android/settings/notification/app/BubblePreference;->mContext:Landroid/content/Context;

    if-nez p1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, p0, v2}, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->setSelected(Landroid/content/Context;Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSelectedPreference(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/settings/notification/app/BubblePreference;->mSelectedPreference:I

    return-void
.end method

.method public setSelectedVisibility(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/settings/notification/app/BubblePreference;->mSelectedVisible:Z

    .line 92
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
