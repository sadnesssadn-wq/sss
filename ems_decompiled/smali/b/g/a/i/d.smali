.class public Lb/g/a/i/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/a/i/d$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public A0:Z

.field public B:I

.field public B0:I

.field public C:F

.field public C0:I

.field public D:[I

.field public D0:Z

.field public E:F

.field public E0:Z

.field public F:Z

.field public F0:[F

.field public G:Z

.field public G0:[Lb/g/a/i/d;

.field public H:Z

.field public H0:[Lb/g/a/i/d;

.field public I:I

.field public I0:Lb/g/a/i/d;

.field public J:I

.field public J0:Lb/g/a/i/d;

.field public K:Lb/g/a/i/c;

.field public K0:I

.field public L:Lb/g/a/i/c;

.field public L0:I

.field public M:Lb/g/a/i/c;

.field public N:Lb/g/a/i/c;

.field public O:Lb/g/a/i/c;

.field public P:Lb/g/a/i/c;

.field public Q:Lb/g/a/i/c;

.field public R:Lb/g/a/i/c;

.field public S:[Lb/g/a/i/c;

.field public T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/c;",
            ">;"
        }
    .end annotation
.end field

.field public U:[Z

.field public V:[Lb/g/a/i/d$a;

.field public W:Lb/g/a/i/d;

.field public X:I

.field public Y:I

.field public Z:F

.field public a:Z

.field public a0:I

.field public b:Lb/g/a/i/m/c;

.field public b0:I

.field public c:Lb/g/a/i/m/c;

.field public c0:I

.field public d:Lb/g/a/i/m/k;

.field public d0:I

.field public e:Lb/g/a/i/m/m;

.field public e0:I

.field public f:[Z

.field public f0:I

.field public g:Z

.field public g0:I

.field public h:I

.field public h0:I

.field public i:I

.field public i0:I

.field public j:Z

.field public j0:I

.field public k:Z

.field public k0:F

.field public l:Z

.field public l0:F

.field public m:Z

.field public m0:Ljava/lang/Object;

.field public n:I

.field public n0:I

.field public o:I

.field public o0:I

.field public p:I

.field public p0:Ljava/lang/String;

.field public q:I

.field public q0:Ljava/lang/String;

.field public r:I

.field public r0:I

.field public s:[I

.field public s0:I

.field public t:I

.field public t0:I

.field public u:I

.field public u0:I

.field public v:F

.field public v0:Z

.field public w:I

.field public w0:Z

.field public x:I

.field public x0:Z

.field public y:F

.field public y0:Z

.field public z:Z

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/a/i/d;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iput-object v1, p0, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    const/4 v2, 0x2

    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lb/g/a/i/d;->f:[Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lb/g/a/i/d;->g:Z

    const/4 v4, -0x1

    iput v4, p0, Lb/g/a/i/d;->h:I

    iput v4, p0, Lb/g/a/i/d;->i:I

    .line 1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2
    iput-boolean v0, p0, Lb/g/a/i/d;->j:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->k:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->l:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->m:Z

    iput v4, p0, Lb/g/a/i/d;->n:I

    iput v4, p0, Lb/g/a/i/d;->o:I

    iput v0, p0, Lb/g/a/i/d;->p:I

    iput v0, p0, Lb/g/a/i/d;->q:I

    iput v0, p0, Lb/g/a/i/d;->r:I

    new-array v5, v2, [I

    iput-object v5, p0, Lb/g/a/i/d;->s:[I

    iput v0, p0, Lb/g/a/i/d;->t:I

    iput v0, p0, Lb/g/a/i/d;->u:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lb/g/a/i/d;->v:F

    iput v0, p0, Lb/g/a/i/d;->w:I

    iput v0, p0, Lb/g/a/i/d;->x:I

    iput v5, p0, Lb/g/a/i/d;->y:F

    iput v4, p0, Lb/g/a/i/d;->B:I

    iput v5, p0, Lb/g/a/i/d;->C:F

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lb/g/a/i/d;->D:[I

    const/4 v5, 0x0

    iput v5, p0, Lb/g/a/i/d;->E:F

    iput-boolean v0, p0, Lb/g/a/i/d;->F:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->H:Z

    iput v0, p0, Lb/g/a/i/d;->I:I

    iput v0, p0, Lb/g/a/i/d;->J:I

    new-instance v6, Lb/g/a/i/c;

    sget-object v7, Lb/g/a/i/c$a;->d:Lb/g/a/i/c$a;

    invoke-direct {v6, p0, v7}, Lb/g/a/i/c;-><init>(Lb/g/a/i/d;Lb/g/a/i/c$a;)V

    iput-object v6, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    new-instance v7, Lb/g/a/i/c;

    sget-object v8, Lb/g/a/i/c$a;->e:Lb/g/a/i/c$a;

    invoke-direct {v7, p0, v8}, Lb/g/a/i/c;-><init>(Lb/g/a/i/d;Lb/g/a/i/c$a;)V

    iput-object v7, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    new-instance v8, Lb/g/a/i/c;

    sget-object v9, Lb/g/a/i/c$a;->f:Lb/g/a/i/c$a;

    invoke-direct {v8, p0, v9}, Lb/g/a/i/c;-><init>(Lb/g/a/i/d;Lb/g/a/i/c$a;)V

    iput-object v8, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    new-instance v9, Lb/g/a/i/c;

    sget-object v10, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    invoke-direct {v9, p0, v10}, Lb/g/a/i/c;-><init>(Lb/g/a/i/d;Lb/g/a/i/c$a;)V

    iput-object v9, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    new-instance v10, Lb/g/a/i/c;

    sget-object v11, Lb/g/a/i/c$a;->h:Lb/g/a/i/c$a;

    invoke-direct {v10, p0, v11}, Lb/g/a/i/c;-><init>(Lb/g/a/i/d;Lb/g/a/i/c$a;)V

    iput-object v10, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    new-instance v11, Lb/g/a/i/c;

    sget-object v12, Lb/g/a/i/c$a;->j:Lb/g/a/i/c$a;

    invoke-direct {v11, p0, v12}, Lb/g/a/i/c;-><init>(Lb/g/a/i/d;Lb/g/a/i/c$a;)V

    iput-object v11, p0, Lb/g/a/i/d;->P:Lb/g/a/i/c;

    new-instance v11, Lb/g/a/i/c;

    sget-object v12, Lb/g/a/i/c$a;->k:Lb/g/a/i/c$a;

    invoke-direct {v11, p0, v12}, Lb/g/a/i/c;-><init>(Lb/g/a/i/d;Lb/g/a/i/c$a;)V

    iput-object v11, p0, Lb/g/a/i/d;->Q:Lb/g/a/i/c;

    new-instance v11, Lb/g/a/i/c;

    sget-object v12, Lb/g/a/i/c$a;->i:Lb/g/a/i/c$a;

    invoke-direct {v11, p0, v12}, Lb/g/a/i/c;-><init>(Lb/g/a/i/d;Lb/g/a/i/c$a;)V

    iput-object v11, p0, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    const/4 v12, 0x6

    new-array v12, v12, [Lb/g/a/i/c;

    aput-object v6, v12, v0

    aput-object v8, v12, v3

    aput-object v7, v12, v2

    const/4 v6, 0x3

    aput-object v9, v12, v6

    const/4 v6, 0x4

    aput-object v10, v12, v6

    const/4 v6, 0x5

    aput-object v11, v12, v6

    iput-object v12, p0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    new-array v7, v2, [Z

    iput-object v7, p0, Lb/g/a/i/d;->U:[Z

    new-array v7, v2, [Lb/g/a/i/d$a;

    sget-object v8, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    aput-object v8, v7, v0

    aput-object v8, v7, v3

    iput-object v7, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    iput-object v1, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    iput v0, p0, Lb/g/a/i/d;->X:I

    iput v0, p0, Lb/g/a/i/d;->Y:I

    iput v5, p0, Lb/g/a/i/d;->Z:F

    iput v4, p0, Lb/g/a/i/d;->a0:I

    iput v0, p0, Lb/g/a/i/d;->b0:I

    iput v0, p0, Lb/g/a/i/d;->c0:I

    iput v0, p0, Lb/g/a/i/d;->d0:I

    iput v0, p0, Lb/g/a/i/d;->e0:I

    iput v0, p0, Lb/g/a/i/d;->f0:I

    iput v0, p0, Lb/g/a/i/d;->g0:I

    iput v0, p0, Lb/g/a/i/d;->h0:I

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, p0, Lb/g/a/i/d;->k0:F

    iput v5, p0, Lb/g/a/i/d;->l0:F

    iput v0, p0, Lb/g/a/i/d;->n0:I

    iput v0, p0, Lb/g/a/i/d;->o0:I

    iput-object v1, p0, Lb/g/a/i/d;->p0:Ljava/lang/String;

    iput-object v1, p0, Lb/g/a/i/d;->q0:Ljava/lang/String;

    iput v0, p0, Lb/g/a/i/d;->B0:I

    iput v0, p0, Lb/g/a/i/d;->C0:I

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    iput-object v5, p0, Lb/g/a/i/d;->F0:[F

    new-array v5, v2, [Lb/g/a/i/d;

    aput-object v1, v5, v0

    aput-object v1, v5, v3

    iput-object v5, p0, Lb/g/a/i/d;->G0:[Lb/g/a/i/d;

    new-array v2, v2, [Lb/g/a/i/d;

    aput-object v1, v2, v0

    aput-object v1, v2, v3

    iput-object v2, p0, Lb/g/a/i/d;->H0:[Lb/g/a/i/d;

    iput-object v1, p0, Lb/g/a/i/d;->I0:Lb/g/a/i/d;

    iput-object v1, p0, Lb/g/a/i/d;->J0:Lb/g/a/i/d;

    iput v4, p0, Lb/g/a/i/d;->K0:I

    iput v4, p0, Lb/g/a/i/d;->L0:I

    .line 3
    iget-object v0, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/a/i/d;->P:Lb/g/a/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/a/i/d;->Q:Lb/g/a/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object p1, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz p1, :cond_3

    .line 1
    iget-boolean p1, p1, Lb/g/a/i/c;->c:Z

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object p1, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz p1, :cond_3

    .line 3
    iget-boolean v2, p1, Lb/g/a/i/c;->c:Z

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p1}, Lb/g/a/i/c;->d()I

    move-result p1

    iget-object v2, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v2, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->d()I

    move-result v2

    iget-object v3, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr p1, v3

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object p1, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object p1, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz p1, :cond_3

    .line 5
    iget-boolean p1, p1, Lb/g/a/i/c;->c:Z

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object p1, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz p1, :cond_3

    .line 7
    iget-boolean v2, p1, Lb/g/a/i/c;->c:Z

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {p1}, Lb/g/a/i/c;->d()I

    move-result p1

    iget-object v2, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v2, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->d()I

    move-result v2

    iget-object v3, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr p1, v3

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v1
.end method

.method public final B(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public C()Z
    .locals 2

    iget-object v0, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v1, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v1, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .locals 2

    iget-object v0, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v1, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v1, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public E()Z
    .locals 2

    iget-boolean v0, p0, Lb/g/a/i/d;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/g/a/i/d;->o0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lb/g/a/i/d;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    .line 1
    iget-boolean v0, v0, Lb/g/a/i/c;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    .line 3
    iget-boolean v0, v0, Lb/g/a/i/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lb/g/a/i/d;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    .line 1
    iget-boolean v0, v0, Lb/g/a/i/c;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    .line 3
    iget-boolean v0, v0, Lb/g/a/i/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public H()V
    .locals 6

    iget-object v0, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->P:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->Q:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    const/4 v1, 0x0

    iput v1, p0, Lb/g/a/i/d;->E:F

    const/4 v2, 0x0

    iput v2, p0, Lb/g/a/i/d;->X:I

    iput v2, p0, Lb/g/a/i/d;->Y:I

    iput v1, p0, Lb/g/a/i/d;->Z:F

    const/4 v1, -0x1

    iput v1, p0, Lb/g/a/i/d;->a0:I

    iput v2, p0, Lb/g/a/i/d;->b0:I

    iput v2, p0, Lb/g/a/i/d;->c0:I

    iput v2, p0, Lb/g/a/i/d;->f0:I

    iput v2, p0, Lb/g/a/i/d;->g0:I

    iput v2, p0, Lb/g/a/i/d;->h0:I

    iput v2, p0, Lb/g/a/i/d;->i0:I

    iput v2, p0, Lb/g/a/i/d;->j0:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lb/g/a/i/d;->k0:F

    iput v3, p0, Lb/g/a/i/d;->l0:F

    iget-object v3, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    sget-object v4, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v0, p0, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    iput v2, p0, Lb/g/a/i/d;->n0:I

    iput v2, p0, Lb/g/a/i/d;->o0:I

    iput-object v0, p0, Lb/g/a/i/d;->q0:Ljava/lang/String;

    iput-boolean v2, p0, Lb/g/a/i/d;->z0:Z

    iput-boolean v2, p0, Lb/g/a/i/d;->A0:Z

    iput v2, p0, Lb/g/a/i/d;->B0:I

    iput v2, p0, Lb/g/a/i/d;->C0:I

    iput-boolean v2, p0, Lb/g/a/i/d;->D0:Z

    iput-boolean v2, p0, Lb/g/a/i/d;->E0:Z

    iget-object v0, p0, Lb/g/a/i/d;->F0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v5

    iput v1, p0, Lb/g/a/i/d;->n:I

    iput v1, p0, Lb/g/a/i/d;->o:I

    iget-object v0, p0, Lb/g/a/i/d;->D:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v5

    iput v2, p0, Lb/g/a/i/d;->q:I

    iput v2, p0, Lb/g/a/i/d;->r:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lb/g/a/i/d;->v:F

    iput v0, p0, Lb/g/a/i/d;->y:F

    iput v3, p0, Lb/g/a/i/d;->u:I

    iput v3, p0, Lb/g/a/i/d;->x:I

    iput v2, p0, Lb/g/a/i/d;->t:I

    iput v2, p0, Lb/g/a/i/d;->w:I

    iput v1, p0, Lb/g/a/i/d;->B:I

    iput v0, p0, Lb/g/a/i/d;->C:F

    iget-object v0, p0, Lb/g/a/i/d;->f:[Z

    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    iput-boolean v2, p0, Lb/g/a/i/d;->H:Z

    iget-object v0, p0, Lb/g/a/i/d;->U:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v5

    iput-boolean v5, p0, Lb/g/a/i/d;->g:Z

    iget-object v0, p0, Lb/g/a/i/d;->s:[I

    aput v2, v0, v2

    aput v2, v0, v5

    iput v1, p0, Lb/g/a/i/d;->h:I

    iput v1, p0, Lb/g/a/i/d;->i:I

    return-void
.end method

.method public I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lb/g/a/i/e;

    if-eqz v1, :cond_0

    check-cast v0, Lb/g/a/i/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->k()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public J()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/a/i/d;->j:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->k:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->l:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->m:Z

    iget-object v1, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/c;

    .line 1
    iput-boolean v0, v3, Lb/g/a/i/c;->c:Z

    iput v0, v3, Lb/g/a/i/c;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K(Lb/g/a/c;)V
    .locals 0

    iget-object p1, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {p1}, Lb/g/a/i/c;->l()V

    iget-object p1, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {p1}, Lb/g/a/i/c;->l()V

    iget-object p1, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {p1}, Lb/g/a/i/c;->l()V

    iget-object p1, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {p1}, Lb/g/a/i/c;->l()V

    iget-object p1, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {p1}, Lb/g/a/i/c;->l()V

    iget-object p1, p0, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    invoke-virtual {p1}, Lb/g/a/i/c;->l()V

    iget-object p1, p0, Lb/g/a/i/d;->P:Lb/g/a/i/c;

    invoke-virtual {p1}, Lb/g/a/i/c;->l()V

    iget-object p1, p0, Lb/g/a/i/d;->Q:Lb/g/a/i/c;

    invoke-virtual {p1}, Lb/g/a/i/c;->l()V

    return-void
.end method

.method public L(I)V
    .locals 0

    iput p1, p0, Lb/g/a/i/d;->h0:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lb/g/a/i/d;->F:Z

    return-void
.end method

.method public M(II)V
    .locals 2

    iget-boolean v0, p0, Lb/g/a/i/d;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    .line 1
    iput p1, v0, Lb/g/a/i/c;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/g/a/i/c;->c:Z

    .line 2
    iget-object v0, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    .line 3
    iput p2, v0, Lb/g/a/i/c;->b:I

    iput-boolean v1, v0, Lb/g/a/i/c;->c:Z

    .line 4
    iput p1, p0, Lb/g/a/i/d;->b0:I

    sub-int/2addr p2, p1

    iput p2, p0, Lb/g/a/i/d;->X:I

    iput-boolean v1, p0, Lb/g/a/i/d;->j:Z

    return-void
.end method

.method public N(II)V
    .locals 2

    iget-boolean v0, p0, Lb/g/a/i/d;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    .line 1
    iput p1, v0, Lb/g/a/i/c;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/g/a/i/c;->c:Z

    .line 2
    iget-object v0, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    .line 3
    iput p2, v0, Lb/g/a/i/c;->b:I

    iput-boolean v1, v0, Lb/g/a/i/c;->c:Z

    .line 4
    iput p1, p0, Lb/g/a/i/d;->c0:I

    sub-int/2addr p2, p1

    iput p2, p0, Lb/g/a/i/d;->Y:I

    iget-boolean p2, p0, Lb/g/a/i/d;->F:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    iget v0, p0, Lb/g/a/i/d;->h0:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lb/g/a/i/c;->m(I)V

    :cond_1
    iput-boolean v1, p0, Lb/g/a/i/d;->k:Z

    return-void
.end method

.method public O(I)V
    .locals 1

    iput p1, p0, Lb/g/a/i/d;->Y:I

    iget v0, p0, Lb/g/a/i/d;->j0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lb/g/a/i/d;->Y:I

    :cond_0
    return-void
.end method

.method public P(Lb/g/a/i/d$a;)V
    .locals 2

    iget-object v0, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public Q(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lb/g/a/i/d;->j0:I

    return-void
.end method

.method public R(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lb/g/a/i/d;->i0:I

    return-void
.end method

.method public S(Lb/g/a/i/d$a;)V
    .locals 2

    iget-object v0, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public T(I)V
    .locals 1

    iput p1, p0, Lb/g/a/i/d;->X:I

    iget v0, p0, Lb/g/a/i/d;->i0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lb/g/a/i/d;->X:I

    :cond_0
    return-void
.end method

.method public U(ZZ)V
    .locals 8

    sget-object v0, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    iget-object v1, p0, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    .line 1
    iget-boolean v2, v1, Lb/g/a/i/m/o;->g:Z

    and-int/2addr p1, v2

    .line 2
    iget-object v2, p0, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    .line 3
    iget-boolean v3, v2, Lb/g/a/i/m/o;->g:Z

    and-int/2addr p2, v3

    .line 4
    iget-object v3, v1, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget v3, v3, Lb/g/a/i/m/f;->g:I

    iget-object v4, v2, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget v4, v4, Lb/g/a/i/m/f;->g:I

    iget-object v1, v1, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget v1, v1, Lb/g/a/i/m/f;->g:I

    iget-object v2, v2, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget v2, v2, Lb/g/a/i/m/f;->g:I

    sub-int v5, v1, v3

    sub-int v6, v2, v4

    const/4 v7, 0x0

    if-ltz v5, :cond_0

    if-ltz v6, :cond_0

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_0

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_0

    if-eq v4, v5, :cond_0

    if-eq v4, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v2, v5, :cond_0

    if-ne v2, v6, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    sub-int/2addr v1, v3

    sub-int/2addr v2, v4

    if-eqz p1, :cond_2

    iput v3, p0, Lb/g/a/i/d;->b0:I

    :cond_2
    if-eqz p2, :cond_3

    iput v4, p0, Lb/g/a/i/d;->c0:I

    :cond_3
    iget v3, p0, Lb/g/a/i/d;->o0:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    iput v7, p0, Lb/g/a/i/d;->X:I

    iput v7, p0, Lb/g/a/i/d;->Y:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object p1, p1, v7

    if-ne p1, v0, :cond_5

    iget p1, p0, Lb/g/a/i/d;->X:I

    if-ge v1, p1, :cond_5

    move v1, p1

    :cond_5
    iput v1, p0, Lb/g/a/i/d;->X:I

    iget p1, p0, Lb/g/a/i/d;->i0:I

    if-ge v1, p1, :cond_6

    iput p1, p0, Lb/g/a/i/d;->X:I

    :cond_6
    if-eqz p2, :cond_8

    iget-object p1, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    if-ne p1, v0, :cond_7

    iget p1, p0, Lb/g/a/i/d;->Y:I

    if-ge v2, p1, :cond_7

    move v2, p1

    :cond_7
    iput v2, p0, Lb/g/a/i/d;->Y:I

    iget p1, p0, Lb/g/a/i/d;->j0:I

    if-ge v2, p1, :cond_8

    iput p1, p0, Lb/g/a/i/d;->Y:I

    :cond_8
    return-void
.end method

.method public V(Lb/g/a/d;Z)V
    .locals 6

    iget-object v0, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {p1, v0}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {p1, v1}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {p1, v2}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {p1, v3}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_0

    iget-object v3, p0, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-boolean v5, v4, Lb/g/a/i/m/f;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-boolean v5, v3, Lb/g/a/i/m/f;->j:Z

    if-eqz v5, :cond_0

    iget v0, v4, Lb/g/a/i/m/f;->g:I

    iget v2, v3, Lb/g/a/i/m/f;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    if-eqz p2, :cond_1

    iget-object v3, p2, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-boolean v4, v3, Lb/g/a/i/m/f;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-boolean v4, p2, Lb/g/a/i/m/f;->j:Z

    if-eqz v4, :cond_1

    iget v1, v3, Lb/g/a/i/m/f;->g:I

    iget p1, p2, Lb/g/a/i/m/f;->g:I

    :cond_1
    sub-int p2, v2, v0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq v0, p2, :cond_2

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-eq v2, v3, :cond_2

    if-eq p1, p2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :cond_3
    sget-object p2, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    sub-int/2addr v2, v0

    sub-int/2addr p1, v1

    iput v0, p0, Lb/g/a/i/d;->b0:I

    iput v1, p0, Lb/g/a/i/d;->c0:I

    iget v0, p0, Lb/g/a/i/d;->o0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iput v4, p0, Lb/g/a/i/d;->X:I

    iput v4, p0, Lb/g/a/i/d;->Y:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v1, v0, v4

    sget-object v3, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    if-ne v1, v3, :cond_5

    iget v1, p0, Lb/g/a/i/d;->X:I

    if-ge v2, v1, :cond_5

    move v2, v1

    :cond_5
    const/4 v1, 0x1

    aget-object v5, v0, v1

    if-ne v5, v3, :cond_6

    iget v3, p0, Lb/g/a/i/d;->Y:I

    if-ge p1, v3, :cond_6

    move p1, v3

    :cond_6
    iput v2, p0, Lb/g/a/i/d;->X:I

    iput p1, p0, Lb/g/a/i/d;->Y:I

    iget v3, p0, Lb/g/a/i/d;->j0:I

    if-ge p1, v3, :cond_7

    iput v3, p0, Lb/g/a/i/d;->Y:I

    :cond_7
    iget v3, p0, Lb/g/a/i/d;->i0:I

    if-ge v2, v3, :cond_8

    iput v3, p0, Lb/g/a/i/d;->X:I

    :cond_8
    iget v3, p0, Lb/g/a/i/d;->u:I

    if-lez v3, :cond_9

    aget-object v0, v0, v4

    if-ne v0, p2, :cond_9

    iget v0, p0, Lb/g/a/i/d;->X:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lb/g/a/i/d;->X:I

    :cond_9
    iget v0, p0, Lb/g/a/i/d;->x:I

    if-lez v0, :cond_a

    iget-object v3, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v1, v3, v1

    if-ne v1, p2, :cond_a

    iget p2, p0, Lb/g/a/i/d;->Y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lb/g/a/i/d;->Y:I

    :cond_a
    iget p2, p0, Lb/g/a/i/d;->X:I

    if-eq v2, p2, :cond_b

    iput p2, p0, Lb/g/a/i/d;->h:I

    :cond_b
    iget p2, p0, Lb/g/a/i/d;->Y:I

    if-eq p1, p2, :cond_c

    iput p2, p0, Lb/g/a/i/d;->i:I

    :cond_c
    :goto_0
    return-void
.end method

.method public d(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/HashSet;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/g/a/i/e;",
            "Lb/g/a/d;",
            "Ljava/util/HashSet<",
            "Lb/g/a/i/d;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, Lb/g/a/i/j;->a(Lb/g/a/i/e;Lb/g/a/d;Lb/g/a/i/d;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, Lb/g/a/i/e;->g0(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p5, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    .line 1
    iget-object p5, p5, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_2

    .line 2
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/c;

    iget-object v1, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lb/g/a/i/d;->d(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p5, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    .line 3
    iget-object p5, p5, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_6

    .line 4
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/c;

    iget-object v1, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lb/g/a/i/d;->d(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p5, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    .line 5
    iget-object p5, p5, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_4

    .line 6
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/c;

    iget-object v1, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lb/g/a/i/d;->d(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p5, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    .line 7
    iget-object p5, p5, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_5

    .line 8
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/c;

    iget-object v1, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lb/g/a/i/d;->d(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p5, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    .line 9
    iget-object p5, p5, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_6

    .line 10
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/c;

    iget-object v1, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lb/g/a/i/d;->d(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public e()Z
    .locals 1

    instance-of v0, p0, Lb/g/a/i/k;

    if-nez v0, :cond_1

    instance-of v0, p0, Lb/g/a/i/g;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f(Lb/g/a/d;Z)V
    .locals 50

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    sget-object v13, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    iget-object v0, v15, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v12

    iget-object v0, v15, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v11

    iget-object v0, v15, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v10

    iget-object v0, v15, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v9

    iget-object v0, v15, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v8

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    const/4 v7, 0x2

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    if-eqz v0, :cond_0

    iget-object v2, v0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v2, v2, v5

    if-ne v2, v13, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v0, v0, v6

    if-ne v0, v13, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, v15, Lb/g/a/i/d;->p:I

    if-eq v3, v6, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v1, :cond_4

    move/from16 v28, v0

    move/from16 v29, v2

    goto :goto_3

    :cond_2
    move/from16 v28, v0

    goto :goto_2

    :cond_3
    move/from16 v29, v2

    const/16 v28, 0x0

    goto :goto_3

    :cond_4
    const/16 v28, 0x0

    :goto_2
    const/16 v29, 0x0

    :goto_3
    iget v0, v15, Lb/g/a/i/d;->o0:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_7

    .line 1
    iget-object v0, v15, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_6

    iget-object v3, v15, Lb/g/a/i/d;->T:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/c;

    invoke-virtual {v3}, Lb/g/a/i/c;->h()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_7

    .line 2
    iget-object v0, v15, Lb/g/a/i/d;->U:[Z

    aget-boolean v2, v0, v5

    if-nez v2, :cond_7

    aget-boolean v0, v0, v6

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, v15, Lb/g/a/i/d;->j:Z

    if-nez v0, :cond_8

    iget-boolean v2, v15, Lb/g/a/i/d;->k:Z

    if-eqz v2, :cond_c

    :cond_8
    if-eqz v0, :cond_9

    iget v0, v15, Lb/g/a/i/d;->b0:I

    invoke-virtual {v14, v12, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget v0, v15, Lb/g/a/i/d;->b0:I

    iget v2, v15, Lb/g/a/i/d;->X:I

    add-int/2addr v0, v2

    invoke-virtual {v14, v11, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    if-eqz v29, :cond_9

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_9

    check-cast v0, Lb/g/a/i/e;

    iget-object v2, v15, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v0, v2}, Lb/g/a/i/e;->a0(Lb/g/a/i/c;)V

    iget-object v2, v15, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v0, v2}, Lb/g/a/i/e;->Z(Lb/g/a/i/c;)V

    :cond_9
    iget-boolean v0, v15, Lb/g/a/i/d;->k:Z

    if-eqz v0, :cond_b

    iget v0, v15, Lb/g/a/i/d;->c0:I

    invoke-virtual {v14, v10, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget v0, v15, Lb/g/a/i/d;->c0:I

    iget v2, v15, Lb/g/a/i/d;->Y:I

    add-int/2addr v0, v2

    invoke-virtual {v14, v9, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v15, Lb/g/a/i/d;->c0:I

    iget v2, v15, Lb/g/a/i/d;->h0:I

    add-int/2addr v0, v2

    invoke-virtual {v14, v8, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    :cond_a
    if-eqz v28, :cond_b

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_b

    check-cast v0, Lb/g/a/i/e;

    iget-object v2, v15, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v0, v2}, Lb/g/a/i/e;->c0(Lb/g/a/i/c;)V

    iget-object v2, v15, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v0, v2}, Lb/g/a/i/e;->b0(Lb/g/a/i/c;)V

    :cond_b
    iget-boolean v0, v15, Lb/g/a/i/d;->j:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v15, Lb/g/a/i/d;->k:Z

    if-eqz v0, :cond_c

    iput-boolean v5, v15, Lb/g/a/i/d;->j:Z

    iput-boolean v5, v15, Lb/g/a/i/d;->k:Z

    return-void

    :cond_c
    if-eqz p2, :cond_f

    iget-object v0, v15, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    if-eqz v0, :cond_f

    iget-object v2, v15, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    if-eqz v2, :cond_f

    iget-object v3, v0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-boolean v7, v3, Lb/g/a/i/m/f;->j:Z

    if-eqz v7, :cond_f

    iget-object v0, v0, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-boolean v0, v0, Lb/g/a/i/m/f;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, v2, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-boolean v0, v0, Lb/g/a/i/m/f;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, v2, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-boolean v0, v0, Lb/g/a/i/m/f;->j:Z

    if-eqz v0, :cond_f

    iget v0, v3, Lb/g/a/i/m/f;->g:I

    invoke-virtual {v14, v12, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v0, v0, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget v0, v0, Lb/g/a/i/m/f;->g:I

    invoke-virtual {v14, v11, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v0, v0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget v0, v0, Lb/g/a/i/m/f;->g:I

    invoke-virtual {v14, v10, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v0, v0, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget v0, v0, Lb/g/a/i/m/f;->g:I

    invoke-virtual {v14, v9, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v0, v0, Lb/g/a/i/m/m;->k:Lb/g/a/i/m/f;

    iget v0, v0, Lb/g/a/i/m/f;->g:I

    invoke-virtual {v14, v8, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_e

    if-eqz v29, :cond_d

    iget-object v0, v15, Lb/g/a/i/d;->f:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->C()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    iget-object v0, v0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    invoke-virtual {v14, v0, v11, v5, v4}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_d
    if-eqz v28, :cond_e

    iget-object v0, v15, Lb/g/a/i/d;->f:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->D()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    iget-object v0, v0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    invoke-virtual {v14, v0, v9, v5, v4}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_e
    iput-boolean v5, v15, Lb/g/a/i/d;->j:Z

    iput-boolean v5, v15, Lb/g/a/i/d;->k:Z

    return-void

    :cond_f
    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_14

    invoke-virtual {v15, v5}, Lb/g/a/i/d;->B(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    check-cast v0, Lb/g/a/i/e;

    invoke-virtual {v0, v15, v5}, Lb/g/a/i/e;->X(Lb/g/a/i/d;I)V

    const/4 v0, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->C()Z

    move-result v0

    :goto_6
    invoke-virtual {v15, v6}, Lb/g/a/i/d;->B(I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    check-cast v2, Lb/g/a/i/e;

    invoke-virtual {v2, v15, v6}, Lb/g/a/i/e;->X(Lb/g/a/i/d;I)V

    const/4 v2, 0x1

    goto :goto_7

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->D()Z

    move-result v2

    :goto_7
    if-nez v0, :cond_12

    if-eqz v29, :cond_12

    iget v3, v15, Lb/g/a/i/d;->o0:I

    if-eq v3, v4, :cond_12

    iget-object v3, v15, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v3, :cond_12

    iget-object v3, v15, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v3, :cond_12

    iget-object v3, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    iget-object v3, v3, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v14, v3}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v3

    invoke-virtual {v14, v3, v11, v5, v6}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_12
    if-nez v2, :cond_13

    if-eqz v28, :cond_13

    iget v3, v15, Lb/g/a/i/d;->o0:I

    if-eq v3, v4, :cond_13

    iget-object v3, v15, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v3, :cond_13

    iget-object v3, v15, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v3, :cond_13

    iget-object v3, v15, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    if-nez v3, :cond_13

    iget-object v3, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    iget-object v3, v3, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v14, v3}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v3

    invoke-virtual {v14, v3, v9, v5, v6}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_13
    move/from16 v31, v0

    move/from16 v30, v2

    goto :goto_8

    :cond_14
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_8
    iget v0, v15, Lb/g/a/i/d;->X:I

    iget v2, v15, Lb/g/a/i/d;->i0:I

    if-ge v0, v2, :cond_15

    goto :goto_9

    :cond_15
    move v2, v0

    :goto_9
    iget v3, v15, Lb/g/a/i/d;->Y:I

    iget v7, v15, Lb/g/a/i/d;->j0:I

    if-ge v3, v7, :cond_16

    goto :goto_a

    :cond_16
    move v7, v3

    :goto_a
    iget-object v1, v15, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v4, v1, v5

    move/from16 v19, v2

    sget-object v2, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    if-eq v4, v2, :cond_17

    const/4 v4, 0x1

    goto :goto_b

    :cond_17
    const/4 v4, 0x0

    :goto_b
    aget-object v5, v1, v6

    if-eq v5, v2, :cond_18

    const/4 v5, 0x1

    goto :goto_c

    :cond_18
    const/4 v5, 0x0

    :goto_c
    iget v6, v15, Lb/g/a/i/d;->a0:I

    iput v6, v15, Lb/g/a/i/d;->B:I

    move/from16 v22, v7

    iget v7, v15, Lb/g/a/i/d;->Z:F

    iput v7, v15, Lb/g/a/i/d;->C:F

    move-object/from16 v23, v8

    iget v8, v15, Lb/g/a/i/d;->q:I

    move-object/from16 v27, v9

    iget v9, v15, Lb/g/a/i/d;->r:I

    const/16 v24, 0x0

    const/16 v25, 0x4

    move-object/from16 v32, v10

    cmpl-float v24, v7, v24

    if-lez v24, :cond_2b

    iget v10, v15, Lb/g/a/i/d;->o0:I

    move-object/from16 v33, v11

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2c

    const/4 v10, 0x0

    aget-object v11, v1, v10

    if-ne v11, v2, :cond_19

    if-nez v8, :cond_19

    const/4 v8, 0x3

    :cond_19
    const/4 v10, 0x1

    aget-object v11, v1, v10

    if-ne v11, v2, :cond_1a

    if-nez v9, :cond_1a

    const/4 v9, 0x3

    :cond_1a
    const/4 v11, 0x0

    aget-object v10, v1, v11

    const/high16 v26, 0x3f800000    # 1.0f

    if-ne v10, v2, :cond_25

    const/4 v10, 0x1

    aget-object v11, v1, v10

    if-ne v11, v2, :cond_25

    const/4 v10, 0x3

    if-ne v8, v10, :cond_25

    if-ne v9, v10, :cond_25

    const/4 v0, -0x1

    if-ne v6, v0, :cond_1c

    if-eqz v4, :cond_1b

    if-nez v5, :cond_1b

    const/4 v1, 0x0

    .line 3
    iput v1, v15, Lb/g/a/i/d;->B:I

    goto :goto_d

    :cond_1b
    if-nez v4, :cond_1c

    if-eqz v5, :cond_1c

    const/4 v1, 0x1

    iput v1, v15, Lb/g/a/i/d;->B:I

    if-ne v6, v0, :cond_1c

    div-float v0, v26, v7

    iput v0, v15, Lb/g/a/i/d;->C:F

    :cond_1c
    :goto_d
    iget v0, v15, Lb/g/a/i/d;->B:I

    if-nez v0, :cond_1e

    iget-object v0, v15, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v15, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_e
    iput v0, v15, Lb/g/a/i/d;->B:I

    goto :goto_f

    :cond_1e
    const/4 v0, 0x1

    iget v1, v15, Lb/g/a/i/d;->B:I

    if-ne v1, v0, :cond_20

    iget-object v0, v15, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v15, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    const/4 v0, 0x0

    goto :goto_e

    :cond_20
    :goto_f
    iget v0, v15, Lb/g/a/i/d;->B:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    iget-object v0, v15, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v15, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v15, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v15, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    iget-object v0, v15, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v15, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    :goto_10
    iput v0, v15, Lb/g/a/i/d;->B:I

    goto :goto_11

    :cond_22
    iget-object v0, v15, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v15, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, v15, Lb/g/a/i/d;->C:F

    div-float v0, v26, v0

    iput v0, v15, Lb/g/a/i/d;->C:F

    const/4 v0, 0x1

    goto :goto_10

    :cond_23
    :goto_11
    iget v0, v15, Lb/g/a/i/d;->B:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    iget v0, v15, Lb/g/a/i/d;->t:I

    if-lez v0, :cond_24

    iget v1, v15, Lb/g/a/i/d;->w:I

    if-nez v1, :cond_24

    const/4 v1, 0x0

    iput v1, v15, Lb/g/a/i/d;->B:I

    goto/16 :goto_12

    :cond_24
    if-nez v0, :cond_2a

    iget v0, v15, Lb/g/a/i/d;->w:I

    if-lez v0, :cond_2a

    iget v0, v15, Lb/g/a/i/d;->C:F

    div-float v0, v26, v0

    iput v0, v15, Lb/g/a/i/d;->C:F

    const/4 v0, 0x1

    iput v0, v15, Lb/g/a/i/d;->B:I

    goto :goto_12

    :cond_25
    const/4 v4, 0x0

    .line 4
    aget-object v5, v1, v4

    if-ne v5, v2, :cond_27

    const/4 v5, 0x3

    if-ne v8, v5, :cond_27

    iput v4, v15, Lb/g/a/i/d;->B:I

    int-to-float v0, v3

    mul-float v7, v7, v0

    float-to-int v0, v7

    const/4 v3, 0x1

    aget-object v1, v1, v3

    move/from16 v19, v0

    if-eq v1, v2, :cond_26

    move/from16 v36, v9

    move/from16 v34, v22

    const/16 v20, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x4

    goto :goto_14

    :cond_26
    move/from16 v37, v8

    move/from16 v36, v9

    move/from16 v34, v22

    const/16 v20, 0x0

    goto :goto_13

    :cond_27
    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-ne v4, v2, :cond_2a

    const/4 v4, 0x3

    if-ne v9, v4, :cond_2a

    iput v3, v15, Lb/g/a/i/d;->B:I

    const/4 v3, -0x1

    if-ne v6, v3, :cond_28

    div-float v3, v26, v7

    iput v3, v15, Lb/g/a/i/d;->C:F

    :cond_28
    iget v3, v15, Lb/g/a/i/d;->C:F

    int-to-float v0, v0

    mul-float v3, v3, v0

    float-to-int v7, v3

    const/16 v20, 0x0

    aget-object v0, v1, v20

    move/from16 v34, v7

    move/from16 v37, v8

    if-eq v0, v2, :cond_29

    const/16 v35, 0x0

    const/16 v36, 0x4

    goto :goto_14

    :cond_29
    move/from16 v36, v9

    goto :goto_13

    :cond_2a
    :goto_12
    const/16 v20, 0x0

    move/from16 v37, v8

    move/from16 v36, v9

    move/from16 v34, v22

    :goto_13
    const/16 v35, 0x1

    goto :goto_14

    :cond_2b
    move-object/from16 v33, v11

    :cond_2c
    const/16 v20, 0x0

    move/from16 v37, v8

    move/from16 v36, v9

    move/from16 v34, v22

    const/16 v35, 0x0

    :goto_14
    iget-object v0, v15, Lb/g/a/i/d;->s:[I

    aput v37, v0, v20

    const/4 v1, 0x1

    aput v36, v0, v1

    if-eqz v35, :cond_2e

    iget v0, v15, Lb/g/a/i/d;->B:I

    const/4 v1, -0x1

    if-eqz v0, :cond_2d

    if-ne v0, v1, :cond_2f

    :cond_2d
    const/16 v17, 0x1

    goto :goto_15

    :cond_2e
    const/4 v1, -0x1

    :cond_2f
    const/16 v17, 0x0

    :goto_15
    if-eqz v35, :cond_31

    iget v0, v15, Lb/g/a/i/d;->B:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_30

    if-ne v0, v1, :cond_31

    :cond_30
    const/16 v38, 0x1

    goto :goto_16

    :cond_31
    const/16 v38, 0x0

    :goto_16
    iget-object v0, v15, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne v0, v13, :cond_32

    instance-of v0, v15, Lb/g/a/i/e;

    if-eqz v0, :cond_32

    const/4 v9, 0x1

    goto :goto_17

    :cond_32
    const/4 v9, 0x0

    :goto_17
    if-eqz v9, :cond_33

    const/16 v19, 0x0

    :cond_33
    iget-object v0, v15, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v39, v0, 0x1

    iget-object v0, v15, Lb/g/a/i/d;->U:[Z

    const/4 v3, 0x0

    aget-boolean v22, v0, v3

    aget-boolean v40, v0, v1

    iget v0, v15, Lb/g/a/i/d;->n:I

    const/16 v41, 0x0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_3a

    iget-boolean v0, v15, Lb/g/a/i/d;->j:Z

    if-nez v0, :cond_3a

    if-eqz p2, :cond_36

    iget-object v0, v15, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    if-eqz v0, :cond_36

    iget-object v1, v0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-boolean v3, v1, Lb/g/a/i/m/f;->j:Z

    if-eqz v3, :cond_36

    iget-object v0, v0, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-boolean v0, v0, Lb/g/a/i/m/f;->j:Z

    if-nez v0, :cond_34

    goto :goto_18

    :cond_34
    if-eqz p2, :cond_3a

    iget v0, v1, Lb/g/a/i/m/f;->g:I

    invoke-virtual {v14, v12, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v0, v0, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget v0, v0, Lb/g/a/i/m/f;->g:I

    move-object/from16 v11, v33

    invoke-virtual {v14, v11, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_35

    if-eqz v29, :cond_35

    iget-object v0, v15, Lb/g/a/i/d;->f:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_35

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->C()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    iget-object v0, v0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v14, v0, v11, v1, v4}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_35
    move-object/from16 v45, v2

    move-object/from16 v44, v12

    move-object/from16 v49, v13

    move-object/from16 v46, v23

    move-object/from16 v47, v27

    move-object/from16 v48, v32

    move-object/from16 v32, v11

    goto/16 :goto_1c

    :cond_36
    :goto_18
    move-object/from16 v11, v33

    const/16 v4, 0x8

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_37

    iget-object v0, v0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    move-object v8, v0

    goto :goto_19

    :cond_37
    move-object/from16 v8, v41

    :goto_19
    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_38

    iget-object v0, v0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    move-object v6, v0

    goto :goto_1a

    :cond_38
    move-object/from16 v6, v41

    :goto_1a
    iget-object v0, v15, Lb/g/a/i/d;->f:[Z

    const/4 v5, 0x0

    aget-boolean v10, v0, v5

    iget-object v0, v15, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v16, v0, v5

    iget-object v1, v15, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v3, v15, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget v5, v15, Lb/g/a/i/d;->b0:I

    iget v14, v15, Lb/g/a/i/d;->i0:I

    iget-object v4, v15, Lb/g/a/i/d;->D:[I

    const/16 v20, 0x0

    aget v42, v4, v20

    iget v4, v15, Lb/g/a/i/d;->k0:F

    const/16 v21, 0x1

    aget-object v0, v0, v21

    if-ne v0, v2, :cond_39

    const/16 v43, 0x1

    goto :goto_1b

    :cond_39
    const/16 v43, 0x0

    :goto_1b
    iget v0, v15, Lb/g/a/i/d;->t:I

    move/from16 v24, v0

    iget v0, v15, Lb/g/a/i/d;->u:I

    move/from16 v25, v0

    iget v0, v15, Lb/g/a/i/d;->v:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v44, v1

    move-object/from16 v1, p1

    move-object/from16 v45, v2

    const/4 v2, 0x1

    move-object/from16 v18, v3

    move/from16 v3, v29

    move/from16 v33, v4

    move/from16 v4, v28

    move/from16 v20, v5

    move v5, v10

    const/4 v10, 0x1

    move-object v7, v8

    move-object/from16 v46, v23

    move-object/from16 v8, v16

    move-object/from16 v47, v27

    move-object/from16 v48, v32

    move-object/from16 v10, v44

    move-object/from16 v32, v11

    move-object/from16 v11, v18

    move-object/from16 v44, v12

    move/from16 v12, v20

    move-object/from16 v49, v13

    move/from16 v13, v19

    move/from16 v15, v42

    move/from16 v16, v33

    move/from16 v18, v43

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v22

    move/from16 v22, v37

    move/from16 v23, v36

    move/from16 v27, v39

    invoke-virtual/range {v0 .. v27}, Lb/g/a/i/d;->h(Lb/g/a/d;ZZZZLb/g/a/g;Lb/g/a/g;Lb/g/a/i/d$a;ZLb/g/a/i/c;Lb/g/a/i/c;IIIIFZZZZZIIIIFZ)V

    goto :goto_1c

    :cond_3a
    move-object/from16 v45, v2

    move-object/from16 v44, v12

    move-object/from16 v49, v13

    move-object/from16 v46, v23

    move-object/from16 v47, v27

    move-object/from16 v48, v32

    move-object/from16 v32, v33

    :goto_1c
    if-eqz p2, :cond_3e

    move-object/from16 v15, p0

    iget-object v0, v15, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    if-eqz v0, :cond_3d

    iget-object v1, v0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-boolean v2, v1, Lb/g/a/i/m/f;->j:Z

    if-eqz v2, :cond_3d

    iget-object v0, v0, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-boolean v0, v0, Lb/g/a/i/m/f;->j:Z

    if-eqz v0, :cond_3d

    iget v0, v1, Lb/g/a/i/m/f;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v48

    invoke-virtual {v14, v13, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v0, v0, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget v0, v0, Lb/g/a/i/m/f;->g:I

    move-object/from16 v12, v47

    invoke-virtual {v14, v12, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v0, v0, Lb/g/a/i/m/m;->k:Lb/g/a/i/m/f;

    iget v0, v0, Lb/g/a/i/m/f;->g:I

    move-object/from16 v1, v46

    invoke-virtual {v14, v1, v0}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_3c

    if-nez v30, :cond_3c

    if-eqz v28, :cond_3c

    iget-object v2, v15, Lb/g/a/i/d;->f:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_3b

    iget-object v0, v0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_1d

    :cond_3b
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_1d

    :cond_3c
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_1d
    const/4 v6, 0x0

    goto :goto_1f

    :cond_3d
    move-object/from16 v14, p1

    move-object/from16 v1, v46

    move-object/from16 v12, v47

    move-object/from16 v13, v48

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_1e

    :cond_3e
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v46

    move-object/from16 v12, v47

    move-object/from16 v13, v48

    :goto_1e
    const/4 v6, 0x1

    :goto_1f
    iget v0, v15, Lb/g/a/i/d;->o:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3f

    const/4 v5, 0x0

    goto :goto_20

    :cond_3f
    move v5, v6

    :goto_20
    if-eqz v5, :cond_4a

    iget-boolean v0, v15, Lb/g/a/i/d;->k:Z

    if-nez v0, :cond_4a

    iget-object v0, v15, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v0, v0, v11

    move-object/from16 v3, v49

    if-ne v0, v3, :cond_40

    instance-of v0, v15, Lb/g/a/i/e;

    if-eqz v0, :cond_40

    const/4 v9, 0x1

    goto :goto_21

    :cond_40
    const/4 v9, 0x0

    :goto_21
    if-eqz v9, :cond_41

    const/16 v34, 0x0

    :cond_41
    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    move-object v7, v0

    goto :goto_22

    :cond_42
    move-object/from16 v7, v41

    :goto_22
    iget-object v0, v15, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    move-object v6, v0

    goto :goto_23

    :cond_43
    move-object/from16 v6, v41

    :goto_23
    iget v0, v15, Lb/g/a/i/d;->h0:I

    if-gtz v0, :cond_44

    iget v3, v15, Lb/g/a/i/d;->o0:I

    if-ne v3, v2, :cond_48

    :cond_44
    iget-object v3, v15, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    iget-object v4, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v4, :cond_46

    invoke-virtual {v14, v1, v13, v0, v2}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    iget-object v0, v15, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    iget-object v0, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    iget-object v3, v15, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    invoke-virtual {v14, v1, v0, v3, v2}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    if-eqz v28, :cond_45

    iget-object v0, v15, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v14, v7, v0, v10, v1}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_45
    const/16 v27, 0x0

    goto :goto_24

    :cond_46
    iget v4, v15, Lb/g/a/i/d;->o0:I

    if-ne v4, v2, :cond_47

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v0

    :cond_47
    invoke-virtual {v14, v1, v13, v0, v2}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    :cond_48
    move/from16 v27, v39

    :goto_24
    iget-object v0, v15, Lb/g/a/i/d;->f:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v8, v0, v11

    iget-object v4, v15, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v3, v15, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget v1, v15, Lb/g/a/i/d;->c0:I

    iget v2, v15, Lb/g/a/i/d;->j0:I

    iget-object v10, v15, Lb/g/a/i/d;->D:[I

    aget v16, v10, v11

    iget v10, v15, Lb/g/a/i/d;->l0:F

    const/16 v17, 0x0

    aget-object v0, v0, v17

    move-object/from16 v11, v45

    if-ne v0, v11, :cond_49

    const/16 v18, 0x1

    goto :goto_25

    :cond_49
    const/16 v18, 0x0

    :goto_25
    iget v0, v15, Lb/g/a/i/d;->w:I

    move/from16 v24, v0

    iget v0, v15, Lb/g/a/i/d;->x:I

    move/from16 v25, v0

    iget v0, v15, Lb/g/a/i/d;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v2

    const/4 v2, 0x0

    move-object v11, v3

    move/from16 v3, v28

    move-object/from16 v22, v4

    move/from16 v4, v29

    move/from16 v17, v10

    move-object/from16 v10, v22

    move-object/from16 v28, v12

    move/from16 v12, v19

    move-object/from16 v29, v13

    move/from16 v13, v34

    move/from16 v14, v20

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v38

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v40

    move/from16 v22, v36

    move/from16 v23, v37

    invoke-virtual/range {v0 .. v27}, Lb/g/a/i/d;->h(Lb/g/a/d;ZZZZLb/g/a/g;Lb/g/a/g;Lb/g/a/i/d$a;ZLb/g/a/i/c;Lb/g/a/i/c;IIIIFZZZZZIIIIFZ)V

    goto :goto_26

    :cond_4a
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    :goto_26
    if-eqz v35, :cond_4c

    const/16 v6, 0x8

    move-object/from16 v7, p0

    iget v0, v7, Lb/g/a/i/d;->B:I

    const/4 v1, 0x1

    iget v5, v7, Lb/g/a/i/d;->C:F

    if-ne v0, v1, :cond_4b

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v32

    move-object/from16 v4, v44

    goto :goto_27

    :cond_4b
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v44

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    :goto_27
    invoke-virtual/range {v0 .. v6}, Lb/g/a/d;->h(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;FI)V

    goto :goto_28

    :cond_4c
    move-object/from16 v7, p0

    :goto_28
    iget-object v0, v7, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, v7, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    .line 5
    iget-object v0, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    .line 6
    iget-object v0, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    .line 7
    iget v1, v7, Lb/g/a/i/d;->E:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v2

    .line 8
    sget-object v3, Lb/g/a/i/c$a;->d:Lb/g/a/i/c$a;

    invoke-virtual {v7, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v9

    sget-object v4, Lb/g/a/i/c$a;->e:Lb/g/a/i/c$a;

    invoke-virtual {v7, v4}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v11

    sget-object v6, Lb/g/a/i/c$a;->f:Lb/g/a/i/c$a;

    invoke-virtual {v7, v6}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v8

    invoke-virtual {v5, v8}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v16

    sget-object v8, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    invoke-virtual {v7, v8}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v10

    invoke-virtual {v5, v10}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v12

    invoke-virtual {v0, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v3

    invoke-virtual {v5, v3}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v3

    invoke-virtual {v0, v4}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v4

    invoke-virtual {v5, v4}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v13

    invoke-virtual {v0, v6}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v4

    invoke-virtual {v5, v4}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v4

    invoke-virtual {v0, v8}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    invoke-virtual {v5, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v0

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 p2, v3

    move-object/from16 v19, v4

    mul-double v3, v17, v1

    double-to-float v15, v3

    move-object v10, v0

    invoke-virtual/range {v10 .. v15}, Lb/g/a/b;->g(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;F)Lb/g/a/b;

    invoke-virtual {v5, v0}, Lb/g/a/d;->c(Lb/g/a/b;)V

    invoke-virtual/range {p1 .. p1}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-float v13, v3

    move-object v8, v0

    move-object/from16 v10, v16

    move-object/from16 v11, p2

    move-object/from16 v12, v19

    invoke-virtual/range {v8 .. v13}, Lb/g/a/b;->g(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;F)Lb/g/a/b;

    invoke-virtual {v5, v0}, Lb/g/a/d;->c(Lb/g/a/b;)V

    :cond_4d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 9
    iput-boolean v1, v0, Lb/g/a/i/d;->j:Z

    iput-boolean v1, v0, Lb/g/a/i/d;->k:Z

    return-void
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lb/g/a/i/d;->o0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(Lb/g/a/d;ZZZZLb/g/a/g;Lb/g/a/g;Lb/g/a/i/d$a;ZLb/g/a/i/c;Lb/g/a/i/c;IIIIFZZZZZIIIIFZ)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    sget-object v5, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    invoke-virtual {v10, v13}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v9

    invoke-virtual {v10, v14}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v8

    .line 1
    iget-object v6, v13, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    .line 2
    invoke-virtual {v10, v6}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v7

    .line 3
    iget-object v6, v14, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    .line 4
    invoke-virtual {v10, v6}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, Lb/g/a/i/c;->i()Z

    move-result v22

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->i()Z

    move-result v23

    iget-object v12, v0, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    invoke-virtual {v12}, Lb/g/a/i/c;->i()Z

    move-result v12

    if-eqz v23, :cond_0

    add-int/lit8 v16, v22, 0x1

    goto :goto_0

    :cond_0
    move/from16 v16, v22

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v16, v16, 0x1

    :cond_1
    move/from16 v2, v16

    if-eqz p17, :cond_2

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move/from16 v14, p22

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object/from16 v24, v6

    const/4 v6, 0x1

    if-eqz v11, :cond_4

    if-eq v11, v6, :cond_4

    const/4 v6, 0x2

    if-eq v11, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x4

    if-eq v14, v6, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x4

    :cond_5
    const/4 v11, 0x0

    :goto_3
    iget v6, v0, Lb/g/a/i/d;->h:I

    move/from16 v16, v11

    const/4 v11, -0x1

    if-eq v6, v11, :cond_6

    if-eqz p2, :cond_6

    iput v11, v0, Lb/g/a/i/d;->h:I

    move/from16 p13, v6

    const/16 v16, 0x0

    :cond_6
    iget v6, v0, Lb/g/a/i/d;->i:I

    if-eq v6, v11, :cond_7

    if-nez p2, :cond_7

    iput v11, v0, Lb/g/a/i/d;->i:I

    const/16 v16, 0x0

    goto :goto_4

    :cond_7
    move/from16 v6, p13

    :goto_4
    iget v11, v0, Lb/g/a/i/d;->o0:I

    move/from16 p13, v6

    const/16 v6, 0x8

    if-ne v11, v6, :cond_8

    const/4 v11, 0x0

    const/16 v28, 0x0

    goto :goto_5

    :cond_8
    move/from16 v11, p13

    move/from16 v28, v16

    :goto_5
    if-eqz p27, :cond_a

    if-nez v22, :cond_9

    if-nez v23, :cond_9

    if-nez v12, :cond_9

    move/from16 v6, p12

    invoke-virtual {v10, v9, v6}, Lb/g/a/d;->e(Lb/g/a/g;I)V

    goto :goto_6

    :cond_9
    if-eqz v22, :cond_a

    if-nez v23, :cond_a

    invoke-virtual/range {p10 .. p10}, Lb/g/a/i/c;->e()I

    move-result v6

    move/from16 v29, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v6, v12}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v29, v12

    const/16 v12, 0x8

    :goto_7
    if-nez v28, :cond_e

    const/4 v5, 0x3

    if-eqz p9, :cond_c

    const/4 v6, 0x0

    invoke-virtual {v10, v8, v9, v6, v5}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    if-lez v15, :cond_b

    invoke-virtual {v10, v8, v9, v15, v12}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_b
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_d

    invoke-virtual {v10, v8, v9, v1, v12}, Lb/g/a/d;->g(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_8

    :cond_c
    invoke-virtual {v10, v8, v9, v11, v12}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    :cond_d
    :goto_8
    const/4 v1, 0x3

    goto/16 :goto_c

    :cond_e
    const/4 v1, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_11

    if-nez p17, :cond_11

    const/4 v6, 0x1

    if-eq v14, v6, :cond_f

    if-nez v14, :cond_11

    :cond_f
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v4, :cond_10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_10
    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v5, v6}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    move/from16 v11, p5

    move v12, v3

    const/16 v28, 0x0

    goto/16 :goto_f

    :cond_11
    const/4 v6, -0x2

    if-ne v3, v6, :cond_12

    move v3, v11

    :cond_12
    if-ne v4, v6, :cond_13

    move v4, v11

    :cond_13
    if-lez v11, :cond_14

    const/4 v6, 0x1

    if-eq v14, v6, :cond_14

    const/4 v11, 0x0

    :cond_14
    if-lez v3, :cond_15

    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v3, v6}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_15
    if-lez v4, :cond_18

    if-eqz p3, :cond_16

    const/4 v6, 0x1

    if-ne v14, v6, :cond_16

    const/4 v6, 0x0

    goto :goto_9

    :cond_16
    const/4 v6, 0x1

    :goto_9
    if-eqz v6, :cond_17

    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v4, v6}, Lb/g/a/d;->g(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_a

    :cond_17
    const/16 v6, 0x8

    :goto_a
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_b

    :cond_18
    const/16 v6, 0x8

    :goto_b
    const/4 v12, 0x1

    if-ne v14, v12, :cond_1b

    if-eqz p3, :cond_19

    invoke-virtual {v10, v8, v9, v11, v6}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    goto :goto_c

    :cond_19
    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v11, v5}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    invoke-virtual {v10, v8, v9, v11, v6}, Lb/g/a/d;->g(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_1a
    :goto_c
    move/from16 v11, p5

    move v12, v3

    goto :goto_f

    :cond_1b
    const/4 v6, 0x2

    if-ne v14, v6, :cond_1e

    .line 5
    iget-object v6, v13, Lb/g/a/i/c;->e:Lb/g/a/i/c$a;

    .line 6
    sget-object v11, Lb/g/a/i/c$a;->e:Lb/g/a/i/c$a;

    if-eq v6, v11, :cond_1d

    if-ne v6, v5, :cond_1c

    goto :goto_d

    :cond_1c
    iget-object v5, v0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    sget-object v6, Lb/g/a/i/c$a;->d:Lb/g/a/i/c$a;

    invoke-virtual {v5, v6}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v5

    invoke-virtual {v10, v5}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v5

    iget-object v6, v0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    sget-object v11, Lb/g/a/i/c$a;->f:Lb/g/a/i/c$a;

    invoke-virtual {v6, v11}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v6

    invoke-virtual {v10, v6}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v6

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    goto :goto_e

    :cond_1d
    :goto_d
    iget-object v6, v0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    invoke-virtual {v6, v11}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v6

    invoke-virtual {v10, v6}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v6

    iget-object v11, v0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    invoke-virtual {v11, v5}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v5

    invoke-virtual {v10, v5}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v5

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v5

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v21, p26

    invoke-virtual/range {v16 .. v21}, Lb/g/a/b;->d(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;F)Lb/g/a/b;

    invoke-virtual {v10, v5}, Lb/g/a/d;->c(Lb/g/a/b;)V

    if-eqz p3, :cond_1a

    const/16 v28, 0x0

    goto :goto_c

    :cond_1e
    move v12, v3

    const/4 v11, 0x1

    :goto_f
    if-eqz p27, :cond_58

    if-eqz p19, :cond_1f

    move-object/from16 v3, p7

    move v4, v2

    move-object v7, v8

    move-object v5, v9

    move/from16 p5, v11

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/16 v12, 0x8

    const/16 v25, 0x1

    move-object/from16 v2, p6

    goto/16 :goto_32

    :cond_1f
    if-nez v22, :cond_20

    if-nez v23, :cond_20

    if-nez v29, :cond_20

    move-object v7, v8

    move/from16 p5, v11

    move-object/from16 v2, v24

    :goto_10
    const/4 v1, 0x0

    const/4 v3, 0x5

    goto/16 :goto_2f

    :cond_20
    if-eqz v22, :cond_22

    if-nez v23, :cond_22

    iget-object v1, v13, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    if-eqz p3, :cond_21

    instance-of v1, v1, Lb/g/a/i/a;

    if-eqz v1, :cond_21

    const/16 v6, 0x8

    goto :goto_11

    :cond_21
    const/4 v6, 0x5

    :goto_11
    move/from16 v20, p3

    move-object v7, v8

    move/from16 p5, v11

    move-object/from16 v2, v24

    const/4 v1, 0x0

    goto/16 :goto_31

    :cond_22
    if-nez v22, :cond_23

    if-eqz v23, :cond_23

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->e()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v6, v24

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v6, v1, v2}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    if-eqz p3, :cond_55

    move-object/from16 v3, p6

    const/4 v1, 0x5

    const/4 v5, 0x0

    invoke-virtual {v10, v9, v3, v5, v1}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto/16 :goto_2e

    :cond_23
    move-object/from16 v3, p6

    move-object/from16 v6, v24

    const/4 v5, 0x0

    if-eqz v22, :cond_55

    if-eqz v23, :cond_55

    iget-object v2, v13, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v2, v2, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    move-object/from16 v1, p11

    const/4 v13, 0x3

    iget-object v5, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v5, v5, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    .line 7
    iget-object v13, v0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    const/16 v16, 0x6

    if-eqz v28, :cond_39

    if-nez v14, :cond_28

    if-nez v4, :cond_25

    if-nez v12, :cond_25

    .line 8
    iget-boolean v4, v7, Lb/g/a/g;->h:Z

    if-eqz v4, :cond_24

    iget-boolean v4, v6, Lb/g/a/g;->h:Z

    if-eqz v4, :cond_24

    invoke-virtual/range {p10 .. p10}, Lb/g/a/i/c;->e()I

    move-result v2

    const/16 v4, 0x8

    invoke-virtual {v10, v9, v7, v2, v4}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v8, v6, v1, v4}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    return-void

    :cond_24
    const/16 v4, 0x8

    const/16 v17, 0x8

    const/16 v18, 0x8

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    goto :goto_12

    :cond_25
    const/16 v4, 0x8

    const/16 v17, 0x5

    const/16 v18, 0x5

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    :goto_12
    instance-of v4, v2, Lb/g/a/i/a;

    if-nez v4, :cond_27

    instance-of v4, v5, Lb/g/a/i/a;

    if-eqz v4, :cond_26

    goto :goto_13

    :cond_26
    move/from16 v4, v17

    const/4 v15, 0x1

    const/16 v17, 0x8

    move/from16 v34, v18

    move/from16 v18, v14

    move/from16 v14, v34

    goto/16 :goto_1c

    :cond_27
    :goto_13
    move/from16 v24, v18

    move/from16 v23, v19

    move/from16 v22, v20

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v17, 0x8

    const/16 v19, 0x4

    const/16 v20, 0x6

    move/from16 v18, v14

    :goto_14
    move-object/from16 v14, p7

    goto/16 :goto_22

    :cond_28
    const/4 v15, 0x2

    const/16 v17, 0x8

    if-ne v14, v15, :cond_2b

    instance-of v4, v2, Lb/g/a/i/a;

    if-nez v4, :cond_2a

    instance-of v4, v5, Lb/g/a/i/a;

    if-eqz v4, :cond_29

    goto :goto_15

    :cond_29
    const/4 v4, 0x5

    goto :goto_16

    :cond_2a
    :goto_15
    const/4 v4, 0x4

    :goto_16
    move v15, v4

    const/4 v4, 0x5

    goto :goto_17

    :cond_2b
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2c

    const/16 v4, 0x8

    const/4 v15, 0x4

    :goto_17
    move/from16 v18, v14

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move v14, v4

    move v4, v15

    const/4 v15, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v15, 0x3

    if-ne v14, v15, :cond_38

    iget v15, v0, Lb/g/a/i/d;->B:I

    move/from16 v18, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_2f

    if-eqz p20, :cond_2e

    if-eqz p3, :cond_2d

    const/4 v4, 0x5

    goto :goto_18

    :cond_2d
    const/4 v4, 0x4

    goto :goto_18

    :cond_2e
    const/16 v4, 0x8

    :goto_18
    const/4 v14, 0x5

    const/4 v15, 0x1

    const/16 v19, 0x8

    goto :goto_1f

    :cond_2f
    if-eqz p17, :cond_33

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_31

    const/4 v15, 0x1

    if-ne v14, v15, :cond_30

    goto :goto_19

    :cond_30
    const/4 v4, 0x0

    goto :goto_1a

    :cond_31
    const/4 v15, 0x1

    :goto_19
    const/4 v4, 0x1

    :goto_1a
    if-nez v4, :cond_32

    const/4 v4, 0x5

    const/16 v14, 0x8

    goto :goto_1b

    :cond_32
    const/4 v4, 0x4

    const/4 v14, 0x5

    :goto_1b
    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    :goto_1c
    move/from16 v24, v14

    move/from16 v23, v19

    move/from16 v22, v20

    const/16 v20, 0x6

    move-object/from16 v14, p7

    move/from16 v19, v4

    const/4 v4, 0x5

    goto/16 :goto_22

    :cond_33
    const/4 v15, 0x1

    if-lez v4, :cond_34

    const/4 v4, 0x5

    goto :goto_1e

    :cond_34
    if-nez v4, :cond_37

    if-nez v12, :cond_37

    if-nez p20, :cond_35

    const/16 v4, 0x8

    goto :goto_1e

    :cond_35
    if-eq v2, v13, :cond_36

    if-eq v5, v13, :cond_36

    const/4 v4, 0x4

    goto :goto_1d

    :cond_36
    const/4 v4, 0x5

    :goto_1d
    move/from16 v19, v4

    const/4 v4, 0x6

    const/4 v14, 0x4

    goto :goto_1f

    :cond_37
    const/4 v4, 0x4

    :goto_1e
    move v14, v4

    const/4 v4, 0x6

    const/16 v19, 0x5

    :goto_1f
    move/from16 v20, v4

    move/from16 v24, v19

    const/4 v4, 0x5

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    move/from16 v19, v14

    goto/16 :goto_14

    :cond_38
    move/from16 v18, v14

    const/4 v15, 0x1

    move-object/from16 v14, p7

    const/4 v4, 0x5

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_21

    :cond_39
    move/from16 v18, v14

    const/4 v15, 0x1

    const/16 v17, 0x8

    iget-boolean v4, v7, Lb/g/a/g;->h:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, v6, Lb/g/a/g;->h:Z

    if-eqz v4, :cond_3c

    invoke-virtual/range {p10 .. p10}, Lb/g/a/i/c;->e()I

    move-result v2

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->e()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v2

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v3

    move/from16 p25, v4

    invoke-virtual/range {p17 .. p25}, Lb/g/a/d;->b(Lb/g/a/g;Lb/g/a/g;IFLb/g/a/g;Lb/g/a/g;II)V

    if-eqz p3, :cond_3b

    if-eqz v11, :cond_3b

    iget-object v2, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v2, :cond_3a

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->e()I

    move-result v1

    move-object/from16 v14, p7

    goto :goto_20

    :cond_3a
    move-object/from16 v14, p7

    const/4 v1, 0x0

    :goto_20
    if-eq v6, v14, :cond_3b

    const/4 v4, 0x5

    invoke-virtual {v10, v14, v8, v1, v4}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_3b
    return-void

    :cond_3c
    move-object/from16 v14, p7

    const/4 v4, 0x5

    const/16 v19, 0x1

    const/16 v20, 0x1

    :goto_21
    move/from16 v22, v19

    move/from16 v21, v20

    const/16 v19, 0x4

    const/16 v20, 0x6

    const/16 v23, 0x0

    const/16 v24, 0x5

    :goto_22
    if-eqz v21, :cond_3d

    if-ne v7, v6, :cond_3d

    if-eq v2, v13, :cond_3d

    const/16 v21, 0x0

    const/16 v26, 0x0

    goto :goto_23

    :cond_3d
    const/16 v26, 0x1

    :goto_23
    if-eqz v22, :cond_3f

    if-nez v28, :cond_3e

    if-nez p18, :cond_3e

    if-nez p20, :cond_3e

    if-ne v7, v3, :cond_3e

    if-ne v6, v14, :cond_3e

    const/16 v20, 0x0

    const/16 v22, 0x8

    const/16 v24, 0x8

    const/16 v26, 0x0

    goto :goto_24

    :cond_3e
    move/from16 v22, v20

    move/from16 v20, p3

    :goto_24
    invoke-virtual/range {p10 .. p10}, Lb/g/a/i/c;->e()I

    move-result v27

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->e()I

    move-result v29

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move-object v15, v3

    move-object v3, v7

    const/16 v30, 0x5

    move/from16 v4, v27

    move/from16 p5, v11

    const/16 v25, 0x0

    move-object v11, v5

    move/from16 v5, p16

    move-object/from16 p2, v6

    move/from16 p8, v12

    const/16 v12, 0x8

    const/16 v17, 0x4

    const/16 v25, 0x1

    move-object/from16 v31, v7

    move-object v7, v8

    move-object/from16 v32, v8

    move/from16 v8, v29

    move-object/from16 v33, v9

    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, Lb/g/a/d;->b(Lb/g/a/g;Lb/g/a/g;IFLb/g/a/g;Lb/g/a/g;II)V

    goto :goto_25

    :cond_3f
    move-object v14, v2

    move-object v15, v3

    move-object/from16 p2, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move/from16 p5, v11

    move/from16 p8, v12

    const/16 v12, 0x8

    const/16 v17, 0x4

    const/16 v25, 0x1

    move-object v11, v5

    move/from16 v20, p3

    :goto_25
    move/from16 v6, v26

    iget v1, v0, Lb/g/a/i/d;->o0:I

    if-ne v1, v12, :cond_40

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->h()Z

    move-result v1

    if-nez v1, :cond_40

    return-void

    :cond_40
    move-object/from16 v2, p2

    move-object/from16 v1, v31

    if-eqz v21, :cond_43

    if-eqz v20, :cond_42

    if-eq v1, v2, :cond_42

    if-nez v28, :cond_42

    instance-of v3, v14, Lb/g/a/i/a;

    if-nez v3, :cond_41

    instance-of v3, v11, Lb/g/a/i/a;

    if-eqz v3, :cond_42

    :cond_41
    const/4 v3, 0x6

    goto :goto_26

    :cond_42
    move/from16 v3, v24

    :goto_26
    invoke-virtual/range {p10 .. p10}, Lb/g/a/i/c;->e()I

    move-result v4

    move-object/from16 v5, v33

    invoke-virtual {v10, v5, v1, v4, v3}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->e()I

    move-result v4

    neg-int v4, v4

    move-object/from16 v7, v32

    invoke-virtual {v10, v7, v2, v4, v3}, Lb/g/a/d;->g(Lb/g/a/g;Lb/g/a/g;II)V

    move/from16 v24, v3

    goto :goto_27

    :cond_43
    move-object/from16 v7, v32

    move-object/from16 v5, v33

    :goto_27
    if-eqz v20, :cond_44

    if-eqz p21, :cond_44

    instance-of v3, v14, Lb/g/a/i/a;

    if-nez v3, :cond_44

    instance-of v3, v11, Lb/g/a/i/a;

    if-nez v3, :cond_44

    if-eq v11, v13, :cond_44

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v6, 0x1

    goto :goto_28

    :cond_44
    move/from16 v3, v19

    move/from16 v4, v24

    :goto_28
    if-eqz v6, :cond_50

    if-eqz v23, :cond_4d

    if-eqz p20, :cond_45

    if-eqz p4, :cond_4d

    :cond_45
    if-eq v14, v13, :cond_47

    if-ne v11, v13, :cond_46

    goto :goto_29

    :cond_46
    move v6, v3

    goto :goto_2a

    :cond_47
    :goto_29
    const/4 v6, 0x6

    :goto_2a
    instance-of v8, v14, Lb/g/a/i/g;

    if-nez v8, :cond_48

    instance-of v8, v11, Lb/g/a/i/g;

    if-eqz v8, :cond_49

    :cond_48
    const/4 v6, 0x5

    :cond_49
    instance-of v8, v14, Lb/g/a/i/a;

    if-nez v8, :cond_4a

    instance-of v8, v11, Lb/g/a/i/a;

    if-eqz v8, :cond_4b

    :cond_4a
    const/4 v6, 0x5

    :cond_4b
    if-eqz p20, :cond_4c

    const/4 v6, 0x5

    :cond_4c
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4d
    if-eqz v20, :cond_4f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p17, :cond_4f

    if-nez p20, :cond_4f

    if-eq v14, v13, :cond_4e

    if-ne v11, v13, :cond_4f

    :cond_4e
    const/4 v6, 0x4

    goto :goto_2b

    :cond_4f
    move v6, v3

    :goto_2b
    invoke-virtual/range {p10 .. p10}, Lb/g/a/i/c;->e()I

    move-result v3

    invoke-virtual {v10, v5, v1, v3, v6}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v7, v2, v3, v6}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    :cond_50
    if-eqz v20, :cond_52

    if-ne v15, v1, :cond_51

    invoke-virtual/range {p10 .. p10}, Lb/g/a/i/c;->e()I

    move-result v6

    goto :goto_2c

    :cond_51
    const/4 v6, 0x0

    :goto_2c
    if-eq v1, v15, :cond_52

    const/4 v1, 0x5

    invoke-virtual {v10, v5, v15, v6, v1}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_52
    if-eqz v20, :cond_54

    if-eqz v28, :cond_54

    if-nez p14, :cond_54

    if-nez p8, :cond_54

    if-eqz v28, :cond_53

    move/from16 v14, v18

    const/4 v1, 0x3

    if-ne v14, v1, :cond_53

    const/4 v1, 0x0

    invoke-virtual {v10, v7, v5, v1, v12}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_2d

    :cond_53
    const/4 v1, 0x0

    const/4 v3, 0x5

    invoke-virtual {v10, v7, v5, v1, v3}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_30

    :cond_54
    const/4 v1, 0x0

    :goto_2d
    const/4 v3, 0x5

    goto :goto_30

    :cond_55
    :goto_2e
    move-object v2, v6

    move-object v7, v8

    move/from16 p5, v11

    goto/16 :goto_10

    :goto_2f
    move/from16 v20, p3

    :goto_30
    const/4 v6, 0x5

    :goto_31
    if-eqz v20, :cond_57

    if-eqz p5, :cond_57

    move-object/from16 v3, p11

    iget-object v4, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v4, :cond_56

    invoke-virtual/range {p11 .. p11}, Lb/g/a/i/c;->e()I

    move-result v1

    :cond_56
    move-object/from16 v3, p7

    if-eq v2, v3, :cond_57

    invoke-virtual {v10, v3, v7, v1, v6}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_57
    return-void

    :cond_58
    move-object/from16 v3, p7

    move v4, v2

    move-object v7, v8

    move-object v5, v9

    move/from16 p5, v11

    const/4 v1, 0x0

    const/16 v12, 0x8

    const/16 v25, 0x1

    move-object/from16 v2, p6

    const/4 v6, 0x2

    :goto_32
    if-ge v4, v6, :cond_5d

    if-eqz p3, :cond_5d

    if-eqz p5, :cond_5d

    invoke-virtual {v10, v5, v2, v1, v12}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    if-nez p2, :cond_5a

    iget-object v2, v0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    iget-object v2, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v2, :cond_59

    goto :goto_33

    :cond_59
    const/4 v6, 0x0

    goto :goto_34

    :cond_5a
    :goto_33
    const/4 v6, 0x1

    :goto_34
    if-nez p2, :cond_5c

    iget-object v2, v0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    iget-object v2, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v2, :cond_5c

    iget-object v2, v2, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    iget v4, v2, Lb/g/a/i/d;->Z:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5b

    iget-object v2, v2, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v4, v2, v1

    sget-object v5, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    if-ne v4, v5, :cond_5b

    aget-object v2, v2, v25

    if-ne v2, v5, :cond_5b

    const/4 v6, 0x1

    goto :goto_35

    :cond_5b
    const/4 v6, 0x0

    :cond_5c
    :goto_35
    if-eqz v6, :cond_5d

    invoke-virtual {v10, v3, v7, v1, v12}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_5d
    return-void
.end method

.method public i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V
    .locals 10

    sget-object v0, Lb/g/a/i/c$a;->k:Lb/g/a/i/c$a;

    sget-object v1, Lb/g/a/i/c$a;->j:Lb/g/a/i/c$a;

    sget-object v2, Lb/g/a/i/c$a;->d:Lb/g/a/i/c$a;

    sget-object v3, Lb/g/a/i/c$a;->e:Lb/g/a/i/c$a;

    sget-object v4, Lb/g/a/i/c$a;->f:Lb/g/a/i/c$a;

    sget-object v5, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    sget-object v6, Lb/g/a/i/c$a;->i:Lb/g/a/i/c$a;

    const/4 v7, 0x0

    if-ne p1, v6, :cond_c

    if-ne p3, v6, :cond_8

    invoke-virtual {p0, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p0, v4}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p3

    invoke-virtual {p0, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p4

    invoke-virtual {p0, v5}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/g/a/i/c;->i()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lb/g/a/i/c;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, p2, v2, v7}, Lb/g/a/i/d;->i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V

    invoke-virtual {p0, v4, p2, v4, v7}, Lb/g/a/i/d;->i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V

    const/4 p1, 0x1

    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lb/g/a/i/c;->i()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lb/g/a/i/c;->i()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, p2, v3, v7}, Lb/g/a/i/d;->i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V

    invoke-virtual {p0, v5, p2, v5, v7}, Lb/g/a/i/d;->i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {p0, v6}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p2, v6}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    goto :goto_5

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0, v1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p2, v1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    goto :goto_5

    :cond_7
    if-eqz v9, :cond_1c

    invoke-virtual {p0, v0}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p2, v0}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    goto :goto_5

    :cond_8
    if-eq p3, v2, :cond_b

    if-ne p3, v4, :cond_9

    goto :goto_2

    :cond_9
    if-eq p3, v3, :cond_a

    if-ne p3, v5, :cond_1c

    :cond_a
    invoke-virtual {p0, v3, p2, p3, v7}, Lb/g/a/i/d;->i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V

    invoke-virtual {p0, v5, p2, p3, v7}, Lb/g/a/i/d;->i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V

    goto :goto_3

    :cond_b
    :goto_2
    invoke-virtual {p0, v2, p2, p3, v7}, Lb/g/a/i/d;->i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V

    :try_start_0
    invoke-virtual {p0, v4, p2, p3, v7}, Lb/g/a/i/d;->i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-virtual {p0, v6}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    :goto_4
    invoke-virtual {p2, p3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    goto :goto_5

    :cond_c
    if-ne p1, v1, :cond_e

    if-eq p3, v2, :cond_d

    if-ne p3, v4, :cond_e

    :cond_d
    invoke-virtual {p0, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p2, p3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    invoke-virtual {p0, v4}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p3

    invoke-virtual {p1, p2, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    invoke-virtual {p3, p2, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    invoke-virtual {p0, v1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    :goto_5
    invoke-virtual {p1, p2, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    goto/16 :goto_a

    :cond_e
    if-ne p1, v0, :cond_10

    if-eq p3, v3, :cond_f

    if-ne p3, v5, :cond_10

    :cond_f
    invoke-virtual {p2, p3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p0, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    invoke-virtual {p2, p1, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    invoke-virtual {p0, v5}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    invoke-virtual {p2, p1, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    invoke-virtual {p0, v0}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    invoke-virtual {p2, p1, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    goto/16 :goto_a

    :cond_10
    if-ne p1, v1, :cond_11

    if-ne p3, v1, :cond_11

    invoke-virtual {p0, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p2, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    invoke-virtual {p0, v4}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p2, v4}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    invoke-virtual {p0, v1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    goto :goto_4

    :cond_11
    if-ne p1, v0, :cond_12

    if-ne p3, v0, :cond_12

    invoke-virtual {p0, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p2, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    invoke-virtual {p0, v5}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p2, v5}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    invoke-virtual {p0, v0}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    goto/16 :goto_4

    :cond_12
    invoke-virtual {p0, p1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v7

    invoke-virtual {p2, p3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    invoke-virtual {v7, p2}, Lb/g/a/i/c;->j(Lb/g/a/i/c;)Z

    move-result p3

    if-eqz p3, :cond_1c

    sget-object p3, Lb/g/a/i/c$a;->h:Lb/g/a/i/c$a;

    if-ne p1, p3, :cond_14

    invoke-virtual {p0, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p0, v5}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p3

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lb/g/a/i/c;->k()V

    :cond_13
    if-eqz p3, :cond_1b

    goto :goto_7

    :cond_14
    if-eq p1, v3, :cond_18

    if-ne p1, v5, :cond_15

    goto :goto_8

    :cond_15
    if-eq p1, v2, :cond_16

    if-ne p1, v4, :cond_1b

    :cond_16
    invoke-virtual {p0, v6}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p3

    .line 1
    iget-object v0, p3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eq v0, p2, :cond_17

    .line 2
    invoke-virtual {p3}, Lb/g/a/i/c;->k()V

    :cond_17
    invoke-virtual {p0, p1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/g/a/i/c;->f()Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p0, v1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_6
    invoke-virtual {p1}, Lb/g/a/i/c;->k()V

    :goto_7
    invoke-virtual {p3}, Lb/g/a/i/c;->k()V

    goto :goto_9

    :cond_18
    :goto_8
    invoke-virtual {p0, p3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Lb/g/a/i/c;->k()V

    :cond_19
    invoke-virtual {p0, v6}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p3

    .line 3
    iget-object v1, p3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eq v1, p2, :cond_1a

    .line 4
    invoke-virtual {p3}, Lb/g/a/i/c;->k()V

    :cond_1a
    invoke-virtual {p0, p1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/g/a/i/c;->f()Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p0, v0}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/g/a/i/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_6

    :cond_1b
    :goto_9
    invoke-virtual {v7, p2, p4}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    :cond_1c
    :goto_a
    return-void

    :catchall_0
    move-exception p1

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method public j(Lb/g/a/i/c;Lb/g/a/i/c;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    if-ne v0, p0, :cond_0

    .line 2
    iget-object p1, p1, Lb/g/a/i/c;->e:Lb/g/a/i/c$a;

    .line 3
    iget-object v0, p2, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    .line 4
    iget-object p2, p2, Lb/g/a/i/c;->e:Lb/g/a/i/c$a;

    .line 5
    invoke-virtual {p0, p1, v0, p2, p3}, Lb/g/a/i/d;->i(Lb/g/a/i/c$a;Lb/g/a/i/d;Lb/g/a/i/c$a;I)V

    :cond_0
    return-void
.end method

.method public k(Lb/g/a/i/d;Ljava/util/HashMap;)V
    .locals 6
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

    iget v0, p1, Lb/g/a/i/d;->n:I

    iput v0, p0, Lb/g/a/i/d;->n:I

    iget v0, p1, Lb/g/a/i/d;->o:I

    iput v0, p0, Lb/g/a/i/d;->o:I

    iget v0, p1, Lb/g/a/i/d;->q:I

    iput v0, p0, Lb/g/a/i/d;->q:I

    iget v0, p1, Lb/g/a/i/d;->r:I

    iput v0, p0, Lb/g/a/i/d;->r:I

    iget-object v0, p0, Lb/g/a/i/d;->s:[I

    iget-object v1, p1, Lb/g/a/i/d;->s:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    iget v0, p1, Lb/g/a/i/d;->t:I

    iput v0, p0, Lb/g/a/i/d;->t:I

    iget v0, p1, Lb/g/a/i/d;->u:I

    iput v0, p0, Lb/g/a/i/d;->u:I

    iget v0, p1, Lb/g/a/i/d;->w:I

    iput v0, p0, Lb/g/a/i/d;->w:I

    iget v0, p1, Lb/g/a/i/d;->x:I

    iput v0, p0, Lb/g/a/i/d;->x:I

    iget v0, p1, Lb/g/a/i/d;->y:F

    iput v0, p0, Lb/g/a/i/d;->y:F

    iget-boolean v0, p1, Lb/g/a/i/d;->z:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->z:Z

    iget-boolean v0, p1, Lb/g/a/i/d;->A:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->A:Z

    iget v0, p1, Lb/g/a/i/d;->B:I

    iput v0, p0, Lb/g/a/i/d;->B:I

    iget v0, p1, Lb/g/a/i/d;->C:F

    iput v0, p0, Lb/g/a/i/d;->C:F

    iget-object v0, p1, Lb/g/a/i/d;->D:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lb/g/a/i/d;->D:[I

    iget v0, p1, Lb/g/a/i/d;->E:F

    iput v0, p0, Lb/g/a/i/d;->E:F

    iget-boolean v0, p1, Lb/g/a/i/d;->F:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->F:Z

    iget-boolean v0, p1, Lb/g/a/i/d;->G:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->G:Z

    iget-object v0, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->P:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->Q:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    invoke-virtual {v0}, Lb/g/a/i/c;->k()V

    iget-object v0, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/a/i/d$a;

    iput-object v0, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    iget-object v0, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    :goto_0
    iput-object v0, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    iget v0, p1, Lb/g/a/i/d;->X:I

    iput v0, p0, Lb/g/a/i/d;->X:I

    iget v0, p1, Lb/g/a/i/d;->Y:I

    iput v0, p0, Lb/g/a/i/d;->Y:I

    iget v0, p1, Lb/g/a/i/d;->Z:F

    iput v0, p0, Lb/g/a/i/d;->Z:F

    iget v0, p1, Lb/g/a/i/d;->a0:I

    iput v0, p0, Lb/g/a/i/d;->a0:I

    iget v0, p1, Lb/g/a/i/d;->b0:I

    iput v0, p0, Lb/g/a/i/d;->b0:I

    iget v0, p1, Lb/g/a/i/d;->c0:I

    iput v0, p0, Lb/g/a/i/d;->c0:I

    iget v0, p1, Lb/g/a/i/d;->d0:I

    iput v0, p0, Lb/g/a/i/d;->d0:I

    iget v0, p1, Lb/g/a/i/d;->e0:I

    iput v0, p0, Lb/g/a/i/d;->e0:I

    iget v0, p1, Lb/g/a/i/d;->f0:I

    iput v0, p0, Lb/g/a/i/d;->f0:I

    iget v0, p1, Lb/g/a/i/d;->g0:I

    iput v0, p0, Lb/g/a/i/d;->g0:I

    iget v0, p1, Lb/g/a/i/d;->h0:I

    iput v0, p0, Lb/g/a/i/d;->h0:I

    iget v0, p1, Lb/g/a/i/d;->i0:I

    iput v0, p0, Lb/g/a/i/d;->i0:I

    iget v0, p1, Lb/g/a/i/d;->j0:I

    iput v0, p0, Lb/g/a/i/d;->j0:I

    iget v0, p1, Lb/g/a/i/d;->k0:F

    iput v0, p0, Lb/g/a/i/d;->k0:F

    iget v0, p1, Lb/g/a/i/d;->l0:F

    iput v0, p0, Lb/g/a/i/d;->l0:F

    iget-object v0, p1, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    iput-object v0, p0, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    iget v0, p1, Lb/g/a/i/d;->n0:I

    iput v0, p0, Lb/g/a/i/d;->n0:I

    iget v0, p1, Lb/g/a/i/d;->o0:I

    iput v0, p0, Lb/g/a/i/d;->o0:I

    iget-object v0, p1, Lb/g/a/i/d;->p0:Ljava/lang/String;

    iput-object v0, p0, Lb/g/a/i/d;->p0:Ljava/lang/String;

    iget-object v0, p1, Lb/g/a/i/d;->q0:Ljava/lang/String;

    iput-object v0, p0, Lb/g/a/i/d;->q0:Ljava/lang/String;

    iget v0, p1, Lb/g/a/i/d;->r0:I

    iput v0, p0, Lb/g/a/i/d;->r0:I

    iget v0, p1, Lb/g/a/i/d;->s0:I

    iput v0, p0, Lb/g/a/i/d;->s0:I

    iget v0, p1, Lb/g/a/i/d;->t0:I

    iput v0, p0, Lb/g/a/i/d;->t0:I

    iget v0, p1, Lb/g/a/i/d;->u0:I

    iput v0, p0, Lb/g/a/i/d;->u0:I

    iget-boolean v0, p1, Lb/g/a/i/d;->v0:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->v0:Z

    iget-boolean v0, p1, Lb/g/a/i/d;->w0:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->w0:Z

    iget-boolean v0, p1, Lb/g/a/i/d;->x0:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->x0:Z

    iget-boolean v0, p1, Lb/g/a/i/d;->y0:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->y0:Z

    iget-boolean v0, p1, Lb/g/a/i/d;->z0:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->z0:Z

    iget-boolean v0, p1, Lb/g/a/i/d;->A0:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->A0:Z

    iget v0, p1, Lb/g/a/i/d;->B0:I

    iput v0, p0, Lb/g/a/i/d;->B0:I

    iget v0, p1, Lb/g/a/i/d;->C0:I

    iput v0, p0, Lb/g/a/i/d;->C0:I

    iget-boolean v0, p1, Lb/g/a/i/d;->D0:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->D0:Z

    iget-boolean v0, p1, Lb/g/a/i/d;->E0:Z

    iput-boolean v0, p0, Lb/g/a/i/d;->E0:Z

    iget-object v0, p0, Lb/g/a/i/d;->F0:[F

    iget-object v4, p1, Lb/g/a/i/d;->F0:[F

    aget v5, v4, v2

    aput v5, v0, v2

    aget v4, v4, v3

    aput v4, v0, v3

    iget-object v0, p0, Lb/g/a/i/d;->G0:[Lb/g/a/i/d;

    iget-object v4, p1, Lb/g/a/i/d;->G0:[Lb/g/a/i/d;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    aget-object v4, v4, v3

    aput-object v4, v0, v3

    iget-object v0, p0, Lb/g/a/i/d;->H0:[Lb/g/a/i/d;

    iget-object v4, p1, Lb/g/a/i/d;->H0:[Lb/g/a/i/d;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    aget-object v2, v4, v3

    aput-object v2, v0, v3

    iget-object v0, p1, Lb/g/a/i/d;->I0:Lb/g/a/i/d;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    :goto_1
    iput-object v0, p0, Lb/g/a/i/d;->I0:Lb/g/a/i/d;

    iget-object p1, p1, Lb/g/a/i/d;->J0:Lb/g/a/i/d;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lb/g/a/i/d;

    :goto_2
    iput-object v1, p0, Lb/g/a/i/d;->J0:Lb/g/a/i/d;

    return-void
.end method

.method public l(Lb/g/a/d;)V
    .locals 1

    iget-object v0, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {p1, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    iget-object v0, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {p1, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    iget-object v0, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {p1, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    iget-object v0, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {p1, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    iget v0, p0, Lb/g/a/i/d;->h0:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {p1, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    if-nez v0, :cond_0

    new-instance v0, Lb/g/a/i/m/k;

    invoke-direct {v0, p0}, Lb/g/a/i/m/k;-><init>(Lb/g/a/i/d;)V

    iput-object v0, p0, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    :cond_0
    iget-object v0, p0, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    if-nez v0, :cond_1

    new-instance v0, Lb/g/a/i/m/m;

    invoke-direct {v0, p0}, Lb/g/a/i/m/m;-><init>(Lb/g/a/i/d;)V

    iput-object v0, p0, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    :cond_1
    return-void
.end method

.method public n(Lb/g/a/i/c$a;)Lb/g/a/i/c;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lb/g/a/i/d;->Q:Lb/g/a/i/c;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lb/g/a/i/d;->P:Lb/g/a/i/c;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public o()I
    .locals 2

    invoke-virtual {p0}, Lb/g/a/i/d;->y()I

    move-result v0

    iget v1, p0, Lb/g/a/i/d;->Y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public p(I)Lb/g/a/i/d$a;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public q()I
    .locals 2

    iget v0, p0, Lb/g/a/i/d;->o0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lb/g/a/i/d;->Y:I

    return v0
.end method

.method public r()Lb/g/a/i/d$a;
    .locals 2

    iget-object v0, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public s(I)Lb/g/a/i/d;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v0, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v0, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(I)Lb/g/a/i/d;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v0, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v0, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/g/a/i/d;->q0:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    const-string v1, "type: "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lb/g/a/i/d;->q0:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/g/a/i/d;->p0:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "id: "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lb/g/a/i/d;->p0:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/a/i/d;->b0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/a/i/d;->c0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/a/i/d;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/a/i/d;->Y:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lc/a/a/a/a;->n(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 2

    invoke-virtual {p0}, Lb/g/a/i/d;->x()I

    move-result v0

    iget v1, p0, Lb/g/a/i/d;->X:I

    add-int/2addr v0, v1

    return v0
.end method

.method public v()Lb/g/a/i/d$a;
    .locals 2

    iget-object v0, p0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public w()I
    .locals 2

    iget v0, p0, Lb/g/a/i/d;->o0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lb/g/a/i/d;->X:I

    return v0
.end method

.method public x()I
    .locals 2

    iget-object v0, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lb/g/a/i/e;

    if-eqz v1, :cond_0

    check-cast v0, Lb/g/a/i/e;

    iget v0, v0, Lb/g/a/i/e;->T0:I

    iget v1, p0, Lb/g/a/i/d;->b0:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lb/g/a/i/d;->b0:I

    return v0
.end method

.method public y()I
    .locals 2

    iget-object v0, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lb/g/a/i/e;

    if-eqz v1, :cond_0

    check-cast v0, Lb/g/a/i/e;

    iget v0, v0, Lb/g/a/i/e;->U0:I

    iget v1, p0, Lb/g/a/i/d;->c0:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lb/g/a/i/d;->c0:I

    return v0
.end method

.method public z(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object p1, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_3
    iget-object p1, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object p1, p1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iget-object v3, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    add-int/2addr p1, v3

    iget-object v3, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    return v1
.end method
