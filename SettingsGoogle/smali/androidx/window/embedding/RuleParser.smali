.class public final Landroidx/window/embedding/RuleParser;
.super Ljava/lang/Object;
.source "RuleParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRuleParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuleParser.kt\nandroidx/window/embedding/RuleParser\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,399:1\n1855#2,2:400\n*S KotlinDebug\n*F\n+ 1 RuleParser.kt\nandroidx/window/embedding/RuleParser\n*L\n123#1:400,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRuleParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuleParser.kt\nandroidx/window/embedding/RuleParser\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,399:1\n1855#2,2:400\n*S KotlinDebug\n*F\n+ 1 RuleParser.kt\nandroidx/window/embedding/RuleParser\n*L\n123#1:400,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/embedding/RuleParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/embedding/RuleParser;

    invoke-direct {v0}, Landroidx/window/embedding/RuleParser;-><init>()V

    sput-object v0, Landroidx/window/embedding/RuleParser;->INSTANCE:Landroidx/window/embedding/RuleParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addRuleWithDuplicatedTagCheck(Ljava/util/HashSet;Landroidx/window/embedding/EmbeddingRule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;",
            "Landroidx/window/embedding/EmbeddingRule;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-virtual {p2}, Landroidx/window/embedding/EmbeddingRule;->getTag()Ljava/lang/String;

    move-result-object p0

    .line 400
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/embedding/EmbeddingRule;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {v1}, Landroidx/window/embedding/EmbeddingRule;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicated tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". The tag must be unique in XML rule definition."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;
    .locals 9

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 375
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p0

    :goto_1
    if-nez v1, :cond_5

    .line 378
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 379
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x2e

    if-ne v1, v8, :cond_2

    .line 381
    new-instance p0, Landroid/content/ComponentName;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p2

    .line 385
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_3

    .line 387
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v1, p0

    .line 388
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    const-string p0, "*"

    .line 390
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_4

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 396
    :cond_4
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 376
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity name must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final parseActivityFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityFilter;
    .locals 3

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 359
    check-cast p2, Landroid/util/AttributeSet;

    .line 360
    sget-object v1, Landroidx/window/R$styleable;->ActivityFilter:[I

    const/4 v2, 0x0

    .line 358
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 364
    sget v0, Landroidx/window/R$styleable;->ActivityFilter_activityName:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    sget v1, Landroidx/window/R$styleable;->ActivityFilter_activityAction:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 368
    new-instance v1, Landroidx/window/embedding/ActivityFilter;

    const-string v2, "packageName"

    .line 369
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/RuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object p0

    .line 368
    invoke-direct {v1, p0, p2}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v1
.end method

.method private final parseActivityRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityRule;
    .locals 1

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 336
    check-cast p2, Landroid/util/AttributeSet;

    .line 337
    sget-object p1, Landroidx/window/R$styleable;->ActivityRule:[I

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 341
    sget p1, Landroidx/window/R$styleable;->ActivityRule_tag:I

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 342
    sget p2, Landroidx/window/R$styleable;->ActivityRule_alwaysExpand:I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 343
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    new-instance p0, Landroidx/window/embedding/ActivityRule$Builder;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/embedding/ActivityRule$Builder;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, p2}, Landroidx/window/embedding/ActivityRule$Builder;->setAlwaysExpand(Z)Landroidx/window/embedding/ActivityRule$Builder;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p0, p1}, Landroidx/window/embedding/ActivityRule$Builder;->setTag(Ljava/lang/String;)Landroidx/window/embedding/ActivityRule$Builder;

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroidx/window/embedding/ActivityRule$Builder;->build()Landroidx/window/embedding/ActivityRule;

    move-result-object p0

    return-object p0
.end method

.method private final parseSplitPairFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairFilter;
    .locals 3

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 308
    check-cast p2, Landroid/util/AttributeSet;

    .line 309
    sget-object v1, Landroidx/window/R$styleable;->SplitPairFilter:[I

    const/4 v2, 0x0

    .line 307
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 313
    sget v0, Landroidx/window/R$styleable;->SplitPairFilter_primaryActivityName:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    sget v1, Landroidx/window/R$styleable;->SplitPairFilter_secondaryActivityName:I

    .line 314
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    sget v2, Landroidx/window/R$styleable;->SplitPairFilter_secondaryActivityAction:I

    .line 317
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "packageName"

    .line 322
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/RuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object v0

    .line 323
    invoke-direct {p0, p1, v1}, Landroidx/window/embedding/RuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object p0

    .line 324
    new-instance p1, Landroidx/window/embedding/SplitPairFilter;

    invoke-direct {p1, v0, p0, p2}, Landroidx/window/embedding/SplitPairFilter;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p1
.end method

.method private final parseSplitPairRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairRule;
    .locals 11

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 137
    check-cast p2, Landroid/util/AttributeSet;

    .line 138
    sget-object p1, Landroidx/window/R$styleable;->SplitPairRule:[I

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 142
    sget p1, Landroidx/window/R$styleable;->SplitPairRule_tag:I

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 143
    sget p2, Landroidx/window/R$styleable;->SplitPairRule_splitRatio:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 145
    sget v1, Landroidx/window/R$styleable;->SplitPairRule_splitMinWidthDp:I

    const/16 v2, 0x258

    .line 144
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 149
    sget v3, Landroidx/window/R$styleable;->SplitPairRule_splitMinHeightDp:I

    .line 148
    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 153
    sget v4, Landroidx/window/R$styleable;->SplitPairRule_splitMinSmallestWidthDp:I

    .line 152
    invoke-virtual {p0, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 157
    sget v4, Landroidx/window/R$styleable;->SplitPairRule_splitMaxAspectRatioInPortrait:I

    .line 158
    sget-object v5, Landroidx/window/embedding/SplitRule;->SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {v5}, Landroidx/window/embedding/EmbeddingAspectRatio;->getValue$window_release()F

    move-result v5

    .line 156
    invoke-virtual {p0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 161
    sget v5, Landroidx/window/R$styleable;->SplitPairRule_splitMaxAspectRatioInLandscape:I

    .line 162
    sget-object v6, Landroidx/window/embedding/SplitRule;->SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {v6}, Landroidx/window/embedding/EmbeddingAspectRatio;->getValue$window_release()F

    move-result v6

    .line 160
    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 165
    sget v6, Landroidx/window/R$styleable;->SplitPairRule_splitLayoutDirection:I

    .line 166
    sget-object v7, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-virtual {v7}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->getValue$window_release()I

    move-result v7

    .line 164
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 169
    sget v7, Landroidx/window/R$styleable;->SplitPairRule_finishPrimaryWithSecondary:I

    .line 170
    sget-object v8, Landroidx/window/embedding/SplitRule$FinishBehavior;->NEVER:Landroidx/window/embedding/SplitRule$FinishBehavior;

    invoke-virtual {v8}, Landroidx/window/embedding/SplitRule$FinishBehavior;->getValue$window_release()I

    move-result v8

    .line 168
    invoke-virtual {p0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 173
    sget v8, Landroidx/window/R$styleable;->SplitPairRule_finishSecondaryWithPrimary:I

    .line 174
    sget-object v9, Landroidx/window/embedding/SplitRule$FinishBehavior;->ALWAYS:Landroidx/window/embedding/SplitRule$FinishBehavior;

    invoke-virtual {v9}, Landroidx/window/embedding/SplitRule$FinishBehavior;->getValue$window_release()I

    move-result v9

    .line 172
    invoke-virtual {p0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 176
    sget v9, Landroidx/window/R$styleable;->SplitPairRule_clearTop:I

    invoke-virtual {p0, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 178
    sget v9, Landroidx/window/R$styleable;->SplitPairRule_animationBackgroundColor:I

    .line 179
    sget-object v10, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->DEFAULT:Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    invoke-virtual {v10}, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->getValue$window_release()I

    move-result v10

    .line 177
    invoke-virtual {p0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 181
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    new-instance p0, Landroidx/window/embedding/SplitAttributes$Builder;

    invoke-direct {p0}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    .line 184
    sget-object v10, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    invoke-virtual {v10, p2}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;->buildSplitTypeFromValue$window_release(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/window/embedding/SplitAttributes$Builder;->setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p0

    .line 186
    sget-object p2, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->Companion:Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;

    invoke-virtual {p2, v6}, Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;->getLayoutDirectionFromValue$window_release(I)Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    move-result-object p2

    .line 185
    invoke-virtual {p0, p2}, Landroidx/window/embedding/SplitAttributes$Builder;->setLayoutDirection(Landroidx/window/embedding/SplitAttributes$LayoutDirection;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p0

    .line 189
    sget-object p2, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->Companion:Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;

    invoke-virtual {p2, v9}, Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;->buildFromValue$window_release(I)Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    move-result-object p2

    .line 188
    invoke-virtual {p0, p2}, Landroidx/window/embedding/SplitAttributes$Builder;->setAnimationBackgroundColor(Landroidx/window/embedding/SplitAttributes$BackgroundColor;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$Builder;->build()Landroidx/window/embedding/SplitAttributes;

    move-result-object p0

    .line 193
    new-instance p2, Landroidx/window/embedding/SplitPairRule$Builder;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p2, v6}, Landroidx/window/embedding/SplitPairRule$Builder;-><init>(Ljava/util/Set;)V

    .line 194
    invoke-virtual {p2, p1}, Landroidx/window/embedding/SplitPairRule$Builder;->setTag(Ljava/lang/String;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1, v1}, Landroidx/window/embedding/SplitPairRule$Builder;->setMinWidthDp(I)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p1, v3}, Landroidx/window/embedding/SplitPairRule$Builder;->setMinHeightDp(I)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v2}, Landroidx/window/embedding/SplitPairRule$Builder;->setMinSmallestWidthDp(I)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 198
    sget-object p2, Landroidx/window/embedding/EmbeddingAspectRatio;->Companion:Landroidx/window/embedding/EmbeddingAspectRatio$Companion;

    invoke-virtual {p2, v4}, Landroidx/window/embedding/EmbeddingAspectRatio$Companion;->buildAspectRatioFromValue$window_release(F)Landroidx/window/embedding/EmbeddingAspectRatio;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/window/embedding/SplitPairRule$Builder;->setMaxAspectRatioInPortrait(Landroidx/window/embedding/EmbeddingAspectRatio;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p2, v5}, Landroidx/window/embedding/EmbeddingAspectRatio$Companion;->buildAspectRatioFromValue$window_release(F)Landroidx/window/embedding/EmbeddingAspectRatio;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/window/embedding/SplitPairRule$Builder;->setMaxAspectRatioInLandscape(Landroidx/window/embedding/EmbeddingAspectRatio;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 201
    sget-object p2, Landroidx/window/embedding/SplitRule$FinishBehavior;->Companion:Landroidx/window/embedding/SplitRule$FinishBehavior$Companion;

    invoke-virtual {p2, v7}, Landroidx/window/embedding/SplitRule$FinishBehavior$Companion;->getFinishBehaviorFromValue$window_release(I)Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-result-object v1

    .line 200
    invoke-virtual {p1, v1}, Landroidx/window/embedding/SplitPairRule$Builder;->setFinishPrimaryWithSecondary(Landroidx/window/embedding/SplitRule$FinishBehavior;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p2, v8}, Landroidx/window/embedding/SplitRule$FinishBehavior$Companion;->getFinishBehaviorFromValue$window_release(I)Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-result-object p2

    .line 202
    invoke-virtual {p1, p2}, Landroidx/window/embedding/SplitPairRule$Builder;->setFinishSecondaryWithPrimary(Landroidx/window/embedding/SplitRule$FinishBehavior;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1, v0}, Landroidx/window/embedding/SplitPairRule$Builder;->setClearTop(Z)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1, p0}, Landroidx/window/embedding/SplitPairRule$Builder;->setDefaultSplitAttributes(Landroidx/window/embedding/SplitAttributes;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Landroidx/window/embedding/SplitPairRule$Builder;->build()Landroidx/window/embedding/SplitPairRule;

    move-result-object p0

    return-object p0
.end method

.method private final parseSplitPlaceholderRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPlaceholderRule;
    .locals 12

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 214
    check-cast p2, Landroid/util/AttributeSet;

    .line 215
    sget-object v0, Landroidx/window/R$styleable;->SplitPlaceholderRule:[I

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 219
    sget p2, Landroidx/window/R$styleable;->SplitPlaceholderRule_tag:I

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 221
    sget v0, Landroidx/window/R$styleable;->SplitPlaceholderRule_placeholderActivityName:I

    .line 220
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    sget v2, Landroidx/window/R$styleable;->SplitPlaceholderRule_stickyPlaceholder:I

    .line 223
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 228
    sget v2, Landroidx/window/R$styleable;->SplitPlaceholderRule_finishPrimaryWithPlaceholder:I

    .line 229
    sget-object v3, Landroidx/window/embedding/SplitRule$FinishBehavior;->ALWAYS:Landroidx/window/embedding/SplitRule$FinishBehavior;

    invoke-virtual {v3}, Landroidx/window/embedding/SplitRule$FinishBehavior;->getValue$window_release()I

    move-result v3

    .line 227
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 231
    sget-object v3, Landroidx/window/embedding/SplitRule$FinishBehavior;->NEVER:Landroidx/window/embedding/SplitRule$FinishBehavior;

    invoke-virtual {v3}, Landroidx/window/embedding/SplitRule$FinishBehavior;->getValue$window_release()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 237
    sget v3, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitRatio:I

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 239
    sget v4, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitMinWidthDp:I

    const/16 v5, 0x258

    .line 238
    invoke-virtual {p0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 243
    sget v6, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitMinHeightDp:I

    .line 242
    invoke-virtual {p0, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 247
    sget v7, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitMinSmallestWidthDp:I

    .line 246
    invoke-virtual {p0, v7, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 251
    sget v7, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitMaxAspectRatioInPortrait:I

    .line 252
    sget-object v8, Landroidx/window/embedding/SplitRule;->SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {v8}, Landroidx/window/embedding/EmbeddingAspectRatio;->getValue$window_release()F

    move-result v8

    .line 250
    invoke-virtual {p0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 255
    sget v8, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitMaxAspectRatioInLandscape:I

    .line 256
    sget-object v9, Landroidx/window/embedding/SplitRule;->SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {v9}, Landroidx/window/embedding/EmbeddingAspectRatio;->getValue$window_release()F

    move-result v9

    .line 254
    invoke-virtual {p0, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 259
    sget v9, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitLayoutDirection:I

    .line 260
    sget-object v10, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-virtual {v10}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->getValue$window_release()I

    move-result v10

    .line 258
    invoke-virtual {p0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 263
    sget v10, Landroidx/window/R$styleable;->SplitPlaceholderRule_animationBackgroundColor:I

    .line 264
    sget-object v11, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->DEFAULT:Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    invoke-virtual {v11}, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->getValue$window_release()I

    move-result v11

    .line 262
    invoke-virtual {p0, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 266
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    new-instance p0, Landroidx/window/embedding/SplitAttributes$Builder;

    invoke-direct {p0}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    .line 269
    sget-object v11, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    invoke-virtual {v11, v3}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;->buildSplitTypeFromValue$window_release(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/window/embedding/SplitAttributes$Builder;->setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p0

    .line 271
    sget-object v3, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->Companion:Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;

    invoke-virtual {v3, v9}, Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;->getLayoutDirectionFromValue$window_release(I)Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    move-result-object v3

    .line 270
    invoke-virtual {p0, v3}, Landroidx/window/embedding/SplitAttributes$Builder;->setLayoutDirection(Landroidx/window/embedding/SplitAttributes$LayoutDirection;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p0

    .line 274
    sget-object v3, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->Companion:Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;

    invoke-virtual {v3, v10}, Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;->buildFromValue$window_release(I)Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    move-result-object v3

    .line 273
    invoke-virtual {p0, v3}, Landroidx/window/embedding/SplitAttributes$Builder;->setAnimationBackgroundColor(Landroidx/window/embedding/SplitAttributes$BackgroundColor;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$Builder;->build()Landroidx/window/embedding/SplitAttributes;

    move-result-object p0

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 278
    sget-object v3, Landroidx/window/embedding/RuleParser;->INSTANCE:Landroidx/window/embedding/RuleParser;

    const-string v9, "packageName"

    .line 279
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-direct {v3, p1, v0}, Landroidx/window/embedding/RuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object p1

    .line 283
    new-instance v0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    .line 284
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 285
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const-string v9, "Intent().setComponent(pl\u2026eholderActivityClassName)"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-direct {v0, v3, p1}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;-><init>(Ljava/util/Set;Landroid/content/Intent;)V

    .line 287
    invoke-virtual {v0, p2}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setTag(Ljava/lang/String;)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    .line 288
    invoke-virtual {p1, v4}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setMinWidthDp(I)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    .line 289
    invoke-virtual {p1, v6}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setMinHeightDp(I)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    .line 290
    invoke-virtual {p1, v5}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setMinSmallestWidthDp(I)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    .line 291
    sget-object p2, Landroidx/window/embedding/EmbeddingAspectRatio;->Companion:Landroidx/window/embedding/EmbeddingAspectRatio$Companion;

    invoke-virtual {p2, v7}, Landroidx/window/embedding/EmbeddingAspectRatio$Companion;->buildAspectRatioFromValue$window_release(F)Landroidx/window/embedding/EmbeddingAspectRatio;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setMaxAspectRatioInPortrait(Landroidx/window/embedding/EmbeddingAspectRatio;)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    .line 292
    invoke-virtual {p2, v8}, Landroidx/window/embedding/EmbeddingAspectRatio$Companion;->buildAspectRatioFromValue$window_release(F)Landroidx/window/embedding/EmbeddingAspectRatio;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setMaxAspectRatioInLandscape(Landroidx/window/embedding/EmbeddingAspectRatio;)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    .line 293
    invoke-virtual {p1, v1}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setSticky(Z)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    .line 295
    sget-object p2, Landroidx/window/embedding/SplitRule$FinishBehavior;->Companion:Landroidx/window/embedding/SplitRule$FinishBehavior$Companion;

    invoke-virtual {p2, v2}, Landroidx/window/embedding/SplitRule$FinishBehavior$Companion;->getFinishBehaviorFromValue$window_release(I)Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-result-object p2

    .line 294
    invoke-virtual {p1, p2}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setFinishPrimaryWithPlaceholder(Landroidx/window/embedding/SplitRule$FinishBehavior;)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    .line 296
    invoke-virtual {p1, p0}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setDefaultSplitAttributes(Landroidx/window/embedding/SplitAttributes;)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object p0

    .line 297
    invoke-virtual {p0}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->build()Landroidx/window/embedding/SplitPlaceholderRule;

    move-result-object p0

    return-object p0

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Never is not a valid configuration for Placeholder activities. Please use FINISH_ALWAYS or FINISH_ADJACENT instead or refer to the current API"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final parseRules$window_release(Landroid/content/Context;I)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    const-string/jumbo v0, "resources.getXml(staticRuleResourceId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 54
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    :goto_0
    const/4 v7, 0x1

    if-eq v3, v7, :cond_d

    const/4 v7, 0x3

    if-ne v3, v7, :cond_0

    .line 59
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_d

    .line 61
    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_c

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "split-config"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_6

    .line 65
    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v7, "SplitPlaceholderRule"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 74
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/RuleParser;->parseSplitPlaceholderRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPlaceholderRule;

    move-result-object v3

    .line 76
    invoke-direct {p0, v0, v3}, Landroidx/window/embedding/RuleParser;->addRuleWithDuplicatedTagCheck(Ljava/util/HashSet;Landroidx/window/embedding/EmbeddingRule;)V

    move-object v4, v1

    move-object v5, v4

    :goto_1
    move-object v6, v3

    goto/16 :goto_5

    :sswitch_1
    const-string v7, "ActivityRule"

    .line 65
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_5

    .line 92
    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/RuleParser;->parseActivityRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityRule;

    move-result-object v3

    .line 93
    invoke-direct {p0, v0, v3}, Landroidx/window/embedding/RuleParser;->addRuleWithDuplicatedTagCheck(Ljava/util/HashSet;Landroidx/window/embedding/EmbeddingRule;)V

    move-object v5, v1

    move-object v6, v5

    :goto_2
    move-object v4, v3

    goto/16 :goto_5

    :sswitch_2
    const-string v7, "SplitPairFilter"

    .line 65
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v5, :cond_5

    .line 86
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/RuleParser;->parseSplitPairFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairFilter;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v5, v3}, Landroidx/window/embedding/SplitPairRule;->plus$window_release(Landroidx/window/embedding/SplitPairFilter;)Landroidx/window/embedding/SplitPairRule;

    move-result-object v3

    .line 89
    invoke-direct {p0, v0, v3}, Landroidx/window/embedding/RuleParser;->addRuleWithDuplicatedTagCheck(Ljava/util/HashSet;Landroidx/window/embedding/EmbeddingRule;)V

    goto :goto_3

    .line 82
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Found orphaned SplitPairFilter outside of SplitPairRule"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_3
    const-string v7, "SplitPairRule"

    .line 65
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    .line 67
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/RuleParser;->parseSplitPairRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairRule;

    move-result-object v3

    .line 69
    invoke-direct {p0, v0, v3}, Landroidx/window/embedding/RuleParser;->addRuleWithDuplicatedTagCheck(Ljava/util/HashSet;Landroidx/window/embedding/EmbeddingRule;)V

    move-object v4, v1

    move-object v6, v4

    :goto_3
    move-object v5, v3

    goto :goto_5

    :sswitch_4
    const-string v7, "ActivityFilter"

    .line 65
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    if-nez v4, :cond_9

    if-eqz v6, :cond_8

    goto :goto_4

    .line 100
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Found orphaned ActivityFilter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_9
    :goto_4
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/RuleParser;->parseActivityFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityFilter;

    move-result-object v3

    if-eqz v4, :cond_a

    .line 106
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v4, v3}, Landroidx/window/embedding/ActivityRule;->plus$window_release(Landroidx/window/embedding/ActivityFilter;)Landroidx/window/embedding/ActivityRule;

    move-result-object v3

    .line 108
    invoke-direct {p0, v0, v3}, Landroidx/window/embedding/RuleParser;->addRuleWithDuplicatedTagCheck(Ljava/util/HashSet;Landroidx/window/embedding/EmbeddingRule;)V

    goto :goto_2

    :cond_a
    if-eqz v6, :cond_b

    .line 110
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v6, v3}, Landroidx/window/embedding/SplitPlaceholderRule;->plus$window_release(Landroidx/window/embedding/ActivityFilter;)Landroidx/window/embedding/SplitPlaceholderRule;

    move-result-object v3

    .line 112
    invoke-direct {p0, v0, v3}, Landroidx/window/embedding/RuleParser;->addRuleWithDuplicatedTagCheck(Ljava/util/HashSet;Landroidx/window/embedding/EmbeddingRule;)V

    goto/16 :goto_1

    .line 116
    :cond_b
    :goto_5
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto/16 :goto_0

    .line 62
    :cond_c
    :goto_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto/16 :goto_0

    :cond_d
    return-object v0

    :catch_0
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1e7baf87 -> :sswitch_4
        0x1f056610 -> :sswitch_3
        0x5e21258c -> :sswitch_2
        0x6ae032cb -> :sswitch_1
        0x7a3f98b5 -> :sswitch_0
    .end sparse-switch
.end method
