.class public Lc/c/b/a/d/m;
.super Lc/c/b/a/d/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/d/d<",
        "Lc/c/b/a/g/b/b<",
        "+",
        "Lc/c/b/a/d/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field public j:Lc/c/b/a/d/p;

.field public k:Lc/c/b/a/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/b/a/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const v0, -0x800001

    iput v0, p0, Lc/c/b/a/d/l;->a:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lc/c/b/a/d/l;->b:F

    iput v0, p0, Lc/c/b/a/d/l;->c:F

    iput v1, p0, Lc/c/b/a/d/l;->d:F

    iput v0, p0, Lc/c/b/a/d/l;->e:F

    iput v1, p0, Lc/c/b/a/d/l;->f:F

    iput v0, p0, Lc/c/b/a/d/l;->g:F

    iput v1, p0, Lc/c/b/a/d/l;->h:F

    invoke-virtual {p0}, Lc/c/b/a/d/m;->o()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/d/l;

    invoke-virtual {v1}, Lc/c/b/a/d/l;->a()V

    .line 1
    iget-object v2, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 2
    iget-object v3, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget v2, v1, Lc/c/b/a/d/l;->a:F

    .line 4
    iget v3, p0, Lc/c/b/a/d/l;->a:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    iput v2, p0, Lc/c/b/a/d/l;->a:F

    .line 5
    :cond_2
    iget v2, v1, Lc/c/b/a/d/l;->b:F

    .line 6
    iget v3, p0, Lc/c/b/a/d/l;->b:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    iput v2, p0, Lc/c/b/a/d/l;->b:F

    .line 7
    :cond_3
    iget v2, v1, Lc/c/b/a/d/l;->c:F

    .line 8
    iget v3, p0, Lc/c/b/a/d/l;->c:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    iput v2, p0, Lc/c/b/a/d/l;->c:F

    .line 9
    :cond_4
    iget v2, v1, Lc/c/b/a/d/l;->d:F

    .line 10
    iget v3, p0, Lc/c/b/a/d/l;->d:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    iput v2, p0, Lc/c/b/a/d/l;->d:F

    :cond_5
    iget v2, v1, Lc/c/b/a/d/l;->e:F

    iget v3, p0, Lc/c/b/a/d/l;->e:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    iput v2, p0, Lc/c/b/a/d/l;->e:F

    :cond_6
    iget v2, v1, Lc/c/b/a/d/l;->f:F

    iget v3, p0, Lc/c/b/a/d/l;->f:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_7

    iput v2, p0, Lc/c/b/a/d/l;->f:F

    :cond_7
    iget v2, v1, Lc/c/b/a/d/l;->g:F

    iget v3, p0, Lc/c/b/a/d/l;->g:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    iput v2, p0, Lc/c/b/a/d/l;->g:F

    :cond_8
    iget v1, v1, Lc/c/b/a/d/l;->h:F

    iget v2, p0, Lc/c/b/a/d/l;->h:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iput v1, p0, Lc/c/b/a/d/l;->h:F

    goto :goto_0

    :cond_9
    return-void
.end method

.method public f(Lc/c/b/a/f/d;)Lc/c/b/a/d/o;
    .locals 5

    .line 1
    iget v0, p1, Lc/c/b/a/f/d;->e:I

    .line 2
    invoke-virtual {p0}, Lc/c/b/a/d/m;->o()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget v0, p1, Lc/c/b/a/f/d;->e:I

    .line 4
    invoke-virtual {p0}, Lc/c/b/a/d/m;->o()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/a/d/d;

    .line 5
    iget v1, p1, Lc/c/b/a/f/d;->f:I

    .line 6
    invoke-virtual {v0}, Lc/c/b/a/d/l;->d()I

    move-result v3

    if-lt v1, v3, :cond_1

    return-object v2

    .line 7
    :cond_1
    iget v1, p1, Lc/c/b/a/f/d;->f:I

    .line 8
    invoke-virtual {v0, v1}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v0

    .line 9
    iget v1, p1, Lc/c/b/a/f/d;->a:F

    .line 10
    invoke-interface {v0, v1}, Lc/c/b/a/g/b/e;->S(F)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/d/o;

    invoke-virtual {v1}, Lc/c/b/a/d/g;->a()F

    move-result v3

    .line 11
    iget v4, p1, Lc/c/b/a/f/d;->b:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 12
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    return-object v1

    :cond_4
    return-object v2
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/m;->j:Lc/c/b/a/d/p;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Lc/c/b/a/d/l;->a()V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/c/b/a/d/m;->k:Lc/c/b/a/d/a;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lc/c/b/a/d/l;->a()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc/c/b/a/d/m;->a()V

    return-void
.end method

.method public o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/c/b/a/d/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc/c/b/a/d/m;->j:Lc/c/b/a/d/p;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lc/c/b/a/d/m;->k:Lc/c/b/a/d/a;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
