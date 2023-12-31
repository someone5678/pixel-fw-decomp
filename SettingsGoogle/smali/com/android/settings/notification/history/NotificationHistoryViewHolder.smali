.class public Lcom/android/settings/notification/history/NotificationHistoryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotificationHistoryViewHolder.java"


# instance fields
.field private final mSummary:Landroid/widget/TextView;

.field private final mTime:Landroid/widget/DateTimeView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0d0669

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mTime:Landroid/widget/DateTimeView;

    const v0, 0x7f0d066b

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0d064e

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mSummary:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method setPostedTime(J)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mTime:Landroid/widget/DateTimeView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/DateTimeView;->setTime(J)V

    return-void
.end method

.method setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
