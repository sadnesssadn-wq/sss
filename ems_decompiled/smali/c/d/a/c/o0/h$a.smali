.class public Lc/d/a/c/o0/h$a;
.super Lc/d/a/c/c0/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/o0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/d/a/c/o0/h;


# direct methods
.method public constructor <init>(Lc/d/a/c/o0/h;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/o0/h$a;->c:Lc/d/a/c/o0/h;

    invoke-direct {p0}, Lc/d/a/c/c0/k;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/c/o0/h$a;->c:Lc/d/a/c/o0/h;

    iget-object p1, p1, Lc/d/a/c/o0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/c/o0/h;->e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/c/o0/h$a;->c:Lc/d/a/c/o0/h;

    .line 1
    iget-object v0, v0, Lc/d/a/c/o0/h;->n:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc/d/a/c/o0/h;->f(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/o0/h$a;->c:Lc/d/a/c/o0/h;

    iget-object v0, v0, Lc/d/a/c/o0/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    new-instance v0, Lc/d/a/c/o0/h$a$a;

    invoke-direct {v0, p0, p1}, Lc/d/a/c/o0/h$a$a;-><init>(Lc/d/a/c/o0/h$a;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
