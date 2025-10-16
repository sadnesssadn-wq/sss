.class public Lb/g/a/i/g;
.super Lb/g/a/i/d;
.source ""


# instance fields
.field public M0:F

.field public N0:I

.field public O0:I

.field public P0:Lb/g/a/i/c;

.field public Q0:I

.field public R0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lb/g/a/i/d;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lb/g/a/i/g;->M0:F

    const/4 v0, -0x1

    iput v0, p0, Lb/g/a/i/g;->N0:I

    iput v0, p0, Lb/g/a/i/g;->O0:I

    iget-object v0, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iput-object v0, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/i/g;->Q0:I

    iget-object v1, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    iget-object v3, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lb/g/a/i/g;->R0:Z

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lb/g/a/i/g;->R0:Z

    return v0
.end method

.method public V(Lb/g/a/d;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    invoke-virtual {p1, p2}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lb/g/a/i/g;->Q0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 3
    iput p1, p0, Lb/g/a/i/d;->b0:I

    .line 4
    iput v1, p0, Lb/g/a/i/d;->c0:I

    .line 5
    iget-object p1, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    .line 6
    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/g/a/i/d;->O(I)V

    invoke-virtual {p0, v1}, Lb/g/a/i/d;->T(I)V

    goto :goto_0

    .line 7
    :cond_1
    iput v1, p0, Lb/g/a/i/d;->b0:I

    .line 8
    iput p1, p0, Lb/g/a/i/d;->c0:I

    .line 9
    iget-object p1, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    .line 10
    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/g/a/i/d;->T(I)V

    invoke-virtual {p0, v1}, Lb/g/a/i/d;->O(I)V

    :goto_0
    return-void
.end method

.method public W(I)V
    .locals 1

    iget-object v0, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    .line 1
    iput p1, v0, Lb/g/a/i/c;->b:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lb/g/a/i/c;->c:Z

    .line 2
    iput-boolean p1, p0, Lb/g/a/i/g;->R0:Z

    return-void
.end method

.method public X(I)V
    .locals 3

    iget v0, p0, Lb/g/a/i/g;->Q0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lb/g/a/i/g;->Q0:I

    iget-object p1, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lb/g/a/i/g;->Q0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    :goto_0
    iput-object p1, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    iget-object p1, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    iget-object v2, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public f(Lb/g/a/d;Z)V
    .locals 7

    .line 1
    sget-object p2, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    iget-object v0, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    .line 2
    check-cast v0, Lb/g/a/i/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lb/g/a/i/c$a;->d:Lb/g/a/i/c$a;

    invoke-virtual {v0, v1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v1

    sget-object v2, Lb/g/a/i/c$a;->f:Lb/g/a/i/c$a;

    invoke-virtual {v0, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    iget-object v3, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v3, v3, v5

    if-ne v3, p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lb/g/a/i/g;->Q0:I

    if-nez v6, :cond_3

    sget-object v1, Lb/g/a/i/c$a;->e:Lb/g/a/i/c$a;

    invoke-virtual {v0, v1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v1

    sget-object v2, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    invoke-virtual {v0, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    iget-object v0, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v0, v0, v4

    if-ne v0, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v3, v4

    :cond_3
    iget-boolean p2, p0, Lb/g/a/i/g;->R0:Z

    const/4 v0, -0x1

    const/4 v4, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    .line 3
    iget-boolean v6, p2, Lb/g/a/i/c;->c:Z

    if-eqz v6, :cond_6

    .line 4
    invoke-virtual {p1, p2}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object p2

    iget-object v6, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    invoke-virtual {v6}, Lb/g/a/i/c;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget v6, p0, Lb/g/a/i/g;->N0:I

    if-eq v6, v0, :cond_4

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0, p2, v5, v4}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_3

    :cond_4
    iget v6, p0, Lb/g/a/i/g;->O0:I

    if-eq v6, v0, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    invoke-virtual {p1, v1}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v5, v4}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_2

    :cond_5
    :goto_3
    iput-boolean v5, p0, Lb/g/a/i/g;->R0:Z

    return-void

    :cond_6
    iget p2, p0, Lb/g/a/i/g;->N0:I

    const/16 v6, 0x8

    if-eq p2, v0, :cond_7

    iget-object p2, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    invoke-virtual {p1, p2}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object p2

    invoke-virtual {p1, v1}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    iget v1, p0, Lb/g/a/i/g;->N0:I

    invoke-virtual {p1, p2, v0, v1, v6}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    if-eqz v3, :cond_9

    invoke-virtual {p1, v2}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0, p2, v5, v4}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_5

    :cond_7
    iget p2, p0, Lb/g/a/i/g;->O0:I

    if-eq p2, v0, :cond_8

    iget-object p2, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    invoke-virtual {p1, p2}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object p2

    invoke-virtual {p1, v2}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    iget v2, p0, Lb/g/a/i/g;->O0:I

    neg-int v2, v2

    invoke-virtual {p1, p2, v0, v2, v6}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    if-eqz v3, :cond_9

    invoke-virtual {p1, v1}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v5, v4}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_4

    :cond_8
    iget p2, p0, Lb/g/a/i/g;->M0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    invoke-virtual {p1, p2}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object p2

    invoke-virtual {p1, v2}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v1

    iget v2, p0, Lb/g/a/i/g;->M0:F

    .line 5
    invoke-virtual {p1}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v3

    .line 6
    iget-object v4, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v4, p2, v0}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p2, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p2, v1, v2}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    .line 7
    invoke-virtual {p1, v3}, Lb/g/a/d;->c(Lb/g/a/b;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(Lb/g/a/i/d;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/g/a/i/d;",
            "Ljava/util/HashMap<",
            "Lb/g/a/i/d;",
            "Lb/g/a/i/d;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lb/g/a/i/d;->k(Lb/g/a/i/d;Ljava/util/HashMap;)V

    check-cast p1, Lb/g/a/i/g;

    iget p2, p1, Lb/g/a/i/g;->M0:F

    iput p2, p0, Lb/g/a/i/g;->M0:F

    iget p2, p1, Lb/g/a/i/g;->N0:I

    iput p2, p0, Lb/g/a/i/g;->N0:I

    iget p2, p1, Lb/g/a/i/g;->O0:I

    iput p2, p0, Lb/g/a/i/g;->O0:I

    iget p1, p1, Lb/g/a/i/g;->Q0:I

    invoke-virtual {p0, p1}, Lb/g/a/i/g;->X(I)V

    return-void
.end method

.method public n(Lb/g/a/i/c$a;)Lb/g/a/i/c;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lb/g/a/i/g;->Q0:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    return-object p1

    :cond_1
    iget p1, p0, Lb/g/a/i/g;->Q0:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
