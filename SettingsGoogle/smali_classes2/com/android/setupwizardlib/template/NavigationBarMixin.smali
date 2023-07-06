.class public Lcom/android/setupwizardlib/template/NavigationBarMixin;
.super Ljava/lang/Object;
.source "NavigationBarMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private final templateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/setupwizardlib/template/NavigationBarMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    return-void
.end method


# virtual methods
.method public getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/android/setupwizardlib/template/NavigationBarMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_navigation_bar:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    .line 41
    instance-of v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/setupwizardlib/view/NavigationBar;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
