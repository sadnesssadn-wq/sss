.class public Lc/d/a/c/x/j;
.super Landroidx/recyclerview/widget/RecyclerView$q;
.source ""


# instance fields
.field public final synthetic a:Lc/d/a/c/x/u;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lc/d/a/c/x/g;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/g;Lc/d/a/c/x/u;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/j;->c:Lc/d/a/c/x/g;

    iput-object p2, p0, Lc/d/a/c/x/j;->a:Lc/d/a/c/x/u;

    iput-object p3, p0, Lc/d/a/c/x/j;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lc/d/a/c/x/j;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object p1, p0, Lc/d/a/c/x/j;->c:Lc/d/a/c/x/g;

    invoke-virtual {p1}, Lc/d/a/c/x/g;->e()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    :goto_0
    iget-object p2, p0, Lc/d/a/c/x/j;->c:Lc/d/a/c/x/g;

    iget-object p3, p0, Lc/d/a/c/x/j;->a:Lc/d/a/c/x/u;

    invoke-virtual {p3, p1}, Lc/d/a/c/x/u;->a(I)Lc/d/a/c/x/r;

    move-result-object p3

    .line 1
    iput-object p3, p2, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    .line 2
    iget-object p2, p0, Lc/d/a/c/x/j;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Lc/d/a/c/x/j;->a:Lc/d/a/c/x/u;

    .line 3
    iget-object v0, p3, Lc/d/a/c/x/u;->b:Lc/d/a/c/x/a;

    .line 4
    iget-object v0, v0, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    .line 5
    invoke-virtual {v0, p1}, Lc/d/a/c/x/r;->x(I)Lc/d/a/c/x/r;

    move-result-object p1

    .line 6
    iget-object p3, p3, Lc/d/a/c/x/u;->a:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lc/d/a/c/x/r;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
