.class Lcom/android/setupwizardlib/TemplateLayout$1;
.super Ljava/lang/Object;
.source "TemplateLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/TemplateLayout;->setXFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/setupwizardlib/TemplateLayout$1;->this$0:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/setupwizardlib/TemplateLayout$1;->this$0:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizardlib/TemplateLayout$1;->this$0:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-static {v1}, Lcom/android/setupwizardlib/TemplateLayout;->-$$Nest$fgetpreDrawListener(Lcom/android/setupwizardlib/TemplateLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 248
    iget-object p0, p0, Lcom/android/setupwizardlib/TemplateLayout$1;->this$0:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-static {p0}, Lcom/android/setupwizardlib/TemplateLayout;->-$$Nest$fgetxFraction(Lcom/android/setupwizardlib/TemplateLayout;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->setXFraction(F)V

    const/4 p0, 0x1

    return p0
.end method
