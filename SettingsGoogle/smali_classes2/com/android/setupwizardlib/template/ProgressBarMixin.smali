.class public Lcom/android/setupwizardlib/template/ProgressBarMixin;
.super Ljava/lang/Object;
.source "ProgressBarMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private color:Landroid/content/res/ColorStateList;

.field private final templateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    return-void
.end method

.method private getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_progress_stub:I

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public isShown()Z
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 96
    iget-object p0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    .line 103
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShown(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
