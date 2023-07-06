.class public Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;
.super Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;
.source "MultipleChoiceFragment.java"


# instance fields
.field private answers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

.field private hasSmileys:Z

.field private ordering:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

.field private questionText:Ljava/lang/String;

.field private selectedResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->hasSmileys:Z

    .line 46
    new-instance v0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;[Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->removeOnClickListenersAndDisableClickEvents([Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->selectedResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->answers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;)Lcom/google/android/libraries/hats20/view/QuestionMetrics;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    return-object p0
.end method

.method public static newInstance(Lcom/google/android/libraries/hats20/model/Question;)Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;
    .locals 5

    .line 61
    new-instance v0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;-><init>()V

    .line 63
    move-object v1, p0

    check-cast v1, Lcom/google/android/libraries/hats20/model/QuestionMultipleChoice;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionMultipleChoice;->getSpriteName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "smileys"

    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionMultipleChoice;->getAnswers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    const-string v1, "HatsLibMultiChoiceFrag"

    const-string v2, "Multiple choice with smileys survey must have exactly five answers."

    .line 67
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v3, v2

    .line 70
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/Question;->getQuestionText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "QuestionText"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    check-cast p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleChoice;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionMultipleChoice;->getAnswers()Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "AnswersAsArray"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionMultipleChoice;->getOrdering()Ljava/util/ArrayList;

    move-result-object p0

    const-string v2, "OrderingAsArray"

    .line 73
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "Smileys"

    .line 75
    invoke-virtual {v1, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private removeOnClickListenersAndDisableClickEvents([Landroid/view/View;)V
    .locals 4

    .line 236
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    .line 237
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public computeQuestionResponse()Lcom/google/android/libraries/hats20/answer/QuestionResponse;
    .locals 3

    .line 204
    invoke-static {}, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->builder()Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->selectedResponse:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->addResponse(Ljava/lang/String;)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->getDelayMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->setDelayMs(J)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    .line 211
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->ordering:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 212
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->setOrdering(Ljava/util/List;)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    .line 216
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->build()Lcom/google/android/libraries/hats20/answer/QuestionResponse;

    move-result-object p0

    return-object p0
.end method

.method public createScrollViewContents()Landroid/view/View;
    .locals 8

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 142
    sget v1, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_scrollable_answer_content_container:I

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 144
    sget v2, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_answers_container:I

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 147
    iget-object v3, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    .line 148
    :goto_0
    iget-object v5, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 149
    iget-boolean v5, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->hasSmileys:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 150
    sget v5, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_question_multiple_choice_with_smileys_item:I

    invoke-virtual {v0, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v4

    .line 153
    sget v6, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_multiple_choice_text:I

    .line 154
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 155
    iget-object v6, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v6, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    aget-object v5, v3, v4

    sget v6, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_multiple_choice_icon:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sget-object v6, Lcom/google/android/libraries/hats20/model/QuestionMultipleChoice;->READONLY_SURVEY_RATING_ICON_RESOURCE_MAP:Ljava/util/Map;

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 158
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 161
    :cond_0
    sget v5, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_question_multiple_choice_item:I

    invoke-virtual {v0, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 163
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v4

    .line 164
    check-cast v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    aget-object v5, v3, v4

    check-cast v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    :goto_1
    aget-object v5, v3, v4

    new-instance v6, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;-><init>(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;[Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v1
.end method

.method getQuestionText()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionText:Ljava/lang/String;

    return-object p0
.end method

.method public isResponseSatisfactory()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QuestionText"

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionText:Ljava/lang/String;

    const-string v1, "AnswersAsArray"

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->answers:Ljava/util/ArrayList;

    const-string v1, "OrderingAsArray"

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->ordering:Ljava/util/ArrayList;

    const-string v1, "Smileys"

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->hasSmileys:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "SelectedResponse"

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->selectedResponse:Ljava/lang/String;

    const-string v0, "QuestionMetrics"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    if-nez p1, :cond_1

    .line 95
    new-instance p1, Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-direct {p1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->watch(Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->cleanUp()V

    .line 128
    invoke-super {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->onDetach()V

    return-void
.end method

.method public onPageScrolledIntoView()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsShown()V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->isResponseSatisfactory()Z

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;->onQuestionProgressableChanged(ZLandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->selectedResponse:Ljava/lang/String;

    const-string v1, "SelectedResponse"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    const-string v0, "QuestionMetrics"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
