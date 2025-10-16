.class public Lb/g/a/i/f;
.super Lb/g/a/i/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/a/i/f$a;
    }
.end annotation


# instance fields
.field public Z0:I

.field public a1:I

.field public b1:I

.field public c1:I

.field public d1:I

.field public e1:I

.field public f1:F

.field public g1:F

.field public h1:F

.field public i1:F

.field public j1:F

.field public k1:F

.field public l1:I

.field public m1:I

.field public n1:I

.field public o1:I

.field public p1:I

.field public q1:I

.field public r1:I

.field public s1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public t1:[Lb/g/a/i/d;

.field public u1:[Lb/g/a/i/d;

.field public v1:[I

.field public w1:[Lb/g/a/i/d;

.field public x1:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/g/a/i/k;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/g/a/i/f;->Z0:I

    iput v0, p0, Lb/g/a/i/f;->a1:I

    iput v0, p0, Lb/g/a/i/f;->b1:I

    iput v0, p0, Lb/g/a/i/f;->c1:I

    iput v0, p0, Lb/g/a/i/f;->d1:I

    iput v0, p0, Lb/g/a/i/f;->e1:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lb/g/a/i/f;->f1:F

    iput v1, p0, Lb/g/a/i/f;->g1:F

    iput v1, p0, Lb/g/a/i/f;->h1:F

    iput v1, p0, Lb/g/a/i/f;->i1:F

    iput v1, p0, Lb/g/a/i/f;->j1:F

    iput v1, p0, Lb/g/a/i/f;->k1:F

    const/4 v1, 0x0

    iput v1, p0, Lb/g/a/i/f;->l1:I

    iput v1, p0, Lb/g/a/i/f;->m1:I

    const/4 v2, 0x2

    iput v2, p0, Lb/g/a/i/f;->n1:I

    iput v2, p0, Lb/g/a/i/f;->o1:I

    iput v1, p0, Lb/g/a/i/f;->p1:I

    iput v0, p0, Lb/g/a/i/f;->q1:I

    iput v1, p0, Lb/g/a/i/f;->r1:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/a/i/f;->t1:[Lb/g/a/i/d;

    iput-object v0, p0, Lb/g/a/i/f;->u1:[Lb/g/a/i/d;

    iput-object v0, p0, Lb/g/a/i/f;->v1:[I

    iput v1, p0, Lb/g/a/i/f;->x1:I

    return-void
.end method


# virtual methods
.method public Y(IIII)V
    .locals 33

    move-object/from16 v8, p0

    sget-object v9, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    sget-object v10, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    iget v0, v8, Lb/g/a/i/i;->N0:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v0, :cond_9

    .line 1
    iget-object v0, v8, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v0, :cond_0

    check-cast v0, Lb/g/a/i/e;

    .line 2
    iget-object v0, v0, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    iget v3, v8, Lb/g/a/i/i;->N0:I

    if-ge v2, v3, :cond_8

    iget-object v3, v8, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    instance-of v4, v3, Lb/g/a/i/g;

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v12}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v4

    invoke-virtual {v3, v11}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v5

    if-ne v4, v9, :cond_4

    iget v6, v3, Lb/g/a/i/d;->q:I

    if-eq v6, v11, :cond_4

    if-ne v5, v9, :cond_4

    iget v6, v3, Lb/g/a/i/d;->r:I

    if-eq v6, v11, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    if-ne v4, v9, :cond_6

    move-object v4, v10

    :cond_6
    if-ne v5, v9, :cond_7

    move-object v5, v10

    :cond_7
    iget-object v6, v8, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    iput-object v4, v6, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    iput-object v5, v6, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    invoke-virtual {v3}, Lb/g/a/i/d;->w()I

    move-result v4

    iput v4, v6, Lb/g/a/i/m/b$a;->c:I

    iget-object v4, v8, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    invoke-virtual {v3}, Lb/g/a/i/d;->q()I

    move-result v5

    iput v5, v4, Lb/g/a/i/m/b$a;->d:I

    iget-object v4, v8, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {v5, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b(Lb/g/a/i/d;Lb/g/a/i/m/b$a;)V

    iget-object v4, v8, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    iget v4, v4, Lb/g/a/i/m/b$a;->e:I

    invoke-virtual {v3, v4}, Lb/g/a/i/d;->T(I)V

    iget-object v4, v8, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    iget v4, v4, Lb/g/a/i/m/b$a;->f:I

    invoke-virtual {v3, v4}, Lb/g/a/i/d;->O(I)V

    iget-object v4, v8, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    iget v4, v4, Lb/g/a/i/m/b$a;->g:I

    invoke-virtual {v3, v4}, Lb/g/a/i/d;->L(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_9

    .line 4
    iput v12, v8, Lb/g/a/i/k;->V0:I

    iput v12, v8, Lb/g/a/i/k;->W0:I

    .line 5
    iput-boolean v12, v8, Lb/g/a/i/k;->U0:Z

    return-void

    .line 6
    :cond_9
    iget v13, v8, Lb/g/a/i/k;->S0:I

    .line 7
    iget v14, v8, Lb/g/a/i/k;->T0:I

    .line 8
    iget v15, v8, Lb/g/a/i/k;->O0:I

    .line 9
    iget v7, v8, Lb/g/a/i/k;->P0:I

    const/4 v0, 0x2

    new-array v6, v0, [I

    sub-int v2, p2, v13

    sub-int/2addr v2, v14

    .line 10
    iget v3, v8, Lb/g/a/i/f;->r1:I

    if-ne v3, v11, :cond_a

    sub-int v2, p4, v15

    sub-int/2addr v2, v7

    :cond_a
    move v5, v2

    const/4 v2, -0x1

    if-nez v3, :cond_c

    iget v3, v8, Lb/g/a/i/f;->Z0:I

    if-ne v3, v2, :cond_b

    iput v12, v8, Lb/g/a/i/f;->Z0:I

    :cond_b
    iget v3, v8, Lb/g/a/i/f;->a1:I

    if-ne v3, v2, :cond_e

    goto :goto_5

    :cond_c
    iget v3, v8, Lb/g/a/i/f;->Z0:I

    if-ne v3, v2, :cond_d

    iput v12, v8, Lb/g/a/i/f;->Z0:I

    :cond_d
    iget v3, v8, Lb/g/a/i/f;->a1:I

    if-ne v3, v2, :cond_e

    :goto_5
    iput v12, v8, Lb/g/a/i/f;->a1:I

    :cond_e
    iget-object v2, v8, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    iget v12, v8, Lb/g/a/i/i;->N0:I

    const/16 v1, 0x8

    if-ge v3, v12, :cond_10

    iget-object v12, v8, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v12, v12, v3

    .line 11
    iget v12, v12, Lb/g/a/i/d;->o0:I

    if-ne v12, v1, :cond_f

    add-int/lit8 v4, v4, 0x1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_10
    if-lez v4, :cond_12

    sub-int/2addr v12, v4

    .line 12
    new-array v2, v12, [Lb/g/a/i/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    iget v12, v8, Lb/g/a/i/i;->N0:I

    if-ge v3, v12, :cond_13

    iget-object v12, v8, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v12, v12, v3

    .line 13
    iget v0, v12, Lb/g/a/i/d;->o0:I

    if-eq v0, v1, :cond_11

    .line 14
    aput-object v12, v2, v4

    add-int/lit8 v4, v4, 0x1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x2

    goto :goto_7

    :cond_12
    move v4, v12

    :cond_13
    move-object v12, v2

    iput-object v12, v8, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    iput v4, v8, Lb/g/a/i/f;->x1:I

    iget v0, v8, Lb/g/a/i/f;->p1:I

    if-eqz v0, :cond_56

    if-eq v0, v11, :cond_3b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    goto/16 :goto_2e

    :cond_14
    iget v0, v8, Lb/g/a/i/f;->r1:I

    .line 15
    iget v1, v8, Lb/g/a/i/f;->q1:I

    if-nez v0, :cond_1a

    if-gtz v1, :cond_19

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v1, v4, :cond_18

    if-lez v1, :cond_15

    iget v9, v8, Lb/g/a/i/f;->l1:I

    add-int/2addr v2, v9

    :cond_15
    aget-object v9, v12, v1

    if-nez v9, :cond_16

    goto :goto_9

    :cond_16
    invoke-virtual {v8, v9, v5}, Lb/g/a/i/f;->b0(Lb/g/a/i/d;I)I

    move-result v9

    add-int/2addr v9, v2

    if-le v9, v5, :cond_17

    goto :goto_a

    :cond_17
    add-int/lit8 v3, v3, 0x1

    move v2, v9

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    :goto_a
    move v1, v3

    :cond_19
    move v2, v1

    const/4 v1, 0x0

    goto :goto_e

    :cond_1a
    if-gtz v1, :cond_1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v1, v4, :cond_1e

    if-lez v1, :cond_1b

    iget v9, v8, Lb/g/a/i/f;->m1:I

    add-int/2addr v2, v9

    :cond_1b
    aget-object v9, v12, v1

    if-nez v9, :cond_1c

    goto :goto_c

    :cond_1c
    invoke-virtual {v8, v9, v5}, Lb/g/a/i/f;->a0(Lb/g/a/i/d;I)I

    move-result v9

    add-int/2addr v9, v2

    if-le v9, v5, :cond_1d

    goto :goto_d

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    move v2, v9

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1e
    :goto_d
    move v1, v3

    :cond_1f
    const/4 v2, 0x0

    :goto_e
    iget-object v3, v8, Lb/g/a/i/f;->v1:[I

    if-nez v3, :cond_20

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v8, Lb/g/a/i/f;->v1:[I

    :cond_20
    if-nez v1, :cond_21

    if-eq v0, v11, :cond_22

    :cond_21
    if-nez v2, :cond_23

    if-nez v0, :cond_23

    :cond_22
    move/from16 v3, p3

    move/from16 v21, v4

    move v9, v5

    move-object v10, v6

    move-object v11, v8

    move-object/from16 v20, v11

    move/from16 v17, v14

    move/from16 v18, v15

    move/from16 v4, p4

    move v5, v0

    move-object v14, v12

    move v15, v13

    move/from16 v0, p1

    move-object v12, v10

    move v13, v7

    move v6, v1

    move v7, v2

    const/4 v2, 0x1

    move/from16 v1, p2

    goto/16 :goto_1c

    :cond_23
    move/from16 v3, p4

    move v9, v5

    move-object v10, v6

    move-object v11, v8

    move-object/from16 v20, v11

    move/from16 v17, v14

    move/from16 v18, v15

    const/16 v19, 0x0

    move v5, v1

    move-object v14, v12

    move v15, v13

    move/from16 v1, p2

    move-object v12, v10

    move v13, v7

    move v6, v2

    move v7, v4

    move/from16 v2, p3

    move v4, v0

    move/from16 v0, p1

    :goto_f
    if-nez v19, :cond_3a

    if-nez v4, :cond_24

    int-to-float v5, v7

    move/from16 p1, v0

    int-to-float v0, v6

    div-float/2addr v5, v0

    move/from16 p2, v1

    float-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v0

    move v0, v6

    goto :goto_10

    :cond_24
    move/from16 p1, v0

    move/from16 p2, v1

    int-to-float v0, v7

    int-to-float v1, v5

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v5

    :goto_10
    iget-object v5, v11, Lb/g/a/i/f;->u1:[Lb/g/a/i/d;

    if-eqz v5, :cond_26

    array-length v6, v5

    if-ge v6, v0, :cond_25

    goto :goto_11

    :cond_25
    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_26
    :goto_11
    const/4 v6, 0x0

    new-array v5, v0, [Lb/g/a/i/d;

    iput-object v5, v11, Lb/g/a/i/f;->u1:[Lb/g/a/i/d;

    :goto_12
    iget-object v5, v11, Lb/g/a/i/f;->t1:[Lb/g/a/i/d;

    if-eqz v5, :cond_28

    array-length v6, v5

    if-ge v6, v1, :cond_27

    goto :goto_13

    :cond_27
    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_28
    :goto_13
    new-array v5, v1, [Lb/g/a/i/d;

    iput-object v5, v11, Lb/g/a/i/f;->t1:[Lb/g/a/i/d;

    :goto_14
    const/4 v5, 0x0

    :goto_15
    if-ge v5, v0, :cond_31

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v1, :cond_30

    mul-int v21, v6, v0

    add-int v21, v21, v5

    move/from16 p3, v2

    const/4 v2, 0x1

    if-ne v4, v2, :cond_29

    mul-int v2, v5, v1

    add-int v21, v2, v6

    :cond_29
    move/from16 p4, v3

    move/from16 v2, v21

    array-length v3, v14

    if-lt v2, v3, :cond_2a

    goto :goto_17

    :cond_2a
    aget-object v2, v14, v2

    if-nez v2, :cond_2b

    :goto_17
    move/from16 v21, v7

    goto :goto_18

    :cond_2b
    invoke-virtual {v11, v2, v9}, Lb/g/a/i/f;->b0(Lb/g/a/i/d;I)I

    move-result v3

    move/from16 v21, v7

    iget-object v7, v11, Lb/g/a/i/f;->u1:[Lb/g/a/i/d;

    aget-object v22, v7, v5

    if-eqz v22, :cond_2c

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lb/g/a/i/d;->w()I

    move-result v7

    if-ge v7, v3, :cond_2d

    :cond_2c
    iget-object v3, v11, Lb/g/a/i/f;->u1:[Lb/g/a/i/d;

    aput-object v2, v3, v5

    :cond_2d
    invoke-virtual {v11, v2, v9}, Lb/g/a/i/f;->a0(Lb/g/a/i/d;I)I

    move-result v3

    iget-object v7, v11, Lb/g/a/i/f;->t1:[Lb/g/a/i/d;

    aget-object v22, v7, v6

    if-eqz v22, :cond_2e

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lb/g/a/i/d;->q()I

    move-result v7

    if-ge v7, v3, :cond_2f

    :cond_2e
    iget-object v3, v11, Lb/g/a/i/f;->t1:[Lb/g/a/i/d;

    aput-object v2, v3, v6

    :cond_2f
    :goto_18
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v7, v21

    goto :goto_16

    :cond_30
    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 v21, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_31
    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 v21, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v2, v0, :cond_34

    iget-object v5, v11, Lb/g/a/i/f;->u1:[Lb/g/a/i/d;

    aget-object v5, v5, v2

    if-eqz v5, :cond_33

    if-lez v2, :cond_32

    iget v6, v11, Lb/g/a/i/f;->l1:I

    add-int/2addr v3, v6

    :cond_32
    invoke-virtual {v11, v5, v9}, Lb/g/a/i/f;->b0(Lb/g/a/i/d;I)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v5

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_34
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1a
    if-ge v2, v1, :cond_37

    iget-object v6, v11, Lb/g/a/i/f;->t1:[Lb/g/a/i/d;

    aget-object v6, v6, v2

    if-eqz v6, :cond_36

    if-lez v2, :cond_35

    iget v7, v11, Lb/g/a/i/f;->m1:I

    add-int/2addr v5, v7

    :cond_35
    invoke-virtual {v11, v6, v9}, Lb/g/a/i/f;->a0(Lb/g/a/i/d;I)I

    move-result v6

    add-int/2addr v6, v5

    move v5, v6

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_37
    const/4 v2, 0x0

    aput v3, v12, v2

    const/4 v2, 0x1

    aput v5, v12, v2

    if-nez v4, :cond_38

    if-le v3, v9, :cond_39

    if-le v0, v2, :cond_39

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_38
    if-le v5, v9, :cond_39

    if-le v1, v2, :cond_39

    add-int/lit8 v1, v1, -0x1

    :goto_1b
    move v6, v0

    move v5, v1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v7, v21

    goto/16 :goto_f

    :cond_39
    move/from16 v3, p3

    move v7, v0

    move v6, v1

    move v5, v4

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v4, p4

    :goto_1c
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v21

    const/16 v19, 0x1

    goto/16 :goto_f

    :cond_3a
    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    const/4 v2, 0x1

    iget-object v0, v11, Lb/g/a/i/f;->v1:[I

    const/4 v1, 0x0

    aput v6, v0, v1

    aput v5, v0, v2

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v6, v10

    move v7, v13

    move v13, v15

    move/from16 v14, v17

    move/from16 v15, v18

    goto/16 :goto_2f

    .line 16
    :cond_3b
    iget v11, v8, Lb/g/a/i/f;->r1:I

    if-nez v4, :cond_3c

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v20, v8

    goto/16 :goto_2f

    .line 17
    :cond_3c
    iget-object v0, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lb/g/a/i/f$a;

    iget-object v2, v8, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v1, v8, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v0, v8, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    move-object/from16 v16, v6

    iget-object v6, v8, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move v2, v11

    move/from16 v27, v13

    move-object v13, v3

    move-object/from16 v3, v19

    move/from16 v28, v14

    move v14, v4

    move-object/from16 v4, v18

    move/from16 v29, v5

    move-object/from16 v5, v17

    move-object/from16 v30, v16

    move/from16 v31, v7

    move/from16 v7, v29

    invoke-direct/range {v0 .. v7}, Lb/g/a/i/f$a;-><init>(Lb/g/a/i/f;ILb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;I)V

    iget-object v0, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_44

    move-object v3, v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v14, :cond_43

    aget-object v7, v12, v13

    move/from16 v6, v29

    invoke-virtual {v8, v7, v6}, Lb/g/a/i/f;->b0(Lb/g/a/i/d;I)I

    move-result v16

    invoke-virtual {v7}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v2

    if-ne v2, v9, :cond_3d

    add-int/lit8 v0, v0, 0x1

    :cond_3d
    move/from16 v17, v0

    if-eq v1, v6, :cond_3e

    iget v0, v8, Lb/g/a/i/f;->l1:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v6, :cond_3f

    .line 18
    :cond_3e
    iget-object v0, v3, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_1e

    :cond_3f
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_40

    if-lez v13, :cond_40

    .line 19
    iget v2, v8, Lb/g/a/i/f;->q1:I

    if-lez v2, :cond_40

    rem-int v2, v13, v2

    if-nez v2, :cond_40

    const/4 v0, 0x1

    :cond_40
    if-eqz v0, :cond_41

    new-instance v5, Lb/g/a/i/f$a;

    iget-object v3, v8, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v4, v8, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v2, v8, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v1, v8, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    move-object v0, v5

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move v2, v11

    move/from16 v29, v15

    move-object v15, v5

    move-object/from16 v5, v19

    move/from16 v32, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v10

    move-object v10, v7

    move/from16 v7, v32

    invoke-direct/range {v0 .. v7}, Lb/g/a/i/f$a;-><init>(Lb/g/a/i/f;ILb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;I)V

    .line 20
    iput v13, v15, Lb/g/a/i/f$a;->n:I

    .line 21
    iget-object v0, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v15

    goto :goto_1f

    :cond_41
    move/from16 v32, v6

    move-object/from16 v18, v10

    move/from16 v29, v15

    move-object v10, v7

    if-lez v13, :cond_42

    iget v0, v8, Lb/g/a/i/f;->l1:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_20

    :cond_42
    :goto_1f
    move/from16 v1, v16

    :goto_20
    invoke-virtual {v3, v10}, Lb/g/a/i/f$a;->a(Lb/g/a/i/d;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    move-object/from16 v10, v18

    move/from16 v15, v29

    move/from16 v29, v32

    goto :goto_1d

    :cond_43
    move-object/from16 v18, v10

    move/from16 v32, v29

    move/from16 v29, v15

    goto/16 :goto_25

    :cond_44
    move-object/from16 v18, v10

    move/from16 v32, v29

    move/from16 v29, v15

    move-object v3, v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v14, :cond_4b

    aget-object v13, v12, v10

    move/from16 v15, v32

    invoke-virtual {v8, v13, v15}, Lb/g/a/i/f;->a0(Lb/g/a/i/d;I)I

    move-result v16

    invoke-virtual {v13}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v2

    if-ne v2, v9, :cond_45

    add-int/lit8 v0, v0, 0x1

    :cond_45
    move/from16 v17, v0

    if-eq v1, v15, :cond_46

    iget v0, v8, Lb/g/a/i/f;->m1:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v15, :cond_47

    .line 22
    :cond_46
    iget-object v0, v3, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    goto :goto_22

    :cond_47
    const/4 v0, 0x0

    :goto_22
    if-nez v0, :cond_48

    if-lez v10, :cond_48

    .line 23
    iget v2, v8, Lb/g/a/i/f;->q1:I

    if-lez v2, :cond_48

    rem-int v2, v10, v2

    if-nez v2, :cond_48

    const/4 v0, 0x1

    :cond_48
    if-eqz v0, :cond_49

    new-instance v7, Lb/g/a/i/f$a;

    iget-object v3, v8, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v4, v8, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v5, v8, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v6, v8, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v11

    move-object/from16 v19, v9

    move-object v9, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lb/g/a/i/f$a;-><init>(Lb/g/a/i/f;ILb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;I)V

    .line 24
    iput v10, v9, Lb/g/a/i/f$a;->n:I

    .line 25
    iget-object v0, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v9

    goto :goto_23

    :cond_49
    move-object/from16 v19, v9

    if-lez v10, :cond_4a

    iget v0, v8, Lb/g/a/i/f;->m1:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_24

    :cond_4a
    :goto_23
    move/from16 v1, v16

    :goto_24
    invoke-virtual {v3, v13}, Lb/g/a/i/f$a;->a(Lb/g/a/i/d;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v32, v15

    move/from16 v0, v17

    move-object/from16 v9, v19

    goto :goto_21

    :cond_4b
    :goto_25
    move/from16 v15, v32

    iget-object v1, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v8, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v3, v8, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v4, v8, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v5, v8, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    .line 26
    iget v6, v8, Lb/g/a/i/k;->S0:I

    .line 27
    iget v7, v8, Lb/g/a/i/k;->O0:I

    .line 28
    iget v9, v8, Lb/g/a/i/k;->T0:I

    .line 29
    iget v10, v8, Lb/g/a/i/k;->P0:I

    .line 30
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v12

    move-object/from16 v13, v18

    if-eq v12, v13, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v12

    if-ne v12, v13, :cond_4c

    goto :goto_26

    :cond_4c
    const/4 v12, 0x0

    goto :goto_27

    :cond_4d
    :goto_26
    const/4 v12, 0x1

    :goto_27
    if-lez v0, :cond_4f

    if-eqz v12, :cond_4f

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v1, :cond_4f

    iget-object v12, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb/g/a/i/f$a;

    if-nez v11, :cond_4e

    invoke-virtual {v12}, Lb/g/a/i/f$a;->d()I

    move-result v13

    goto :goto_29

    :cond_4e
    invoke-virtual {v12}, Lb/g/a/i/f$a;->c()I

    move-result v13

    :goto_29
    sub-int v13, v15, v13

    invoke-virtual {v12, v13}, Lb/g/a/i/f$a;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_4f
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2a
    if-ge v0, v1, :cond_55

    iget-object v14, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/g/a/i/f$a;

    if-nez v11, :cond_52

    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_50

    iget-object v5, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/a/i/f$a;

    .line 31
    iget-object v5, v5, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    .line 32
    iget-object v5, v5, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    move/from16 v32, v1

    const/4 v10, 0x0

    goto :goto_2b

    :cond_50
    iget-object v5, v8, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    .line 33
    iget v10, v8, Lb/g/a/i/k;->P0:I

    move/from16 v32, v1

    .line 34
    :goto_2b
    iget-object v1, v14, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    .line 35
    iget-object v1, v1, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    move-object/from16 v16, v14

    move/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Lb/g/a/i/f$a;->f(ILb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;IIIII)V

    invoke-virtual {v14}, Lb/g/a/i/f$a;->d()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v14}, Lb/g/a/i/f$a;->c()I

    move-result v7

    add-int/2addr v7, v13

    if-lez v0, :cond_51

    iget v12, v8, Lb/g/a/i/f;->m1:I

    add-int/2addr v7, v12

    :cond_51
    move v12, v3

    move v13, v7

    const/4 v7, 0x0

    move-object v3, v1

    goto :goto_2d

    :cond_52
    move/from16 v32, v1

    add-int/lit8 v1, v32, -0x1

    if-ge v0, v1, :cond_53

    iget-object v1, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/f$a;

    .line 36
    iget-object v1, v1, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    .line 37
    iget-object v1, v1, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    const/4 v4, 0x0

    goto :goto_2c

    :cond_53
    iget-object v1, v8, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    .line 38
    iget v4, v8, Lb/g/a/i/k;->T0:I

    .line 39
    :goto_2c
    iget-object v9, v14, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    .line 40
    iget-object v9, v9, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    move-object/from16 v16, v14

    move/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v4

    move/from16 v25, v10

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Lb/g/a/i/f$a;->f(ILb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;IIIII)V

    invoke-virtual {v14}, Lb/g/a/i/f$a;->d()I

    move-result v2

    add-int/2addr v2, v12

    invoke-virtual {v14}, Lb/g/a/i/f$a;->c()I

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v0, :cond_54

    iget v12, v8, Lb/g/a/i/f;->l1:I

    add-int/2addr v2, v12

    :cond_54
    move v12, v2

    move v13, v6

    move-object v2, v9

    const/4 v6, 0x0

    move v9, v4

    move-object v4, v1

    :goto_2d
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v32

    goto/16 :goto_2a

    :cond_55
    const/4 v0, 0x0

    aput v12, v30, v0

    const/4 v0, 0x1

    aput v13, v30, v0

    goto :goto_2e

    :cond_56
    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move v14, v4

    move v15, v5

    .line 41
    iget v2, v8, Lb/g/a/i/f;->r1:I

    if-nez v14, :cond_57

    :goto_2e
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v20, v8

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v15, v29

    move-object/from16 v6, v30

    move/from16 v7, v31

    :goto_2f
    move v4, v2

    move v5, v3

    move-object/from16 v9, v20

    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x1

    goto/16 :goto_32

    .line 42
    :cond_57
    iget-object v0, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_58

    new-instance v9, Lb/g/a/i/f$a;

    iget-object v3, v8, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v4, v8, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v5, v8, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v6, v8, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    move-object v0, v9

    move-object/from16 v1, p0

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lb/g/a/i/f$a;-><init>(Lb/g/a/i/f;ILb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;I)V

    iget-object v0, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_58
    iget-object v0, v8, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lb/g/a/i/f$a;

    .line 43
    iput v1, v9, Lb/g/a/i/f$a;->c:I

    const/4 v0, 0x0

    iput-object v0, v9, Lb/g/a/i/f$a;->b:Lb/g/a/i/d;

    iput v1, v9, Lb/g/a/i/f$a;->l:I

    iput v1, v9, Lb/g/a/i/f$a;->m:I

    iput v1, v9, Lb/g/a/i/f$a;->n:I

    iput v1, v9, Lb/g/a/i/f$a;->o:I

    iput v1, v9, Lb/g/a/i/f$a;->p:I

    .line 44
    iget-object v0, v8, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v1, v8, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v3, v8, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v4, v8, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    .line 45
    iget v5, v8, Lb/g/a/i/k;->S0:I

    .line 46
    iget v6, v8, Lb/g/a/i/k;->O0:I

    .line 47
    iget v7, v8, Lb/g/a/i/k;->T0:I

    .line 48
    iget v10, v8, Lb/g/a/i/k;->P0:I

    move-object/from16 v16, v9

    move/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v15

    .line 49
    invoke-virtual/range {v16 .. v26}, Lb/g/a/i/f$a;->f(ILb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;Lb/g/a/i/c;IIIII)V

    :goto_30
    const/4 v2, 0x0

    :goto_31
    if-ge v2, v14, :cond_59

    aget-object v0, v12, v2

    invoke-virtual {v9, v0}, Lb/g/a/i/f$a;->a(Lb/g/a/i/d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_59
    invoke-virtual {v9}, Lb/g/a/i/f$a;->d()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v30, v2

    invoke-virtual {v9}, Lb/g/a/i/f$a;->c()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v30, v1

    move/from16 v0, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v9, v8

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v15, v29

    move-object/from16 v6, v30

    move/from16 v7, v31

    .line 50
    :goto_32
    aget v10, v6, v2

    add-int/2addr v10, v13

    add-int/2addr v10, v14

    aget v6, v6, v1

    add-int/2addr v6, v15

    add-int/2addr v6, v7

    const/high16 v7, -0x80000000

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v0, v11, :cond_5a

    move v0, v3

    goto :goto_33

    :cond_5a
    if-ne v0, v7, :cond_5b

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_33

    :cond_5b
    if-nez v0, :cond_5c

    move v0, v10

    goto :goto_33

    :cond_5c
    const/4 v0, 0x0

    :goto_33
    if-ne v4, v11, :cond_5d

    move v3, v5

    goto :goto_34

    :cond_5d
    if-ne v4, v7, :cond_5e

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_34

    :cond_5e
    if-nez v4, :cond_5f

    move v3, v6

    goto :goto_34

    :cond_5f
    const/4 v3, 0x0

    .line 51
    :goto_34
    iput v0, v9, Lb/g/a/i/k;->V0:I

    iput v3, v9, Lb/g/a/i/k;->W0:I

    .line 52
    invoke-virtual {v9, v0}, Lb/g/a/i/d;->T(I)V

    invoke-virtual {v9, v3}, Lb/g/a/i/d;->O(I)V

    iget v0, v9, Lb/g/a/i/i;->N0:I

    if-lez v0, :cond_60

    const/4 v11, 0x1

    goto :goto_35

    :cond_60
    const/4 v11, 0x0

    .line 53
    :goto_35
    iput-boolean v11, v9, Lb/g/a/i/k;->U0:Z

    return-void
.end method

.method public final a0(Lb/g/a/i/d;I)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v1

    sget-object v2, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    if-ne v1, v2, :cond_5

    iget v1, p1, Lb/g/a/i/d;->r:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v0, :cond_3

    iget v0, p1, Lb/g/a/i/d;->y:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 1
    iput-boolean v2, p1, Lb/g/a/i/d;->g:Z

    .line 2
    invoke-virtual {p1}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v5

    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result v6

    sget-object v7, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lb/g/a/i/k;->Z(Lb/g/a/i/d;Lb/g/a/i/d$a;ILb/g/a/i/d$a;I)V

    :cond_2
    return p2

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result p1

    return p1

    :cond_4
    const/4 p2, 0x3

    if-ne v1, p2, :cond_5

    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Lb/g/a/i/d;->Z:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    :cond_5
    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result p1

    return p1
.end method

.method public final b0(Lb/g/a/i/d;I)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v1

    sget-object v2, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    if-ne v1, v2, :cond_5

    iget v1, p1, Lb/g/a/i/d;->q:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v0, :cond_3

    iget v0, p1, Lb/g/a/i/d;->v:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 1
    iput-boolean v2, p1, Lb/g/a/i/d;->g:Z

    .line 2
    sget-object v5, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    invoke-virtual {p1}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v7

    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lb/g/a/i/k;->Z(Lb/g/a/i/d;Lb/g/a/i/d$a;ILb/g/a/i/d$a;I)V

    :cond_2
    return p2

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result p1

    return p1

    :cond_4
    const/4 p2, 0x3

    if-ne v1, p2, :cond_5

    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Lb/g/a/i/d;->Z:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    :cond_5
    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result p1

    return p1
.end method

.method public f(Lb/g/a/d;Z)V
    .locals 10

    invoke-super {p0, p1, p2}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    .line 1
    iget-object p1, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lb/g/a/i/e;

    .line 3
    iget-boolean p1, p1, Lb/g/a/i/e;->R0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lb/g/a/i/f;->p1:I

    if-eqz v1, :cond_19

    if-eq v1, p2, :cond_17

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto/16 :goto_c

    .line 5
    :cond_1
    iget-object v1, p0, Lb/g/a/i/f;->v1:[I

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lb/g/a/i/f;->u1:[Lb/g/a/i/d;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lb/g/a/i/f;->t1:[Lb/g/a/i/d;

    if-nez v1, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lb/g/a/i/f;->x1:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lb/g/a/i/d;->I()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lb/g/a/i/f;->v1:[I

    aget v2, v1, v0

    aget v1, v1, p2

    const/4 v3, 0x0

    iget v4, p0, Lb/g/a/i/f;->f1:F

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x8

    if-ge v5, v2, :cond_a

    if-eqz p1, :cond_4

    sub-int v4, v2, v5

    sub-int/2addr v4, p2

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lb/g/a/i/f;->f1:F

    sub-float/2addr v7, v8

    goto :goto_3

    :cond_4
    move v7, v4

    move v4, v5

    :goto_3
    iget-object v8, p0, Lb/g/a/i/f;->u1:[Lb/g/a/i/d;

    aget-object v4, v8, v4

    if-eqz v4, :cond_9

    .line 6
    iget v8, v4, Lb/g/a/i/d;->o0:I

    if-ne v8, v6, :cond_5

    goto :goto_4

    :cond_5
    if-nez v5, :cond_6

    .line 7
    iget-object v6, v4, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v8, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    .line 8
    iget v9, p0, Lb/g/a/i/k;->S0:I

    .line 9
    invoke-virtual {v4, v6, v8, v9}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    iget v6, p0, Lb/g/a/i/f;->Z0:I

    .line 10
    iput v6, v4, Lb/g/a/i/d;->B0:I

    .line 11
    iput v7, v4, Lb/g/a/i/d;->k0:F

    :cond_6
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_7

    .line 12
    iget-object v6, v4, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v8, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    .line 13
    iget v9, p0, Lb/g/a/i/k;->T0:I

    .line 14
    invoke-virtual {v4, v6, v8, v9}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    :cond_7
    if-lez v5, :cond_8

    if-eqz v3, :cond_8

    iget-object v6, v4, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v8, v3, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget v9, p0, Lb/g/a/i/f;->l1:I

    invoke-virtual {v4, v6, v8, v9}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    iget-object v6, v3, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v8, v4, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v3, v6, v8, v0}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    :cond_8
    move-object v3, v4

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_5
    if-ge p1, v1, :cond_10

    iget-object v4, p0, Lb/g/a/i/f;->t1:[Lb/g/a/i/d;

    aget-object v4, v4, p1

    if-eqz v4, :cond_f

    .line 15
    iget v5, v4, Lb/g/a/i/d;->o0:I

    if-ne v5, v6, :cond_b

    goto :goto_6

    :cond_b
    if-nez p1, :cond_c

    .line 16
    iget-object v5, v4, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v7, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    .line 17
    iget v8, p0, Lb/g/a/i/k;->O0:I

    .line 18
    invoke-virtual {v4, v5, v7, v8}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    iget v5, p0, Lb/g/a/i/f;->a1:I

    .line 19
    iput v5, v4, Lb/g/a/i/d;->C0:I

    .line 20
    iget v5, p0, Lb/g/a/i/f;->g1:F

    .line 21
    iput v5, v4, Lb/g/a/i/d;->l0:F

    :cond_c
    add-int/lit8 v5, v1, -0x1

    if-ne p1, v5, :cond_d

    .line 22
    iget-object v5, v4, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v7, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    .line 23
    iget v8, p0, Lb/g/a/i/k;->P0:I

    .line 24
    invoke-virtual {v4, v5, v7, v8}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    :cond_d
    if-lez p1, :cond_e

    if-eqz v3, :cond_e

    iget-object v5, v4, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v7, v3, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget v8, p0, Lb/g/a/i/f;->m1:I

    invoke-virtual {v4, v5, v7, v8}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    iget-object v5, v3, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v7, v4, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v3, v5, v7, v0}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    :cond_e
    move-object v3, v4

    :cond_f
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    :goto_7
    if-ge p1, v2, :cond_1a

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_16

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    iget v5, p0, Lb/g/a/i/f;->r1:I

    if-ne v5, p2, :cond_11

    mul-int v4, p1, v1

    add-int/2addr v4, v3

    :cond_11
    iget-object v5, p0, Lb/g/a/i/f;->w1:[Lb/g/a/i/d;

    array-length v7, v5

    if-lt v4, v7, :cond_12

    goto :goto_9

    :cond_12
    aget-object v4, v5, v4

    if-eqz v4, :cond_15

    .line 25
    iget v5, v4, Lb/g/a/i/d;->o0:I

    if-ne v5, v6, :cond_13

    goto :goto_9

    .line 26
    :cond_13
    iget-object v5, p0, Lb/g/a/i/f;->u1:[Lb/g/a/i/d;

    aget-object v5, v5, p1

    iget-object v7, p0, Lb/g/a/i/f;->t1:[Lb/g/a/i/d;

    aget-object v7, v7, v3

    if-eq v4, v5, :cond_14

    iget-object v8, v4, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v9, v5, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v4, v8, v9, v0}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    iget-object v8, v4, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v5, v5, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v4, v8, v5, v0}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    :cond_14
    if-eq v4, v7, :cond_15

    iget-object v5, v4, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v8, v7, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v4, v5, v8, v0}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    iget-object v5, v4, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v7, v7, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v4, v5, v7, v0}, Lb/g/a/i/d;->j(Lb/g/a/i/c;Lb/g/a/i/c;I)V

    :cond_15
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 27
    :cond_17
    iget-object v1, p0, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    iget-object v3, p0, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/f$a;

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_18

    const/4 v4, 0x1

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v3, p1, v2, v4}, Lb/g/a/i/f$a;->b(ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    iget-object v1, p0, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    iget-object v1, p0, Lb/g/a/i/f;->s1:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/f$a;

    invoke-virtual {v1, p1, v0, p2}, Lb/g/a/i/f$a;->b(ZIZ)V

    .line 28
    :cond_1a
    :goto_c
    iput-boolean v0, p0, Lb/g/a/i/k;->U0:Z

    return-void
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

    invoke-super {p0, p1, p2}, Lb/g/a/i/i;->k(Lb/g/a/i/d;Ljava/util/HashMap;)V

    check-cast p1, Lb/g/a/i/f;

    iget p2, p1, Lb/g/a/i/f;->Z0:I

    iput p2, p0, Lb/g/a/i/f;->Z0:I

    iget p2, p1, Lb/g/a/i/f;->a1:I

    iput p2, p0, Lb/g/a/i/f;->a1:I

    iget p2, p1, Lb/g/a/i/f;->b1:I

    iput p2, p0, Lb/g/a/i/f;->b1:I

    iget p2, p1, Lb/g/a/i/f;->c1:I

    iput p2, p0, Lb/g/a/i/f;->c1:I

    iget p2, p1, Lb/g/a/i/f;->d1:I

    iput p2, p0, Lb/g/a/i/f;->d1:I

    iget p2, p1, Lb/g/a/i/f;->e1:I

    iput p2, p0, Lb/g/a/i/f;->e1:I

    iget p2, p1, Lb/g/a/i/f;->f1:F

    iput p2, p0, Lb/g/a/i/f;->f1:F

    iget p2, p1, Lb/g/a/i/f;->g1:F

    iput p2, p0, Lb/g/a/i/f;->g1:F

    iget p2, p1, Lb/g/a/i/f;->h1:F

    iput p2, p0, Lb/g/a/i/f;->h1:F

    iget p2, p1, Lb/g/a/i/f;->i1:F

    iput p2, p0, Lb/g/a/i/f;->i1:F

    iget p2, p1, Lb/g/a/i/f;->j1:F

    iput p2, p0, Lb/g/a/i/f;->j1:F

    iget p2, p1, Lb/g/a/i/f;->k1:F

    iput p2, p0, Lb/g/a/i/f;->k1:F

    iget p2, p1, Lb/g/a/i/f;->l1:I

    iput p2, p0, Lb/g/a/i/f;->l1:I

    iget p2, p1, Lb/g/a/i/f;->m1:I

    iput p2, p0, Lb/g/a/i/f;->m1:I

    iget p2, p1, Lb/g/a/i/f;->n1:I

    iput p2, p0, Lb/g/a/i/f;->n1:I

    iget p2, p1, Lb/g/a/i/f;->o1:I

    iput p2, p0, Lb/g/a/i/f;->o1:I

    iget p2, p1, Lb/g/a/i/f;->p1:I

    iput p2, p0, Lb/g/a/i/f;->p1:I

    iget p2, p1, Lb/g/a/i/f;->q1:I

    iput p2, p0, Lb/g/a/i/f;->q1:I

    iget p1, p1, Lb/g/a/i/f;->r1:I

    iput p1, p0, Lb/g/a/i/f;->r1:I

    return-void
.end method
