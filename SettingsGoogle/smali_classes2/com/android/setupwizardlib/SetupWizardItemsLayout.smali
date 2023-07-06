.class public Lcom/android/setupwizardlib/SetupWizardItemsLayout;
.super Lcom/android/setupwizardlib/SetupWizardListLayout;
.source "SetupWizardItemsLayout.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->getAdapter()Lcom/android/setupwizardlib/items/ItemAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/android/setupwizardlib/items/ItemAdapter;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 41
    instance-of v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Lcom/android/setupwizardlib/items/ItemAdapter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
