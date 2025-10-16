.class public Lc/d/a/c/o0/p$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/o0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/c/o0/p;


# direct methods
.method public constructor <init>(Lc/d/a/c/o0/p;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/o0/p$b;->a:Lc/d/a/c/o0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    iget-object p1, p0, Lc/d/a/c/o0/p$b;->a:Lc/d/a/c/o0/p;

    iget-object v2, p1, Lc/d/a/c/o0/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lc/d/a/c/o0/p;->e(Lc/d/a/c/o0/p;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, p0, Lc/d/a/c/o0/p$b;->a:Lc/d/a/c/o0/p;

    .line 1
    iget-object p1, p1, Lc/d/a/c/o0/p;->d:Landroid/text/TextWatcher;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lc/d/a/c/o0/p$b;->a:Lc/d/a/c/o0/p;

    .line 3
    iget-object p1, p1, Lc/d/a/c/o0/p;->d:Landroid/text/TextWatcher;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
