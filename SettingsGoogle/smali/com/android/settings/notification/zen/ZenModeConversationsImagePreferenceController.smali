.class public Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeConversationsImagePreferenceController.java"


# instance fields
.field private final mConversationDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconOffsetPx:I

.field private final mIconSizePx:I

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConversationDrawables(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mConversationDrawables:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationBackend(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Lcom/android/settings/notification/NotificationBackend;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Lcom/android/settingslib/widget/LayoutPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mConversationDrawables:Ljava/util/ArrayList;

    .line 61
    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b05c6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mIconSizePx:I

    .line 64
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b05c5

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mIconOffsetPx:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private loadConversations()V
    .locals 1

    .line 124
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 165
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0d0708

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mViewGroup:Landroid/view/ViewGroup;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->loadConversations()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 7

    .line 89
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->loadConversations()V

    .line 91
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 92
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityConversationSenders()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0419df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 97
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0419e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x5

    .line 106
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mConversationDrawables:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 106
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_1

    .line 109
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mConversationDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mIconSizePx:I

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sub-int v4, p1, v3

    sub-int/2addr v4, v1

    .line 115
    iget v6, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mIconOffsetPx:I

    mul-int/2addr v4, v6

    invoke-virtual {v5, v4, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 119
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mViewGroup:Landroid/view/ViewGroup;

    if-lez p1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
