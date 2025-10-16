.class public Lc/b/p/b/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lc/b/p/b/g$b;


# direct methods
.method public constructor <init>(Lc/b/p/b/g$b;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/b/i;->c:Lc/b/p/b/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lc/b/p/b/i;->c:Lc/b/p/b/g$b;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p2, p1, Lc/b/p/b/g$b;->l:Lc/b/p/b/b;

    .line 2
    iget-object p4, p2, Lc/b/p/b/b;->c:Ljava/util/List;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lc/b/p/b/b;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/p/e/n;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 3
    iget-object p3, p1, Lc/b/p/b/g$b;->d:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Lc/b/p/e/n;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lc/b/p/b/g$b;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Lc/b/p/e/n;->e()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lc/b/p/b/g$b;->f:Landroid/widget/AutoCompleteTextView;

    const p4, 0x7fffffff

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p3, p1, Lc/b/p/b/g$b;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Lc/b/p/e/n;->f()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lc/b/p/b/g$b;->f:Landroid/widget/AutoCompleteTextView;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p3, p1, Lc/b/p/b/g$b;->m:Lc/b/p/b/g;

    .line 4
    iget-object p3, p3, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/p/e/j;

    invoke-virtual {p2}, Lc/b/p/e/n;->c()D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p2}, Lc/b/p/e/n;->d()D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-virtual {p2}, Lc/b/p/e/n;->g()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Lc/b/p/e/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lc/b/p/e/n;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/b/p/e/j;->A(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lc/b/p/e/j;->M(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/b/p/e/j;->D(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lc/b/p/e/j;->G(D)V

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lc/b/p/e/j;->I(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
