.class public Lc/d/a/c/o0/h$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/o0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/c/o0/h;


# direct methods
.method public constructor <init>(Lc/d/a/c/o0/h;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/o0/h$d;->a:Lc/d/a/c/o0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 12

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/c/o0/h;->e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/o0/h$d;->a:Lc/d/a/c/o0/h;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lc/d/a/c/o0/h;->q:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    iget-object v5, v1, Lc/d/a/c/o0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v1, v1, Lc/d/a/c/o0/h;->m:Lc/d/a/c/j0/h;

    goto :goto_0

    :cond_0
    if-ne v5, v3, :cond_1

    iget-object v1, v1, Lc/d/a/c/o0/h;->l:Landroid/graphics/drawable/StateListDrawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    :cond_1
    iget-object v1, p0, Lc/d/a/c/o0/h$d;->a:Lc/d/a/c/o0/h;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    goto/16 :goto_3

    .line 5
    :cond_3
    iget-object v5, v1, Lc/d/a/c/o0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    iget-object v7, v1, Lc/d/a/c/o0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lc/d/a/c/j0/h;

    move-result-object v7

    sget v8, Lc/d/a/c/b;->colorControlHighlight:I

    invoke-static {v0, v8}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->T(Landroid/view/View;I)I

    move-result v8

    new-array v9, v4, [[I

    new-array v10, v3, [I

    const v11, 0x10100a7

    aput v11, v10, v6

    aput-object v10, v9, v6

    new-array v10, v6, [I

    aput-object v10, v9, v3

    const v10, 0x3dcccccd    # 0.1f

    if-ne v5, v4, :cond_5

    .line 6
    sget v1, Lc/d/a/c/b;->colorSurface:I

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->T(Landroid/view/View;I)I

    move-result v1

    new-instance v5, Lc/d/a/c/j0/h;

    .line 7
    iget-object v11, v7, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v11, v11, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    .line 8
    invoke-direct {v5, v11}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/l;)V

    invoke-static {v8, v1, v10}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o0(IIF)I

    move-result v8

    new-array v10, v4, [I

    aput v8, v10, v6

    aput v6, v10, v3

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v11}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    if-eqz v2, :cond_4

    invoke-virtual {v5, v1}, Lc/d/a/c/j0/h;->setTint(I)V

    new-array v10, v4, [I

    aput v8, v10, v6

    aput v1, v10, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v8, Lc/d/a/c/j0/h;

    .line 9
    iget-object v9, v7, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v9, v9, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    .line 10
    invoke-direct {v8, v9}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/l;)V

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lc/d/a/c/j0/h;->setTint(I)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v9, v1, v5, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v1, v6

    aput-object v7, v1, v3

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v1, v6

    aput-object v7, v1, v3

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 11
    :goto_2
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    if-ne v5, v3, :cond_7

    .line 12
    iget-object v1, v1, Lc/d/a/c/o0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v1

    invoke-static {v8, v1, v10}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o0(IIF)I

    move-result v5

    new-array v8, v4, [I

    aput v5, v8, v6

    aput v1, v8, v3

    if-eqz v2, :cond_6

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v5, v1, v7, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 13
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 14
    :cond_6
    new-instance v1, Lc/d/a/c/j0/h;

    .line 15
    iget-object v5, v7, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v5, v5, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    .line 16
    invoke-direct {v1, v5}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/l;)V

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v9, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v5}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    aput-object v1, v5, v3

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 17
    sget-object v5, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    .line 18
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v7

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    .line 20
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v9

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {v0, v5, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 23
    :cond_7
    :goto_3
    iget-object v1, p0, Lc/d/a/c/o0/h$d;->a:Lc/d/a/c/o0/h;

    .line 24
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lc/d/a/c/o0/j;

    invoke-direct {v5, v1, v0}, Lc/d/a/c/o0/j;-><init>(Lc/d/a/c/o0/h;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, v1, Lc/d/a/c/o0/h;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz v2, :cond_8

    new-instance v2, Lc/d/a/c/o0/k;

    invoke-direct {v2, v1}, Lc/d/a/c/o0/k;-><init>(Lc/d/a/c/o0/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 25
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lc/d/a/c/o0/h$d;->a:Lc/d/a/c/o0/h;

    .line 26
    iget-object v1, v1, Lc/d/a/c/o0/h;->d:Landroid/text/TextWatcher;

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lc/d/a/c/o0/h$d;->a:Lc/d/a/c/o0/h;

    .line 28
    iget-object v1, v1, Lc/d/a/c/o0/h;->d:Landroid/text/TextWatcher;

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {v0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v6, 0x1

    :cond_9
    if-nez v6, :cond_a

    .line 31
    iget-object v0, p0, Lc/d/a/c/o0/h$d;->a:Lc/d/a/c/o0/h;

    iget-object v0, v0, Lc/d/a/c/o0/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 32
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 33
    :cond_a
    iget-object v0, p0, Lc/d/a/c/o0/h$d;->a:Lc/d/a/c/o0/h;

    .line 34
    iget-object v0, v0, Lc/d/a/c/o0/h;->f:Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 35
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
