.class public Lc/c/b/a/j/f;
.super Lc/c/b/a/j/g;
.source ""


# instance fields
.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/a/j/g;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/github/mikephil/charting/charts/Chart;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/a/f/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lc/c/b/a/j/g;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/f;->h:Ljava/util/List;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lc/c/b/a/j/f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lc/c/b/a/j/f;->h()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/j/g;

    invoke-virtual {v1, p1}, Lc/c/b/a/j/g;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/j/g;

    invoke-virtual {v1, p1}, Lc/c/b/a/j/g;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V
    .locals 9

    iget-object v0, p0, Lc/c/b/a/j/f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/Chart;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/j/g;

    const/4 v3, 0x0

    instance-of v4, v2, Lc/c/b/a/j/b;

    if-eqz v4, :cond_1

    move-object v3, v2

    check-cast v3, Lc/c/b/a/j/b;

    iget-object v3, v3, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v3}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v3

    goto :goto_1

    :cond_1
    instance-of v4, v2, Lc/c/b/a/j/j;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Lc/c/b/a/j/j;

    iget-object v3, v3, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v3}, Lc/c/b/a/g/a/g;->getLineData()Lc/c/b/a/d/p;

    move-result-object v3

    goto :goto_1

    :cond_2
    instance-of v4, v2, Lc/c/b/a/j/e;

    if-eqz v4, :cond_3

    move-object v3, v2

    check-cast v3, Lc/c/b/a/j/e;

    iget-object v3, v3, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-interface {v3}, Lc/c/b/a/g/a/d;->getCandleData()Lc/c/b/a/d/j;

    move-result-object v3

    goto :goto_1

    :cond_3
    instance-of v4, v2, Lc/c/b/a/j/p;

    if-eqz v4, :cond_4

    move-object v3, v2

    check-cast v3, Lc/c/b/a/j/p;

    iget-object v3, v3, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-interface {v3}, Lc/c/b/a/g/a/h;->getScatterData()Lc/c/b/a/d/x;

    move-result-object v3

    goto :goto_1

    :cond_4
    instance-of v4, v2, Lc/c/b/a/j/d;

    if-eqz v4, :cond_5

    move-object v3, v2

    check-cast v3, Lc/c/b/a/j/d;

    iget-object v3, v3, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-interface {v3}, Lc/c/b/a/g/a/c;->getBubbleData()Lc/c/b/a/d/h;

    move-result-object v3

    :cond_5
    :goto_1
    const/4 v4, -0x1

    if-nez v3, :cond_6

    const/4 v3, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v5

    check-cast v5, Lc/c/b/a/d/m;

    invoke-virtual {v5}, Lc/c/b/a/d/m;->o()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :goto_2
    iget-object v5, p0, Lc/c/b/a/j/f;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    array-length v5, p2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_9

    aget-object v7, p2, v6

    .line 1
    iget v8, v7, Lc/c/b/a/f/d;->e:I

    if-eq v8, v3, :cond_7

    if-ne v8, v4, :cond_8

    .line 2
    :cond_7
    iget-object v8, p0, Lc/c/b/a/j/f;->h:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lc/c/b/a/j/f;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lc/c/b/a/f/d;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lc/c/b/a/f/d;

    invoke-virtual {v2, p1, v3}, Lc/c/b/a/j/g;->d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/j/g;

    invoke-virtual {v1, p1}, Lc/c/b/a/j/g;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/j/g;

    invoke-virtual {v1}, Lc/c/b/a/j/g;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()V
    .locals 8

    iget-object v0, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc/c/b/a/j/f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/CombinedChart;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getScatterData()Lc/c/b/a/d/x;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    new-instance v5, Lc/c/b/a/j/p;

    iget-object v6, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    iget-object v7, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-direct {v5, v0, v6, v7}, Lc/c/b/a/j/p;-><init>(Lc/c/b/a/g/a/h;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getCandleData()Lc/c/b/a/d/j;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    new-instance v5, Lc/c/b/a/j/e;

    iget-object v6, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    iget-object v7, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-direct {v5, v0, v6, v7}, Lc/c/b/a/j/e;-><init>(Lc/c/b/a/g/a/d;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getLineData()Lc/c/b/a/d/p;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    new-instance v5, Lc/c/b/a/j/j;

    iget-object v6, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    iget-object v7, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-direct {v5, v0, v6, v7}, Lc/c/b/a/j/j;-><init>(Lc/c/b/a/g/a/g;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBubbleData()Lc/c/b/a/d/h;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    new-instance v5, Lc/c/b/a/j/d;

    iget-object v6, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    iget-object v7, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-direct {v5, v0, v6, v7}, Lc/c/b/a/j/d;-><init>(Lc/c/b/a/g/a/c;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBarData()Lc/c/b/a/d/a;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lc/c/b/a/j/f;->f:Ljava/util/List;

    new-instance v5, Lc/c/b/a/j/b;

    iget-object v6, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    iget-object v7, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-direct {v5, v0, v6, v7}, Lc/c/b/a/j/b;-><init>(Lc/c/b/a/g/a/a;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
