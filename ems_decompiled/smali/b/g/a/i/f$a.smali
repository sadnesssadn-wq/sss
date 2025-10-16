.class public Lb/g/a/i/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/a/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lb/g/a/i/d;

.field public c:I

.field public d:Lb/g/a/i/c;

.field public e:Lb/g/a/i/c;

.field public f:Lb/g/a/i/c;

.field public g:Lb/g/a/i/c;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final synthetic r:Lb/g/a/i/f;


# direct methods
.method public constructor <init>(Lb/g/a/i/f;ILb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;I)V
    .locals 2

    iput-object p1, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/i/f$a;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    iput v0, p0, Lb/g/a/i/f$a;->c:I

    iput v0, p0, Lb/g/a/i/f$a;->h:I

    iput v0, p0, Lb/g/a/i/f$a;->i:I

    iput v0, p0, Lb/g/a/i/f$a;->j:I

    iput v0, p0, Lb/g/a/i/f$a;->k:I

    iput v0, p0, Lb/g/a/i/f$a;->l:I

    iput v0, p0, Lb/g/a/i/f$a;->m:I

    iput v0, p0, Lb/g/a/i/f$a;->n:I

    iput v0, p0, Lb/g/a/i/f$a;->o:I

    iput v0, p0, Lb/g/a/i/f$a;->p:I

    iput v0, p0, Lb/g/a/i/f$a;->q:I

    iput p2, p0, Lb/g/a/i/f$a;->a:I

    iput-object p3, p0, Lb/g/a/i/f$a;->d:Lb/g/a/i/c;

    iput-object p4, p0, Lb/g/a/i/f$a;->e:Lb/g/a/i/c;

    iput-object p5, p0, Lb/g/a/i/f$a;->f:Lb/g/a/i/c;

    iput-object p6, p0, Lb/g/a/i/f$a;->g:Lb/g/a/i/c;

    .line 1
    iget p2, p1, Lb/g/a/i/k;->S0:I

    .line 2
    iput p2, p0, Lb/g/a/i/f$a;->h:I

    .line 3
    iget p2, p1, Lb/g/a/i/k;->O0:I

    .line 4
    iput p2, p0, Lb/g/a/i/f$a;->i:I

    .line 5
    iget p2, p1, Lb/g/a/i/k;->T0:I

    .line 6
    iput p2, p0, Lb/g/a/i/f$a;->j:I

    .line 7
    iget p1, p1, Lb/g/a/i/k;->P0:I

    .line 8
    iput p1, p0, Lb/g/a/i/f$a;->k:I

    iput p7, p0, Lb/g/a/i/f$a;->q:I

    return-void
.end method


# virtual methods
.method public a(Lb/g/a/i/d;)V
    .locals 6

    sget-object v0, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    iget v1, p0, Lb/g/a/i/f$a;->a:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    iget v4, p0, Lb/g/a/i/f$a;->q:I

    .line 1
    invoke-virtual {v1, p1, v4}, Lb/g/a/i/f;->b0(Lb/g/a/i/d;I)I

    move-result v1

    .line 2
    invoke-virtual {p1}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v4

    if-ne v4, v0, :cond_0

    iget v0, p0, Lb/g/a/i/f$a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/g/a/i/f$a;->p:I

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 3
    iget v4, v0, Lb/g/a/i/f;->l1:I

    .line 4
    iget v5, p1, Lb/g/a/i/d;->o0:I

    if-ne v5, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 5
    :goto_0
    iget v2, p0, Lb/g/a/i/f$a;->l:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, p0, Lb/g/a/i/f$a;->l:I

    iget v1, p0, Lb/g/a/i/f$a;->q:I

    .line 6
    invoke-virtual {v0, p1, v1}, Lb/g/a/i/f;->a0(Lb/g/a/i/d;I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    if-eqz v1, :cond_2

    iget v1, p0, Lb/g/a/i/f$a;->c:I

    if-ge v1, v0, :cond_7

    :cond_2
    iput-object p1, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    iput v0, p0, Lb/g/a/i/f$a;->c:I

    iput v0, p0, Lb/g/a/i/f$a;->m:I

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    iget v4, p0, Lb/g/a/i/f$a;->q:I

    .line 8
    invoke-virtual {v1, p1, v4}, Lb/g/a/i/f;->b0(Lb/g/a/i/d;I)I

    move-result v1

    .line 9
    iget-object v4, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    iget v5, p0, Lb/g/a/i/f$a;->q:I

    .line 10
    invoke-virtual {v4, p1, v5}, Lb/g/a/i/f;->a0(Lb/g/a/i/d;I)I

    move-result v4

    .line 11
    invoke-virtual {p1}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v5

    if-ne v5, v0, :cond_4

    iget v0, p0, Lb/g/a/i/f$a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/g/a/i/f$a;->p:I

    const/4 v4, 0x0

    :cond_4
    iget-object v0, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 12
    iget v0, v0, Lb/g/a/i/f;->m1:I

    .line 13
    iget v5, p1, Lb/g/a/i/d;->o0:I

    if-ne v5, v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v0

    .line 14
    :goto_1
    iget v0, p0, Lb/g/a/i/f$a;->m:I

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    iput v4, p0, Lb/g/a/i/f$a;->m:I

    iget-object v0, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    if-eqz v0, :cond_6

    iget v0, p0, Lb/g/a/i/f$a;->c:I

    if-ge v0, v1, :cond_7

    :cond_6
    iput-object p1, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    iput v1, p0, Lb/g/a/i/f$a;->c:I

    iput v1, p0, Lb/g/a/i/f$a;->l:I

    :cond_7
    :goto_2
    iget p1, p0, Lb/g/a/i/f$a;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/g/a/i/f$a;->o:I

    return-void
.end method

.method public b(ZIZ)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lb/g/a/i/f$a;->o:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget v4, v0, Lb/g/a/i/f$a;->n:I

    add-int/2addr v4, v3

    iget-object v5, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 1
    iget v6, v5, Lb/g/a/i/f;->x1:I

    if-lt v4, v6, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v5, v5, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    .line 3
    aget-object v4, v5, v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lb/g/a/i/d;->I()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_38

    iget-object v3, v0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    if-nez v3, :cond_3

    goto/16 :goto_1e

    :cond_3
    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_3
    if-ge v6, v1, :cond_9

    if-eqz p1, :cond_5

    add-int/lit8 v9, v1, -0x1

    sub-int/2addr v9, v6

    goto :goto_4

    :cond_5
    move v9, v6

    :goto_4
    iget v10, v0, Lb/g/a/i/f$a;->n:I

    add-int/2addr v10, v9

    iget-object v9, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 4
    iget v11, v9, Lb/g/a/i/f;->x1:I

    if-lt v10, v11, :cond_6

    goto :goto_5

    .line 5
    :cond_6
    iget-object v9, v9, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    .line 6
    aget-object v9, v9, v10

    .line 7
    iget v9, v9, Lb/g/a/i/d;->o0:I

    if-nez v9, :cond_8

    if-ne v7, v5, :cond_7

    move v7, v6

    :cond_7
    move v8, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 8
    :cond_9
    :goto_5
    iget v6, v0, Lb/g/a/i/f$a;->a:I

    const/4 v9, 0x0

    if-nez v6, :cond_22

    iget-object v6, v0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    iget-object v10, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 9
    iget v11, v10, Lb/g/a/i/f;->a1:I

    .line 10
    iput v11, v6, Lb/g/a/i/d;->C0:I

    .line 11
    iget v11, v0, Lb/g/a/i/f$a;->i:I

    if-lez p2, :cond_a

    .line 12
    iget v10, v10, Lb/g/a/i/f;->m1:I

    add-int/2addr v11, v10

    .line 13
    :cond_a
    iget-object v10, v6, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v12, v0, Lb/g/a/i/f$a;->e:Lb/g/a/i/c;

    invoke-virtual {v10, v12, v11}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    if-eqz p3, :cond_b

    iget-object v10, v6, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v11, v0, Lb/g/a/i/f$a;->g:Lb/g/a/i/c;

    iget v12, v0, Lb/g/a/i/f$a;->k:I

    invoke-virtual {v10, v11, v12}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    :cond_b
    if-lez p2, :cond_c

    iget-object v10, v0, Lb/g/a/i/f$a;->e:Lb/g/a/i/c;

    iget-object v10, v10, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    iget-object v10, v10, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v11, v6, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v10, v11, v2}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    :cond_c
    iget-object v10, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 14
    iget v10, v10, Lb/g/a/i/f;->o1:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_10

    .line 15
    iget-boolean v10, v6, Lb/g/a/i/d;->F:Z

    if-nez v10, :cond_10

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v1, :cond_10

    if-eqz p1, :cond_d

    add-int/lit8 v12, v1, -0x1

    sub-int/2addr v12, v10

    goto :goto_7

    :cond_d
    move v12, v10

    .line 16
    :goto_7
    iget v13, v0, Lb/g/a/i/f$a;->n:I

    add-int/2addr v13, v12

    iget-object v12, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 17
    iget v14, v12, Lb/g/a/i/f;->x1:I

    if-lt v13, v14, :cond_e

    goto :goto_8

    .line 18
    :cond_e
    iget-object v12, v12, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    .line 19
    aget-object v12, v12, v13

    .line 20
    iget-boolean v13, v12, Lb/g/a/i/d;->F:Z

    if-eqz v13, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v12, v6

    :goto_9
    const/4 v10, 0x0

    :goto_a
    if-ge v10, v1, :cond_38

    if-eqz p1, :cond_11

    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v10

    goto :goto_b

    :cond_11
    move v13, v10

    .line 21
    :goto_b
    iget v14, v0, Lb/g/a/i/f$a;->n:I

    add-int/2addr v14, v13

    iget-object v15, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 22
    iget v11, v15, Lb/g/a/i/f;->x1:I

    if-lt v14, v11, :cond_12

    goto/16 :goto_1e

    .line 23
    :cond_12
    iget-object v11, v15, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    .line 24
    aget-object v11, v11, v14

    if-nez v10, :cond_13

    iget-object v14, v11, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v15, v0, Lb/g/a/i/f$a;->d:Lb/g/a/i/c;

    iget v3, v0, Lb/g/a/i/f$a;->h:I

    invoke-virtual {v11, v14, v15, v3}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    :cond_13
    if-nez v13, :cond_19

    iget-object v3, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 25
    iget v13, v3, Lb/g/a/i/f;->Z0:I

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz p1, :cond_14

    .line 26
    iget v15, v3, Lb/g/a/i/f;->f1:F

    sub-float v15, v14, v15

    goto :goto_c

    :cond_14
    iget v15, v3, Lb/g/a/i/f;->f1:F

    .line 27
    :goto_c
    iget v2, v0, Lb/g/a/i/f$a;->n:I

    if-nez v2, :cond_16

    .line 28
    iget v2, v3, Lb/g/a/i/f;->b1:I

    if-eq v2, v5, :cond_16

    if-eqz p1, :cond_15

    .line 29
    iget v3, v3, Lb/g/a/i/f;->h1:F

    goto :goto_d

    :cond_15
    iget v3, v3, Lb/g/a/i/f;->h1:F

    goto :goto_e

    :cond_16
    if-eqz p3, :cond_18

    .line 30
    iget v2, v3, Lb/g/a/i/f;->d1:I

    if-eq v2, v5, :cond_18

    if-eqz p1, :cond_17

    .line 31
    iget v3, v3, Lb/g/a/i/f;->j1:F

    :goto_d
    sub-float/2addr v14, v3

    move v13, v2

    move v15, v14

    goto :goto_f

    :cond_17
    iget v3, v3, Lb/g/a/i/f;->j1:F

    :goto_e
    move v13, v2

    move v15, v3

    .line 32
    :cond_18
    :goto_f
    iput v13, v11, Lb/g/a/i/d;->B0:I

    .line 33
    iput v15, v11, Lb/g/a/i/d;->k0:F

    :cond_19
    add-int/lit8 v2, v1, -0x1

    if-ne v10, v2, :cond_1a

    .line 34
    iget-object v2, v11, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v3, v0, Lb/g/a/i/f$a;->f:Lb/g/a/i/c;

    iget v13, v0, Lb/g/a/i/f$a;->j:I

    invoke-virtual {v11, v2, v3, v13}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    :cond_1a
    if-eqz v9, :cond_1c

    iget-object v2, v11, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v3, v9, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v13, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 35
    iget v13, v13, Lb/g/a/i/f;->l1:I

    .line 36
    invoke-virtual {v2, v3, v13}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    if-ne v10, v7, :cond_1b

    iget-object v2, v11, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget v3, v0, Lb/g/a/i/f$a;->h:I

    invoke-virtual {v2, v3}, Lb/g/a/i/c;->n(I)V

    :cond_1b
    iget-object v2, v9, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v3, v11, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    const/4 v2, 0x1

    add-int/lit8 v3, v8, 0x1

    if-ne v10, v3, :cond_1c

    iget-object v2, v9, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget v3, v0, Lb/g/a/i/f$a;->j:I

    invoke-virtual {v2, v3}, Lb/g/a/i/c;->n(I)V

    :cond_1c
    if-eq v11, v6, :cond_21

    iget-object v2, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 37
    iget v2, v2, Lb/g/a/i/f;->o1:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    .line 38
    iget-boolean v9, v12, Lb/g/a/i/d;->F:Z

    if-eqz v9, :cond_1d

    if-eq v11, v12, :cond_1d

    iget-boolean v9, v11, Lb/g/a/i/d;->F:Z

    if-eqz v9, :cond_1d

    .line 39
    iget-object v2, v11, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    iget-object v9, v12, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    goto :goto_10

    :cond_1d
    if-eqz v2, :cond_20

    const/4 v9, 0x1

    if-eq v2, v9, :cond_1f

    iget-object v2, v11, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    if-eqz v4, :cond_1e

    iget-object v9, v0, Lb/g/a/i/f$a;->e:Lb/g/a/i/c;

    iget v13, v0, Lb/g/a/i/f$a;->i:I

    invoke-virtual {v2, v9, v13}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    iget-object v2, v11, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v9, v0, Lb/g/a/i/f$a;->g:Lb/g/a/i/c;

    iget v13, v0, Lb/g/a/i/f$a;->k:I

    goto :goto_11

    :cond_1e
    iget-object v9, v6, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    const/4 v13, 0x0

    invoke-virtual {v2, v9, v13}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    :cond_1f
    iget-object v2, v11, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v9, v6, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    goto :goto_10

    :cond_20
    iget-object v2, v11, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v9, v6, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    :goto_10
    const/4 v13, 0x0

    :goto_11
    invoke-virtual {v2, v9, v13}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    goto :goto_12

    :cond_21
    const/4 v3, 0x3

    :goto_12
    add-int/lit8 v10, v10, 0x1

    move-object v9, v11

    const/4 v2, 0x0

    const/4 v11, 0x3

    goto/16 :goto_a

    :cond_22
    iget-object v2, v0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    iget-object v3, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 40
    iget v6, v3, Lb/g/a/i/f;->Z0:I

    .line 41
    iput v6, v2, Lb/g/a/i/d;->B0:I

    .line 42
    iget v6, v0, Lb/g/a/i/f$a;->h:I

    if-lez p2, :cond_23

    .line 43
    iget v3, v3, Lb/g/a/i/f;->l1:I

    add-int/2addr v6, v3

    :cond_23
    if-eqz p1, :cond_25

    .line 44
    iget-object v3, v2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v10, v0, Lb/g/a/i/f$a;->f:Lb/g/a/i/c;

    invoke-virtual {v3, v10, v6}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    if-eqz p3, :cond_24

    iget-object v3, v2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v6, v0, Lb/g/a/i/f$a;->d:Lb/g/a/i/c;

    iget v10, v0, Lb/g/a/i/f$a;->j:I

    invoke-virtual {v3, v6, v10}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    :cond_24
    if-lez p2, :cond_27

    iget-object v3, v0, Lb/g/a/i/f$a;->f:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    iget-object v3, v3, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v6, v2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    goto :goto_13

    :cond_25
    iget-object v3, v2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v10, v0, Lb/g/a/i/f$a;->d:Lb/g/a/i/c;

    invoke-virtual {v3, v10, v6}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    if-eqz p3, :cond_26

    iget-object v3, v2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v6, v0, Lb/g/a/i/f$a;->f:Lb/g/a/i/c;

    iget v10, v0, Lb/g/a/i/f$a;->j:I

    invoke-virtual {v3, v6, v10}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    :cond_26
    if-lez p2, :cond_27

    iget-object v3, v0, Lb/g/a/i/f$a;->d:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    iget-object v3, v3, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v6, v2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    :goto_13
    const/4 v10, 0x0

    invoke-virtual {v3, v6, v10}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    :cond_27
    const/4 v13, 0x0

    :goto_14
    if-ge v13, v1, :cond_38

    iget v3, v0, Lb/g/a/i/f$a;->n:I

    add-int/2addr v3, v13

    iget-object v6, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 45
    iget v10, v6, Lb/g/a/i/f;->x1:I

    if-lt v3, v10, :cond_28

    goto/16 :goto_1e

    .line 46
    :cond_28
    iget-object v6, v6, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    .line 47
    aget-object v3, v6, v3

    if-nez v13, :cond_2b

    iget-object v6, v3, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v10, v0, Lb/g/a/i/f$a;->e:Lb/g/a/i/c;

    iget v11, v0, Lb/g/a/i/f$a;->i:I

    invoke-virtual {v3, v6, v10, v11}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    iget-object v6, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 48
    iget v10, v6, Lb/g/a/i/f;->a1:I

    .line 49
    iget v11, v6, Lb/g/a/i/f;->g1:F

    .line 50
    iget v12, v0, Lb/g/a/i/f$a;->n:I

    if-nez v12, :cond_29

    .line 51
    iget v12, v6, Lb/g/a/i/f;->c1:I

    if-eq v12, v5, :cond_29

    .line 52
    iget v6, v6, Lb/g/a/i/f;->i1:F

    :goto_15
    move v11, v6

    move v10, v12

    goto :goto_16

    :cond_29
    if-eqz p3, :cond_2a

    .line 53
    iget v12, v6, Lb/g/a/i/f;->e1:I

    if-eq v12, v5, :cond_2a

    .line 54
    iget v6, v6, Lb/g/a/i/f;->k1:F

    goto :goto_15

    .line 55
    :cond_2a
    :goto_16
    iput v10, v3, Lb/g/a/i/d;->C0:I

    .line 56
    iput v11, v3, Lb/g/a/i/d;->l0:F

    :cond_2b
    add-int/lit8 v6, v1, -0x1

    if-ne v13, v6, :cond_2c

    .line 57
    iget-object v6, v3, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v10, v0, Lb/g/a/i/f$a;->g:Lb/g/a/i/c;

    iget v11, v0, Lb/g/a/i/f$a;->k:I

    invoke-virtual {v3, v6, v10, v11}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    :cond_2c
    if-eqz v9, :cond_2e

    iget-object v6, v3, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v10, v9, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v11, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 58
    iget v11, v11, Lb/g/a/i/f;->m1:I

    .line 59
    invoke-virtual {v6, v10, v11}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    if-ne v13, v7, :cond_2d

    iget-object v6, v3, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget v10, v0, Lb/g/a/i/f$a;->i:I

    invoke-virtual {v6, v10}, Lb/g/a/i/c;->n(I)V

    :cond_2d
    iget-object v6, v9, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v10, v3, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    const/4 v6, 0x1

    add-int/lit8 v10, v8, 0x1

    if-ne v13, v10, :cond_2e

    iget-object v6, v9, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget v9, v0, Lb/g/a/i/f$a;->k:I

    invoke-virtual {v6, v9}, Lb/g/a/i/c;->n(I)V

    :cond_2e
    if-eq v3, v2, :cond_37

    const/4 v6, 0x2

    iget-object v9, v0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    if-eqz p1, :cond_32

    .line 60
    iget v9, v9, Lb/g/a/i/f;->n1:I

    if-eqz v9, :cond_31

    const/4 v10, 0x1

    if-eq v9, v10, :cond_30

    if-eq v9, v6, :cond_2f

    goto :goto_1b

    .line 61
    :cond_2f
    iget-object v6, v3, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v9, v2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    goto :goto_17

    :cond_30
    const/4 v10, 0x0

    iget-object v6, v3, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v9, v2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    goto :goto_18

    :cond_31
    const/4 v10, 0x0

    :goto_17
    iget-object v6, v3, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v9, v2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    :goto_18
    invoke-virtual {v6, v9, v10}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    goto :goto_1b

    .line 62
    :cond_32
    iget v9, v9, Lb/g/a/i/f;->n1:I

    if-eqz v9, :cond_36

    const/4 v10, 0x1

    if-eq v9, v10, :cond_35

    if-eq v9, v6, :cond_33

    goto :goto_1c

    .line 63
    :cond_33
    iget-object v6, v3, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    if-eqz v4, :cond_34

    iget-object v9, v0, Lb/g/a/i/f$a;->d:Lb/g/a/i/c;

    iget v11, v0, Lb/g/a/i/f$a;->h:I

    invoke-virtual {v6, v9, v11}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    iget-object v6, v3, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v9, v0, Lb/g/a/i/f$a;->f:Lb/g/a/i/c;

    iget v11, v0, Lb/g/a/i/f$a;->j:I

    invoke-virtual {v6, v9, v11}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    goto :goto_1c

    :cond_34
    iget-object v9, v2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    goto :goto_19

    :cond_35
    const/4 v11, 0x0

    :goto_19
    iget-object v6, v3, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v9, v2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    goto :goto_1a

    :cond_36
    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v6, v3, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v9, v2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    :goto_1a
    invoke-virtual {v6, v9, v11}, Lb/g/a/i/c;->a(Lb/g/a/i/c;I)Z

    goto :goto_1d

    :cond_37
    :goto_1b
    const/4 v10, 0x1

    :goto_1c
    const/4 v11, 0x0

    :goto_1d
    add-int/lit8 v13, v13, 0x1

    move-object v9, v3

    goto/16 :goto_14

    :cond_38
    :goto_1e
    return-void
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lb/g/a/i/f$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/g/a/i/f$a;->m:I

    iget-object v1, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 1
    iget v1, v1, Lb/g/a/i/f;->m1:I

    sub-int/2addr v0, v1

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lb/g/a/i/f$a;->m:I

    return v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lb/g/a/i/f$a;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lb/g/a/i/f$a;->l:I

    iget-object v1, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 1
    iget v1, v1, Lb/g/a/i/f;->l1:I

    sub-int/2addr v0, v1

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lb/g/a/i/f$a;->l:I

    return v0
.end method

.method public e(I)V
    .locals 11

    sget-object v6, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    sget-object v7, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    iget v0, p0, Lb/g/a/i/f$a;->p:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v8, p0, Lb/g/a/i/f$a;->o:I

    div-int/2addr p1, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_4

    iget v0, p0, Lb/g/a/i/f$a;->n:I

    add-int v1, v0, v10

    iget-object v2, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 1
    iget v3, v2, Lb/g/a/i/f;->x1:I

    if-lt v1, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget-object v1, v2, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    add-int/2addr v0, v10

    .line 3
    aget-object v1, v1, v0

    iget v0, p0, Lb/g/a/i/f$a;->a:I

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v0

    if-ne v0, v7, :cond_3

    iget v0, v1, Lb/g/a/i/d;->q:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    invoke-virtual {v1}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v4

    invoke-virtual {v1}, Lb/g/a/i/d;->q()I

    move-result v5

    move-object v2, v6

    move v3, p1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v0

    if-ne v0, v7, :cond_3

    iget v0, v1, Lb/g/a/i/d;->r:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    invoke-virtual {v1}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v2

    invoke-virtual {v1}, Lb/g/a/i/d;->w()I

    move-result v3

    move-object v4, v6

    move v5, p1

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lb/g/a/i/k;->Z(Lb/g/a/i/d;Lb/g/a/i/d$a;ILb/g/a/i/d$a;I)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4
    :cond_4
    :goto_2
    iput v9, p0, Lb/g/a/i/f$a;->l:I

    iput v9, p0, Lb/g/a/i/f$a;->m:I

    const/4 p1, 0x0

    iput-object p1, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    iput v9, p0, Lb/g/a/i/f$a;->c:I

    iget p1, p0, Lb/g/a/i/f$a;->o:I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_c

    iget v1, p0, Lb/g/a/i/f$a;->n:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 5
    iget v3, v2, Lb/g/a/i/f;->x1:I

    if-lt v1, v3, :cond_5

    goto :goto_5

    .line 6
    :cond_5
    iget-object v3, v2, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    .line 7
    aget-object v1, v3, v1

    iget v3, p0, Lb/g/a/i/f$a;->a:I

    const/16 v4, 0x8

    if-nez v3, :cond_8

    invoke-virtual {v1}, Lb/g/a/i/d;->w()I

    move-result v2

    iget-object v3, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 8
    iget v5, v3, Lb/g/a/i/f;->l1:I

    .line 9
    iget v6, v1, Lb/g/a/i/d;->o0:I

    if-ne v6, v4, :cond_6

    const/4 v5, 0x0

    .line 10
    :cond_6
    iget v4, p0, Lb/g/a/i/f$a;->l:I

    add-int/2addr v2, v5

    add-int/2addr v2, v4

    iput v2, p0, Lb/g/a/i/f$a;->l:I

    iget v2, p0, Lb/g/a/i/f$a;->q:I

    .line 11
    invoke-virtual {v3, v1, v2}, Lb/g/a/i/f;->a0(Lb/g/a/i/d;I)I

    move-result v2

    .line 12
    iget-object v3, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    if-eqz v3, :cond_7

    iget v3, p0, Lb/g/a/i/f$a;->c:I

    if-ge v3, v2, :cond_b

    :cond_7
    iput-object v1, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    iput v2, p0, Lb/g/a/i/f$a;->c:I

    iput v2, p0, Lb/g/a/i/f$a;->m:I

    goto :goto_4

    :cond_8
    iget v3, p0, Lb/g/a/i/f$a;->q:I

    .line 13
    invoke-virtual {v2, v1, v3}, Lb/g/a/i/f;->b0(Lb/g/a/i/d;I)I

    move-result v2

    .line 14
    iget-object v3, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    iget v5, p0, Lb/g/a/i/f$a;->q:I

    .line 15
    invoke-virtual {v3, v1, v5}, Lb/g/a/i/f;->a0(Lb/g/a/i/d;I)I

    move-result v3

    .line 16
    iget-object v5, p0, Lb/g/a/i/f$a;->r:Lb/g/a/i/f;

    .line 17
    iget v5, v5, Lb/g/a/i/f;->m1:I

    .line 18
    iget v6, v1, Lb/g/a/i/d;->o0:I

    if-ne v6, v4, :cond_9

    const/4 v5, 0x0

    .line 19
    :cond_9
    iget v4, p0, Lb/g/a/i/f$a;->m:I

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    iput v3, p0, Lb/g/a/i/f$a;->m:I

    iget-object v3, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    if-eqz v3, :cond_a

    iget v3, p0, Lb/g/a/i/f$a;->c:I

    if-ge v3, v2, :cond_b

    :cond_a
    iput-object v1, p0, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    iput v2, p0, Lb/g/a/i/f$a;->c:I

    iput v2, p0, Lb/g/a/i/f$a;->l:I

    :cond_b
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    return-void
.end method

.method public f(ILb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;IIIII)V
    .locals 0

    iput p1, p0, Lb/g/a/i/f$a;->a:I

    iput-object p2, p0, Lb/g/a/i/f$a;->d:Lb/g/a/i/c;

    iput-object p3, p0, Lb/g/a/i/f$a;->e:Lb/g/a/i/c;

    iput-object p4, p0, Lb/g/a/i/f$a;->f:Lb/g/a/i/c;

    iput-object p5, p0, Lb/g/a/i/f$a;->g:Lb/g/a/i/c;

    iput p6, p0, Lb/g/a/i/f$a;->h:I

    iput p7, p0, Lb/g/a/i/f$a;->i:I

    iput p8, p0, Lb/g/a/i/f$a;->j:I

    iput p9, p0, Lb/g/a/i/f$a;->k:I

    iput p10, p0, Lb/g/a/i/f$a;->q:I

    return-void
.end method
