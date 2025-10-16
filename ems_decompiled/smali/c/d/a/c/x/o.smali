.class public Lc/d/a/c/x/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lc/d/a/c/x/n;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/n;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/o;->c:Lc/d/a/c/x/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/c/x/o;->c:Lc/d/a/c/x/n;

    .line 1
    iget-object v0, p1, Lc/d/a/c/x/n;->s:Landroid/widget/Button;

    .line 2
    iget-object p1, p1, Lc/d/a/c/x/n;->h:Lc/d/a/c/x/d;

    .line 3
    invoke-interface {p1}, Lc/d/a/c/x/d;->k()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lc/d/a/c/x/o;->c:Lc/d/a/c/x/n;

    .line 4
    iget-object p1, p1, Lc/d/a/c/x/n;->q:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    iget-object p1, p0, Lc/d/a/c/x/o;->c:Lc/d/a/c/x/n;

    .line 6
    iget-object v0, p1, Lc/d/a/c/x/n;->q:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {p1, v0}, Lc/d/a/c/x/n;->o(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 8
    iget-object p1, p0, Lc/d/a/c/x/o;->c:Lc/d/a/c/x/n;

    .line 9
    invoke-virtual {p1}, Lc/d/a/c/x/n;->j()V

    return-void
.end method
