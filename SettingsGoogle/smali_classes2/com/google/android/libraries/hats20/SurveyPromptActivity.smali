.class public Lcom/google/android/libraries/hats20/SurveyPromptActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SurveyPromptActivity.java"

# interfaces
.implements Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;
.implements Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;


# instance fields
.field private final activityFinishHandler:Landroid/os/Handler;

.field private answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

.field private answerBeaconTransmitter:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

.field private idleResourceManager:Lcom/google/android/libraries/hats20/IdleResourceManager;

.field private isFullWidth:Z

.field private isSubmitting:Z

.field private itemMeasureCount:I

.field private layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

.field private overallContainer:Landroid/widget/FrameLayout;

.field private siteId:Ljava/lang/String;

.field private surveyContainer:Landroid/widget/LinearLayout;

.field private surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

.field private final surveyPreDrawMeasurements:Landroid/graphics/Point;

.field private surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

.field private surveyViewPagerAdapter:Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;

.field private thankYouTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyPreDrawMeasurements:Landroid/graphics/Point;

    .line 81
    iput v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->itemMeasureCount:I

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->activityFinishHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/hats20/SurveyPromptActivity;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setBeaconTypeAndTransmit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->overallContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)Lcom/google/android/libraries/hats20/IdleResourceManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->idleResourceManager:Lcom/google/android/libraries/hats20/IdleResourceManager;

    return-object p0
.end method

.method private addCurrentItemResponseToAnswerBeacon()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->getCurrentItemQuestionResponse()Lcom/google/android/libraries/hats20/answer/QuestionResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;->setQuestionResponse(ILcom/google/android/libraries/hats20/answer/QuestionResponse;)Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    :cond_0
    return-void
.end method

.method private configureSurveyWindowParameters()V
    .locals 4

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 257
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/16 v3, 0x55

    .line 260
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 262
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->getFinalizedSurveyDimensions()Landroid/graphics/Point;

    move-result-object v3

    .line 263
    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 264
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 266
    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->isNavigationBarOnRight(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getNavigationBarDimensionPixelSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getNavigationBarDimensionPixelSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 274
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    invoke-virtual {v2}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->shouldSurveyDisplayScrim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->showWindowScrim()V

    .line 277
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private sendWindowStateChangeAccessibilityEvent()V
    .locals 1

    .line 459
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->getCurrentItemFragment()Lcom/google/android/libraries/hats20/view/BaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x20

    .line 460
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private setBeaconTypeAndTransmit(Ljava/lang/String;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;->setBeaconType(Ljava/lang/String;)Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    .line 589
    iget-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeaconTransmitter:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->transmit(Lcom/google/android/libraries/hats20/answer/AnswerBeacon;)V

    return-void
.end method

.method private setNextButtonEnabled(Z)V
    .locals 1

    .line 530
    sget v0, Lcom/google/android/libraries/hats20/R$id;->hats_lib_next:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    if-eqz p0, :cond_1

    .line 532
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    .line 533
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 534
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setUpSurveyPager([Lcom/google/android/libraries/hats20/model/Question;Landroid/os/Bundle;)V
    .locals 2

    .line 373
    new-instance v0, Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Lcom/google/android/libraries/hats20/model/Question;)V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPagerAdapter:Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;

    .line 375
    sget p1, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_viewpager:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    .line 376
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPagerAdapter:Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 377
    iget-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    if-eqz p2, :cond_0

    .line 380
    iget-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    const-string v0, "CurrentQuestionIndex"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/model/SurveyController;->shouldIncludeSurveyControls()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 384
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->switchNextTextToSubmitIfNeeded()V

    :cond_1
    return-void
.end method

.method private showWindowScrim()V
    .locals 1

    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x2

    .line 290
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x20

    .line 291
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, 0x40000

    .line 292
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x3ecccccd    # 0.4f

    .line 293
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method

.method private signalSurveyBegun()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;->setShown(I)Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    .line 514
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->forceLayout()V

    return-void
.end method

.method private submit()V
    .locals 12

    const/4 v0, 0x1

    .line 593
    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->isSubmitting:Z

    .line 594
    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->idleResourceManager:Lcom/google/android/libraries/hats20/IdleResourceManager;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/hats20/IdleResourceManager;->setIsThankYouAnimating(Z)V

    .line 596
    sget v1, Lcom/google/android/libraries/hats20/R$id;->hats_lib_close_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 600
    iget-object v2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyContainer:Landroid/widget/LinearLayout;

    new-array v3, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x15e

    .line 601
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 602
    new-instance v3, Lcom/google/android/libraries/hats20/SurveyPromptActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity$3;-><init>(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v3, 0x2

    new-array v8, v3, [I

    .line 609
    iget-object v9, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->overallContainer:Landroid/widget/FrameLayout;

    .line 611
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    aput v9, v8, v5

    .line 612
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_thank_you_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    aput v9, v8, v0

    .line 610
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 613
    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 614
    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 615
    new-instance v9, Lcom/google/android/libraries/hats20/SurveyPromptActivity$4;

    invoke-direct {v9, p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity$4;-><init>(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 625
    iget-object v9, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->thankYouTextView:Landroid/widget/TextView;

    new-array v10, v0, [F

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v10, v5

    invoke-static {v9, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 626
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x2bc

    .line 627
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 628
    iget-object v6, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->thankYouTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object v6, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->thankYouTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v6, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->activityFinishHandler:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/libraries/hats20/SurveyPromptActivity$5;

    invoke-direct {v7, p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity$5;-><init>(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)V

    const-wide/16 v9, 0x960

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x3

    new-array p0, p0, [Landroid/animation/Animator;

    aput-object v2, p0, v5

    aput-object v8, p0, v0

    aput-object v4, p0, v3

    .line 640
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 641
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private switchNextTextToSubmitIfNeeded()V
    .locals 1

    .line 542
    sget v0, Lcom/google/android/libraries/hats20/R$id;->hats_lib_next:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 543
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->isLastQuestion()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 544
    sget p0, Lcom/google/android/libraries/hats20/R$string;->hats_lib_submit:I

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method private transitionToSurveyMode()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->fireOnPageScrolledIntoViewListener()V

    .line 434
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;->hasBeaconType()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sv"

    .line 436
    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setBeaconTypeAndTransmit(Ljava/lang/String;)V

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->configureSurveyWindowParameters()V

    .line 442
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 443
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->updateSurveyLayoutParameters()V

    .line 444
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->updateSurveyFullBleed()V

    .line 446
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->shouldSurveyDisplayCloseButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    sget v0, Lcom/google/android/libraries/hats20/R$id;->hats_lib_close_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->sendWindowStateChangeAccessibilityEvent()V

    return-void
.end method

.method private updateSurveyLayoutParameters()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->overallContainer:Landroid/widget/FrameLayout;

    .line 471
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 473
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->getFinalizedSurveyDimensions()Landroid/graphics/Point;

    move-result-object v1

    .line 475
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 476
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 478
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->overallContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private wireUpCloseButton()V
    .locals 2

    .line 342
    sget v0, Lcom/google/android/libraries/hats20/R$id;->hats_lib_close_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/hats20/SurveyPromptActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity$2;-><init>(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private wireUpSurveyControls()V
    .locals 2

    .line 329
    sget v0, Lcom/google/android/libraries/hats20/R$id;->hats_lib_next:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 330
    new-instance v1, Lcom/google/android/libraries/hats20/SurveyPromptActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity$1;-><init>(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getFinalizedSurveyDimensions()Landroid/graphics/Point;
    .locals 3

    .line 658
    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getUsableContentDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 659
    new-instance v1, Landroid/graphics/Point;

    iget-boolean v2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->isFullWidth:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    invoke-virtual {v2}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->getSurveyMaxWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    .line 661
    invoke-virtual {v2}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->getSurveyMaxHeight()I

    move-result v2

    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyPreDrawMeasurements:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getIdleResourceManager()Lcom/google/android/libraries/hats20/IdleResourceManager;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->idleResourceManager:Lcom/google/android/libraries/hats20/IdleResourceManager;

    return-object p0
.end method

.method public getMeasureSpecs()Landroid/graphics/Point;
    .locals 3

    .line 391
    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getUsableContentDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 394
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    invoke-virtual {v2}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->getSurveyMaxHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 395
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->getSurveyMaxWidth()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->x:I

    .line 398
    new-instance p0, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/high16 v2, -0x80000000

    .line 399
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 400
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public getSurveyContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 645
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public nextPageOrSubmit()V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->getCurrentItemFragment()Lcom/google/android/libraries/hats20/view/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->getCurrentItemFragment()Lcom/google/android/libraries/hats20/view/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->closeKeyboard()V

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->addCurrentItemResponseToAnswerBeacon()V

    .line 558
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->isLastQuestion()Z

    move-result v0

    const-string v1, "HatsLibSurveyActivity"

    if-eqz v0, :cond_1

    const-string v0, "Survey completed, submitting."

    .line 559
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "a"

    .line 560
    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setBeaconTypeAndTransmit(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->submit()V

    goto :goto_0

    :cond_1
    const-string v0, "pa"

    .line 563
    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setBeaconTypeAndTransmit(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->navigateToNextPage()V

    .line 565
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    iget-object v2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;->setShown(I)Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    .line 566
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->switchNextTextToSubmitIfNeeded()V

    .line 567
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->sendWindowStateChangeAccessibilityEvent()V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 568
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "Showing question: %d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "o"

    .line 353
    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setBeaconTypeAndTransmit(Ljava/lang/String;)V

    .line 354
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 170
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, ""

    .line 171
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v0, Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SiteId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->siteId:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SurveyController"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/model/SurveyController;

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    const-string v0, "AnswerBeacon"

    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    :goto_0
    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    const-string v1, "IsSubmitting"

    .line 182
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->isSubmitting:Z

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "IsFullWidth"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->isFullWidth:Z

    .line 184
    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->siteId:Ljava/lang/String;

    const-string v2, "HatsLibSurveyActivity"

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 192
    :cond_2
    invoke-static {}, Lcom/google/android/libraries/hats20/HatsClient;->markSurveyRunning()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    const-string v3, "created with savedInstanceState"

    goto :goto_2

    :cond_3
    const-string v3, "created anew"

    :goto_2
    aput-object v3, v1, v0

    const/4 v0, 0x1

    .line 195
    iget-object v3, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->siteId:Ljava/lang/String;

    aput-object v3, v1, v0

    const-string v0, "Activity %s with site ID: %s"

    .line 194
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    .line 199
    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/SurveyController;->getAnswerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;-><init>(Ljava/lang/String;Lcom/google/android/libraries/hats20/storage/HatsDataStore;)V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeaconTransmitter:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    .line 201
    sget v0, Lcom/google/android/libraries/hats20/R$layout;->hats_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 202
    sget v0, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyContainer:Landroid/widget/LinearLayout;

    .line 203
    sget v0, Lcom/google/android/libraries/hats20/R$id;->hats_lib_overall_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->overallContainer:Landroid/widget/FrameLayout;

    .line 205
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->wireUpCloseButton()V

    .line 207
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->overallContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/google/android/libraries/hats20/R$id;->hats_lib_thank_you:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->thankYouTextView:Landroid/widget/TextView;

    .line 208
    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/SurveyController;->getThankYouMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->thankYouTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/SurveyController;->getThankYouMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/model/SurveyController;->shouldIncludeSurveyControls()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_controls:I

    iget-object v2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/model/SurveyController;->getQuestions()[Lcom/google/android/libraries/hats20/model/Question;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setUpSurveyPager([Lcom/google/android/libraries/hats20/model/Question;Landroid/os/Bundle;)V

    .line 216
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->signalSurveyBegun()V

    .line 217
    iget-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/model/SurveyController;->shouldIncludeSurveyControls()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 218
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->wireUpSurveyControls()V

    .line 220
    :cond_5
    new-instance p1, Lcom/google/android/libraries/hats20/IdleResourceManager;

    invoke-direct {p1}, Lcom/google/android/libraries/hats20/IdleResourceManager;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->idleResourceManager:Lcom/google/android/libraries/hats20/IdleResourceManager;

    return-void

    :cond_6
    :goto_3
    const-string p1, "Required EXTRAS not found in the intent, bailing out."

    .line 185
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 237
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/google/android/libraries/hats20/HatsClient;->markSurveyFinished()V

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->activityFinishHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFragmentContentMeasurement(II)V
    .locals 2

    .line 406
    iget v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->itemMeasureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->itemMeasureCount:I

    .line 407
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyPreDrawMeasurements:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 408
    iget-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyPreDrawMeasurements:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 410
    iget p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->itemMeasureCount:I

    iget-object p2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPagerAdapter:Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;

    invoke-virtual {p2}, Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;->getCount()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 411
    iput p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->itemMeasureCount:I

    .line 414
    sget p1, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_controls_container:I

    .line 415
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 417
    iget-object p2, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyPreDrawMeasurements:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->transitionToSurveyMode()V

    :cond_1
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    .line 229
    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->isSubmitting:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onQuestionProgressableChanged(ZLandroidx/fragment/app/Fragment;)V
    .locals 1

    .line 521
    invoke-static {p2}, Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;->getQuestionIndex(Landroidx/fragment/app/Fragment;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 522
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setNextButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 359
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->surveyViewPager:Lcom/google/android/libraries/hats20/view/SurveyViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "CurrentQuestionIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->isSubmitting:Z

    const-string v1, "IsSubmitting"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    const-string v0, "AnswerBeacon"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->overallContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "HatsLibSurveyActivity"

    const-string v0, "User clicked outside of survey root container. Closing."

    .line 309
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;->hasBeaconTypeFullAnswer()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "o"

    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setBeaconTypeAndTransmit(Ljava/lang/String;)V

    .line 316
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 320
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setIsMultipleChoiceSelectionAnimating(Z)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->idleResourceManager:Lcom/google/android/libraries/hats20/IdleResourceManager;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/IdleResourceManager;->setIsMultipleChoiceSelectionAnimating(Z)V

    return-void
.end method

.method public updateSurveyFullBleed()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->isSurveyFullBleed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->overallContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_container_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 492
    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->overallContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_0
    return-void
.end method
