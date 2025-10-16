.class public abstract Lc/c/b/a/d/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc/c/b/a/g/b/e<",
        "+",
        "Lc/c/b/a/d/o;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lc/c/b/a/g/b/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iput-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-virtual {p0}, Lc/c/b/a/d/l;->j()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    sget-object v0, Lc/c/b/a/c/j$a;->d:Lc/c/b/a/c/j$a;

    sget-object v1, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    iget-object v2, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v3, -0x800001

    iput v3, p0, Lc/c/b/a/d/l;->a:F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, p0, Lc/c/b/a/d/l;->b:F

    iput v3, p0, Lc/c/b/a/d/l;->c:F

    iput v4, p0, Lc/c/b/a/d/l;->d:F

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/c/b/a/g/b/e;

    invoke-virtual {p0, v5}, Lc/c/b/a/d/l;->b(Lc/c/b/a/g/b/e;)V

    goto :goto_0

    :cond_1
    iput v3, p0, Lc/c/b/a/d/l;->e:F

    iput v4, p0, Lc/c/b/a/d/l;->f:F

    iput v3, p0, Lc/c/b/a/d/l;->g:F

    iput v4, p0, Lc/c/b/a/d/l;->h:F

    iget-object v2, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/b/a/g/b/e;

    invoke-interface {v3}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v5

    if-ne v5, v1, :cond_2

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_6

    .line 2
    invoke-interface {v3}, Lc/c/b/a/g/b/e;->x()F

    move-result v2

    iput v2, p0, Lc/c/b/a/d/l;->e:F

    invoke-interface {v3}, Lc/c/b/a/g/b/e;->f0()F

    move-result v2

    iput v2, p0, Lc/c/b/a/d/l;->f:F

    iget-object v2, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/b/a/g/b/e;

    invoke-interface {v3}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v5

    if-ne v5, v1, :cond_4

    invoke-interface {v3}, Lc/c/b/a/g/b/e;->f0()F

    move-result v5

    iget v6, p0, Lc/c/b/a/d/l;->f:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    invoke-interface {v3}, Lc/c/b/a/g/b/e;->f0()F

    move-result v5

    iput v5, p0, Lc/c/b/a/d/l;->f:F

    :cond_5
    invoke-interface {v3}, Lc/c/b/a/g/b/e;->x()F

    move-result v5

    iget v6, p0, Lc/c/b/a/d/l;->e:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    invoke-interface {v3}, Lc/c/b/a/g/b/e;->x()F

    move-result v3

    iput v3, p0, Lc/c/b/a/d/l;->e:F

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/e;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v3

    if-ne v3, v0, :cond_7

    move-object v4, v2

    :cond_8
    if-eqz v4, :cond_b

    .line 4
    invoke-interface {v4}, Lc/c/b/a/g/b/e;->x()F

    move-result v1

    iput v1, p0, Lc/c/b/a/d/l;->g:F

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->f0()F

    move-result v1

    iput v1, p0, Lc/c/b/a/d/l;->h:F

    iget-object v1, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/e;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v3

    if-ne v3, v0, :cond_9

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->f0()F

    move-result v3

    iget v4, p0, Lc/c/b/a/d/l;->h:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->f0()F

    move-result v3

    iput v3, p0, Lc/c/b/a/d/l;->h:F

    :cond_a
    invoke-interface {v2}, Lc/c/b/a/g/b/e;->x()F

    move-result v3

    iget v4, p0, Lc/c/b/a/d/l;->g:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->x()F

    move-result v2

    iput v2, p0, Lc/c/b/a/d/l;->g:F

    goto :goto_3

    :cond_b
    return-void
.end method

.method public b(Lc/c/b/a/g/b/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lc/c/b/a/d/l;->a:F

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->x()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->x()F

    move-result v0

    iput v0, p0, Lc/c/b/a/d/l;->a:F

    :cond_0
    iget v0, p0, Lc/c/b/a/d/l;->b:F

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->f0()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->f0()F

    move-result v0

    iput v0, p0, Lc/c/b/a/d/l;->b:F

    :cond_1
    iget v0, p0, Lc/c/b/a/d/l;->c:F

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->c0()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->c0()F

    move-result v0

    iput v0, p0, Lc/c/b/a/d/l;->c:F

    :cond_2
    iget v0, p0, Lc/c/b/a/d/l;->d:F

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->s()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->s()F

    move-result v0

    iput v0, p0, Lc/c/b/a/d/l;->d:F

    :cond_3
    invoke-interface {p1}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v0

    sget-object v1, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lc/c/b/a/d/l;->e:F

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->x()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->x()F

    move-result v0

    iput v0, p0, Lc/c/b/a/d/l;->e:F

    :cond_4
    iget v0, p0, Lc/c/b/a/d/l;->f:F

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->f0()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->f0()F

    move-result p1

    iput p1, p0, Lc/c/b/a/d/l;->f:F

    goto :goto_0

    :cond_5
    iget v0, p0, Lc/c/b/a/d/l;->g:F

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->x()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->x()F

    move-result v0

    iput v0, p0, Lc/c/b/a/d/l;->g:F

    :cond_6
    iget v0, p0, Lc/c/b/a/d/l;->h:F

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->f0()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->f0()F

    move-result p1

    iput p1, p0, Lc/c/b/a/d/l;->h:F

    :cond_7
    :goto_0
    return-void
.end method

.method public c(I)Lc/c/b/a/g/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/b/a/g/b/e;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 3

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/e;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public f(Lc/c/b/a/f/d;)Lc/c/b/a/d/o;
    .locals 2

    .line 1
    iget v0, p1, Lc/c/b/a/f/d;->f:I

    .line 2
    iget-object v1, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 3
    iget v1, p1, Lc/c/b/a/f/d;->f:I

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/a/g/b/e;

    .line 5
    iget v1, p1, Lc/c/b/a/f/d;->a:F

    .line 6
    iget p1, p1, Lc/c/b/a/f/d;->b:F

    .line 7
    invoke-interface {v0, v1, p1}, Lc/c/b/a/g/b/e;->L(FF)Lc/c/b/a/d/o;

    move-result-object p1

    return-object p1
.end method

.method public g()Lc/c/b/a/g/b/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/a/g/b/e;

    iget-object v1, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/e;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v3

    invoke-interface {v0}, Lc/c/b/a/g/b/e;->y0()I

    move-result v4

    if-le v3, v4, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Lc/c/b/a/c/j$a;)F
    .locals 2

    sget-object v0, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    const v1, -0x800001

    if-ne p1, v0, :cond_1

    iget p1, p0, Lc/c/b/a/d/l;->e:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p1, p0, Lc/c/b/a/d/l;->g:F

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lc/c/b/a/d/l;->g:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p1, p0, Lc/c/b/a/d/l;->e:F

    :cond_2
    return p1
.end method

.method public i(Lc/c/b/a/c/j$a;)F
    .locals 2

    sget-object v0, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-ne p1, v0, :cond_1

    iget p1, p0, Lc/c/b/a/d/l;->f:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p1, p0, Lc/c/b/a/d/l;->h:F

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lc/c/b/a/d/l;->h:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p1, p0, Lc/c/b/a/d/l;->f:F

    :cond_2
    return p1
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Lc/c/b/a/d/l;->a()V

    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/g/b/e;

    invoke-interface {v1, p1}, Lc/c/b/a/g/b/e;->v0(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Lc/c/b/a/e/e;)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/g/b/e;

    invoke-interface {v1, p1}, Lc/c/b/a/g/b/e;->t(Lc/c/b/a/e/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/g/b/e;

    invoke-interface {v1, p1}, Lc/c/b/a/g/b/e;->r0(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(F)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/g/b/e;

    invoke-interface {v1, p1}, Lc/c/b/a/g/b/e;->B(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
