.class public Lcom/google/android/settings/warranty/SuwWarrantyActivity;
.super Landroid/app/Activity;
.source "SuwWarrantyActivity.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/warranty/SuwWarrantyActivity$CountryItem;
    }
.end annotation


# static fields
.field static final FIELD_LOADING_TEXT_DURATION:Ljava/lang/String; = "loadingTextDuration"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FIELD_USER_STAY_DURATION:Ljava/lang/String; = "userStayDuration"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sAlertDialog:Landroid/app/AlertDialog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sAlertDialogBuilder:Landroid/app/AlertDialog$Builder;


# instance fields
.field private mData:Landroid/content/Intent;

.field private mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

.field mIsDialogShown:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mLoadingTextTimeNano:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mStartPageTimeNano:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWarrantyInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/settings/warranty/WarrantyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RoRDmCHuMJvqU2iEB12tC4zjAm8(Lcom/google/android/settings/warranty/SuwWarrantyActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->lambda$showWarrantyContentDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yL35mqZMQS0BSMRLa5XBmJsVl48(Lcom/google/android/settings/warranty/SuwWarrantyActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->onPrimaryButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQ3JR90N_uVPegTCTdhzdLMUmho(Lcom/google/android/settings/warranty/SuwWarrantyActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->lambda$dialogListener$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mData:Landroid/content/Intent;

    return-void
.end method

.method private static calculateDurationInMillisUnitNow(J)J
    .locals 3

    .line 255
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private cleanupDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mIsDialogShown:Z

    const/4 p0, 0x0

    .line 260
    sput-object p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createFooterButton()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 175
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/settings/warranty/SuwWarrantyActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/warranty/SuwWarrantyActivity;)V

    .line 176
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->suw_warranty_next_button_text:I

    .line 177
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 v1, 0x5

    .line 178
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 179
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method private dialogListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 192
    new-instance v0, Lcom/google/android/settings/warranty/SuwWarrantyActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/warranty/SuwWarrantyActivity;)V

    return-object v0
.end method

.method private synthetic lambda$dialogListener$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->cleanupDialog()V

    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showWarrantyContentDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->cleanupDialog()V

    return-void
.end method

.method private onPrimaryButtonClicked(Landroid/view/View;)V
    .locals 3

    .line 184
    iget-object p1, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mData:Landroid/content/Intent;

    iget-wide v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mStartPageTimeNano:J

    .line 185
    invoke-static {v0, v1}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->calculateDurationInMillisUnitNow(J)J

    move-result-wide v0

    const-string v2, "userStayDuration"

    .line 184
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 186
    iget-object p1, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mData:Landroid/content/Intent;

    iget-wide v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mLoadingTextTimeNano:J

    const-string v2, "loadingTextDuration"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    iget-object p1, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mData:Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setThemeForPage()V
    .locals 4

    .line 124
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$style;->SudThemeGlifV4_DayNight:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$style;->SudThemeGlifV4_Light:I

    .line 128
    :goto_0
    new-instance v1, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    invoke-static {}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;-><init>(Lcom/google/android/setupdesign/util/ThemeResolver;)V

    .line 129
    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->build()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 134
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v1, v3

    .line 133
    invoke-virtual {v0, v2, v1}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Landroid/content/Intent;Z)I

    move-result v0

    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 137
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    return-void
.end method

.method private setupContent()V
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupdesign/template/RecyclerMixin;

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    .line 155
    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->setOnItemSelectedListener(Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;)V

    .line 157
    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getRootItemHierarchy()Lcom/google/android/setupdesign/items/ItemHierarchy;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/items/ItemGroup;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/ItemGroup;->clear()V

    .line 160
    iget-object v1, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mWarrantyInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 161
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 162
    :goto_0
    iget-object v4, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mWarrantyInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 163
    new-instance v4, Lcom/google/android/settings/warranty/SuwWarrantyActivity$CountryItem;

    iget-object v5, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mWarrantyInfos:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/settings/warranty/WarrantyInfo;

    invoke-virtual {v5}, Lcom/google/android/settings/warranty/WarrantyInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mWarrantyInfos:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/settings/warranty/WarrantyInfo;

    invoke-virtual {v6, p0}, Lcom/google/android/settings/warranty/WarrantyInfo;->getWarranty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/settings/warranty/SuwWarrantyActivity$CountryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v4}, Lcom/google/android/setupdesign/items/ItemGroup;->addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mWarrantyInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v3, v0

    div-long/2addr v1, v3

    .line 169
    invoke-static {v1, v2}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->calculateDurationInMillisUnitNow(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mLoadingTextTimeNano:J

    :cond_1
    return-void
.end method

.method private setupLayout()V
    .locals 2

    sget v0, Lcom/android/settings/R$layout;->suw_warranty_layout:I

    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    sget v0, Lcom/android/settings/R$id;->setup_wizard_layout:I

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->suw_warranty_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-direct {p0, v0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->styledString(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->suw_warranty_description_content:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object p0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    sget v1, Lcom/android/settings/R$id;->sud_layout_subtitle:I

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupTextViewStyle(Landroid/widget/TextView;)V
    .locals 5

    const-string v0, "google-sans-text"

    const/4 v1, 0x0

    .line 237
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->suw_warranty_dialog_textview_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->suw_warranty_dialog_textview_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 238
    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->suw_warranty_dialog_textview_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 244
    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lcom/android/settings/R$color;->sud_system_primary_text:I

    .line 246
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private showWarrantyContentDialog(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mIsDialogShown:Z

    const-string v0, "<br/><br/>"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->suw_warranty_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->suw_warranty_dialog:I

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    int-to-long v4, v3

    .line 216
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/Stream;->count()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 217
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-direct {p0, v4}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->setupTextViewStyle(Landroid/widget/TextView;)V

    .line 219
    aget-object v5, p1, v3

    invoke-direct {p0, v5}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->styledString(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_0
    sget-object p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 224
    sget-object p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->suw_warranty_positive_button_text:I

    .line 225
    invoke-direct {p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->dialogListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 224
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    sget-object p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    sput-object p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialog:Landroid/app/AlertDialog;

    .line 228
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 229
    sget-object p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    sget-object p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/google/android/settings/warranty/SuwWarrantyActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/warranty/SuwWarrantyActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 233
    sget-object p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->limited_warranty_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private styledString(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 0

    const/16 p0, 0x3f

    .line 251
    invoke-static {p1, p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private tryShowDialogWhenConfigChanged(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "isDialogShown"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    sget-object p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mIsDialogShown:Z

    .line 112
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isInitialSetupWizard(Landroid/content/Intent;)Z

    move-result v0

    .line 75
    invoke-static {p0}, Lcom/google/android/settings/warranty/WarrantyManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/warranty/WarrantyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/settings/warranty/WarrantyManager;->getWarrantyInfos()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mWarrantyInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->setThemeForPage()V

    .line 85
    invoke-direct {p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->setupLayout()V

    .line 86
    invoke-direct {p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->setupContent()V

    .line 87
    invoke-direct {p0}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->createFooterButton()V

    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->tryShowDialogWhenConfigChanged(Landroid/os/Bundle;)V

    return-void

    .line 78
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warranty page skipped, isInitSuw="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", or warranty is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuwWarrantyActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onItemSelected(Lcom/google/android/setupdesign/items/IItem;)V
    .locals 1

    .line 200
    instance-of v0, p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity$CountryItem;

    if-nez v0, :cond_0

    const-string p0, "SuwWarrantyActivity"

    const-string p1, "Unknown item clicked."

    .line 201
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_0
    check-cast p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity$CountryItem;

    invoke-virtual {p1}, Lcom/google/android/settings/warranty/SuwWarrantyActivity$CountryItem;->getWarrantyContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->showWarrantyContentDialog(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-boolean v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mIsDialogShown:Z

    const-string v1, "isDialogShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    sget-object p1, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->sAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mIsDialogShown:Z

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 95
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/settings/warranty/SuwWarrantyActivity;->mStartPageTimeNano:J

    return-void
.end method
