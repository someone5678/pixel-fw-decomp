.class public Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;
.super Lcom/android/settingslib/widget/TwoTargetPreference;
.source "VerifiedLinksPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnWidgetClickListener:Landroid/view/View$OnClickListener;

.field private mShowCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;->mOnWidgetClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;->mShowCheckBox:Z

    const p1, 0x7f0601a0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const p1, 0x7f0602f4

    .line 58
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d068f

    .line 79
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;->mOnWidgetClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0d0176

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x1020001

    .line 89
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    iget-boolean p0, p0, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;->mShowCheckBox:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setCheckBoxVisible(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;->mShowCheckBox:Z

    return-void
.end method

.method public setWidgetFrameClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/VerifiedLinksPreference;->mOnWidgetClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
