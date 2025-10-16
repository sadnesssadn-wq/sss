.class public Lb/g/a/i/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lb/g/a/i/j;->a:[Z

    return-void
.end method

.method public static a(Lb/g/a/i/e;Lb/g/a/d;Lb/g/a/i/d;)V
    .locals 7

    sget-object v0, Lb/g/a/i/d$a;->f:Lb/g/a/i/d$a;

    const/4 v1, -0x1

    iput v1, p2, Lb/g/a/i/d;->n:I

    iput v1, p2, Lb/g/a/i/d;->o:I

    iget-object v1, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v3, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    const/4 v4, 0x2

    if-eq v1, v3, :cond_0

    iget-object v1, p2, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v1, v1, v2

    if-ne v1, v0, :cond_0

    iget-object v1, p2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget v1, v1, Lb/g/a/i/c;->g:I

    invoke-virtual {p0}, Lb/g/a/i/d;->w()I

    move-result v2

    iget-object v5, p2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget v5, v5, Lb/g/a/i/c;->g:I

    sub-int/2addr v2, v5

    iget-object v5, p2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {p1, v5}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v6

    iput-object v6, v5, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v5, p2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {p1, v5}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v6

    iput-object v6, v5, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v5, p2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v5, v5, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {p1, v5, v1}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v5, p2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v5, v5, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {p1, v5, v2}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iput v4, p2, Lb/g/a/i/d;->n:I

    .line 1
    iput v1, p2, Lb/g/a/i/d;->b0:I

    sub-int/2addr v2, v1

    iput v2, p2, Lb/g/a/i/d;->X:I

    iget v1, p2, Lb/g/a/i/d;->i0:I

    if-ge v2, v1, :cond_0

    iput v1, p2, Lb/g/a/i/d;->X:I

    .line 2
    :cond_0
    iget-object v1, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eq v1, v3, :cond_3

    iget-object v1, p2, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v1, v1, v2

    if-ne v1, v0, :cond_3

    iget-object v0, p2, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget v0, v0, Lb/g/a/i/c;->g:I

    invoke-virtual {p0}, Lb/g/a/i/d;->q()I

    move-result p0

    iget-object v1, p2, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget v1, v1, Lb/g/a/i/c;->g:I

    sub-int/2addr p0, v1

    iget-object v1, p2, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {p1, v1}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v2

    iput-object v2, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v1, p2, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {p1, v1}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v2

    iput-object v2, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v1, p2, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {p1, v1, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v1, p2, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {p1, v1, p0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget v1, p2, Lb/g/a/i/d;->h0:I

    if-gtz v1, :cond_1

    .line 3
    iget v1, p2, Lb/g/a/i/d;->o0:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 4
    :cond_1
    iget-object v1, p2, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {p1, v1}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v2

    iput-object v2, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v1, p2, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget v2, p2, Lb/g/a/i/d;->h0:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    :cond_2
    iput v4, p2, Lb/g/a/i/d;->o:I

    .line 5
    iput v0, p2, Lb/g/a/i/d;->c0:I

    sub-int/2addr p0, v0

    iput p0, p2, Lb/g/a/i/d;->Y:I

    iget p1, p2, Lb/g/a/i/d;->j0:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Lb/g/a/i/d;->Y:I

    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
