.class public Lb/g/a/i/m/j;
.super Lb/g/a/i/m/o;
.source ""


# direct methods
.method public constructor <init>(Lb/g/a/i/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/g/a/i/m/o;-><init>(Lb/g/a/i/d;)V

    return-void
.end method


# virtual methods
.method public a(Lb/g/a/i/m/d;)V
    .locals 6

    iget-object p1, p0, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    check-cast p1, Lb/g/a/i/a;

    .line 1
    iget v0, p1, Lb/g/a/i/a;->O0:I

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-object v2, v2, Lb/g/a/i/m/f;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/a/i/m/f;

    iget v5, v5, Lb/g/a/i/m/f;->g:I

    if-eq v4, v3, :cond_1

    if-ge v5, v4, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    if-ge v1, v5, :cond_0

    move v1, v5

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    .line 3
    iget p1, p1, Lb/g/a/i/a;->Q0:I

    add-int/2addr v1, p1

    .line 4
    invoke-virtual {v0, v1}, Lb/g/a/i/m/f;->c(I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    .line 5
    iget p1, p1, Lb/g/a/i/a;->Q0:I

    add-int/2addr v4, p1

    .line 6
    invoke-virtual {v0, v4}, Lb/g/a/i/m/f;->c(I)V

    :goto_2
    return-void
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    instance-of v1, v0, Lb/g/a/i/a;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lb/g/a/i/m/f;->b:Z

    check-cast v0, Lb/g/a/i/a;

    .line 1
    iget v3, v0, Lb/g/a/i/a;->O0:I

    .line 2
    iget-boolean v4, v0, Lb/g/a/i/a;->P0:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v3, :cond_7

    if-eq v3, v2, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    goto/16 :goto_9

    .line 3
    :cond_0
    sget-object v2, Lb/g/a/i/m/f$a;->i:Lb/g/a/i/m/f$a;

    iput-object v2, v1, Lb/g/a/i/m/f;->e:Lb/g/a/i/m/f$a;

    :goto_0
    iget v1, v0, Lb/g/a/i/i;->N0:I

    if-ge v6, v1, :cond_4

    iget-object v1, v0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v1, v1, v6

    if-nez v4, :cond_1

    .line 4
    iget v2, v1, Lb/g/a/i/d;->o0:I

    if-ne v2, v5, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v1, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v1, v1, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-object v2, v1, Lb/g/a/i/m/f;->k:Ljava/util/List;

    iget-object v3, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-object v2, v2, Lb/g/a/i/m/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lb/g/a/i/m/f$a;->h:Lb/g/a/i/m/f$a;

    iput-object v2, v1, Lb/g/a/i/m/f;->e:Lb/g/a/i/m/f$a;

    :goto_2
    iget v1, v0, Lb/g/a/i/i;->N0:I

    if-ge v6, v1, :cond_4

    iget-object v1, v0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v1, v1, v6

    if-nez v4, :cond_3

    .line 6
    iget v2, v1, Lb/g/a/i/d;->o0:I

    if-ne v2, v5, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    iget-object v1, v1, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v1, v1, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-object v2, v1, Lb/g/a/i/m/f;->k:Ljava/util/List;

    iget-object v3, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-object v2, v2, Lb/g/a/i/m/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    iget-object v0, v0, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v0, v0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-virtual {p0, v0}, Lb/g/a/i/m/j;->m(Lb/g/a/i/m/f;)V

    iget-object v0, p0, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    iget-object v0, v0, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    goto :goto_8

    :cond_5
    sget-object v2, Lb/g/a/i/m/f$a;->g:Lb/g/a/i/m/f$a;

    iput-object v2, v1, Lb/g/a/i/m/f;->e:Lb/g/a/i/m/f$a;

    :goto_4
    iget v1, v0, Lb/g/a/i/i;->N0:I

    if-ge v6, v1, :cond_9

    iget-object v1, v0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v1, v1, v6

    if-nez v4, :cond_6

    .line 8
    iget v2, v1, Lb/g/a/i/d;->o0:I

    if-ne v2, v5, :cond_6

    goto :goto_5

    .line 9
    :cond_6
    iget-object v1, v1, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v1, v1, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-object v2, v1, Lb/g/a/i/m/f;->k:Ljava/util/List;

    iget-object v3, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-object v2, v2, Lb/g/a/i/m/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    sget-object v2, Lb/g/a/i/m/f$a;->f:Lb/g/a/i/m/f$a;

    iput-object v2, v1, Lb/g/a/i/m/f;->e:Lb/g/a/i/m/f$a;

    :goto_6
    iget v1, v0, Lb/g/a/i/i;->N0:I

    if-ge v6, v1, :cond_9

    iget-object v1, v0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v1, v1, v6

    if-nez v4, :cond_8

    .line 10
    iget v2, v1, Lb/g/a/i/d;->o0:I

    if-ne v2, v5, :cond_8

    goto :goto_7

    .line 11
    :cond_8
    iget-object v1, v1, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v1, v1, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-object v2, v1, Lb/g/a/i/m/f;->k:Ljava/util/List;

    iget-object v3, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-object v2, v2, Lb/g/a/i/m/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    iget-object v0, v0, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v0, v0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-virtual {p0, v0}, Lb/g/a/i/m/j;->m(Lb/g/a/i/m/f;)V

    iget-object v0, p0, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    iget-object v0, v0, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    :goto_8
    iget-object v0, v0, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    invoke-virtual {p0, v0}, Lb/g/a/i/m/j;->m(Lb/g/a/i/m/f;)V

    :cond_a
    :goto_9
    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    instance-of v1, v0, Lb/g/a/i/a;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lb/g/a/i/a;

    .line 1
    iget v1, v1, Lb/g/a/i/a;->O0:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget v1, v1, Lb/g/a/i/m/f;->g:I

    .line 3
    iput v1, v0, Lb/g/a/i/d;->c0:I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget v1, v1, Lb/g/a/i/m/f;->g:I

    .line 5
    iput v1, v0, Lb/g/a/i/d;->b0:I

    :cond_2
    :goto_1
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/a/i/m/o;->c:Lb/g/a/i/m/l;

    iget-object v0, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-virtual {v0}, Lb/g/a/i/m/f;->b()V

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(Lb/g/a/i/m/f;)V
    .locals 1

    iget-object v0, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-object v0, v0, Lb/g/a/i/m/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lb/g/a/i/m/f;->l:Ljava/util/List;

    iget-object v0, p0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
