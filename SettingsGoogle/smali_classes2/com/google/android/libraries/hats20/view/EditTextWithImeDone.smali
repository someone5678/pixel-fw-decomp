.class public Lcom/google/android/libraries/hats20/view/EditTextWithImeDone;
.super Landroid/widget/EditText;
.source "EditTextWithImeDone.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 21
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    .line 24
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, -0x100

    const/4 v1, 0x6

    or-int/2addr v0, v1

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    .line 28
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 30
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    return-object p0
.end method
