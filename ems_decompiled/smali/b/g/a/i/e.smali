.class public Lb/g/a/i/e;
.super Lb/g/a/i/l;
.source ""


# instance fields
.field public N0:Lb/g/a/i/m/b;

.field public O0:Lb/g/a/i/m/e;

.field public P0:I

.field public Q0:Lb/g/a/i/m/b$b;

.field public R0:Z

.field public S0:Lb/g/a/d;

.field public T0:I

.field public U0:I

.field public V0:I

.field public W0:I

.field public X0:[Lb/g/a/i/b;

.field public Y0:[Lb/g/a/i/b;

.field public Z0:I

.field public a1:Z

.field public b1:Z

.field public c1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/g/a/i/c;",
            ">;"
        }
    .end annotation
.end field

.field public d1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/g/a/i/c;",
            ">;"
        }
    .end annotation
.end field

.field public e1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/g/a/i/c;",
            ">;"
        }
    .end annotation
.end field

.field public f1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/g/a/i/c;",
            ">;"
        }
    .end annotation
.end field

.field public g1:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lb/g/a/i/d;",
            ">;"
        }
    .end annotation
.end field

.field public h1:Lb/g/a/i/m/b$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lb/g/a/i/l;-><init>()V

    new-instance v0, Lb/g/a/i/m/b;

    invoke-direct {v0, p0}, Lb/g/a/i/m/b;-><init>(Lb/g/a/i/e;)V

    iput-object v0, p0, Lb/g/a/i/e;->N0:Lb/g/a/i/m/b;

    new-instance v0, Lb/g/a/i/m/e;

    invoke-direct {v0, p0}, Lb/g/a/i/m/e;-><init>(Lb/g/a/i/e;)V

    iput-object v0, p0, Lb/g/a/i/e;->O0:Lb/g/a/i/m/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/g/a/i/e;->R0:Z

    new-instance v2, Lb/g/a/d;

    invoke-direct {v2}, Lb/g/a/d;-><init>()V

    iput-object v2, p0, Lb/g/a/i/e;->S0:Lb/g/a/d;

    iput v1, p0, Lb/g/a/i/e;->V0:I

    iput v1, p0, Lb/g/a/i/e;->W0:I

    const/4 v2, 0x4

    new-array v3, v2, [Lb/g/a/i/b;

    iput-object v3, p0, Lb/g/a/i/e;->X0:[Lb/g/a/i/b;

    new-array v2, v2, [Lb/g/a/i/b;

    iput-object v2, p0, Lb/g/a/i/e;->Y0:[Lb/g/a/i/b;

    const/16 v2, 0x101

    iput v2, p0, Lb/g/a/i/e;->Z0:I

    iput-boolean v1, p0, Lb/g/a/i/e;->a1:Z

    iput-boolean v1, p0, Lb/g/a/i/e;->b1:Z

    iput-object v0, p0, Lb/g/a/i/e;->c1:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lb/g/a/i/e;->d1:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lb/g/a/i/e;->e1:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lb/g/a/i/e;->f1:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    new-instance v0, Lb/g/a/i/m/b$a;

    invoke-direct {v0}, Lb/g/a/i/m/b$a;-><init>()V

    iput-object v0, p0, Lb/g/a/i/e;->h1:Lb/g/a/i/m/b$a;

    return-void
.end method

.method public static f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z
    .locals 8

    sget-object v0, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    sget-object v1, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 1
    :cond_0
    iget v3, p0, Lb/g/a/i/d;->o0:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_13

    .line 2
    instance-of v3, p0, Lb/g/a/i/g;

    if-nez v3, :cond_13

    instance-of v3, p0, Lb/g/a/i/a;

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v3

    iput-object v3, p2, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    invoke-virtual {p0}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v3

    iput-object v3, p2, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    invoke-virtual {p0}, Lb/g/a/i/d;->w()I

    move-result v3

    iput v3, p2, Lb/g/a/i/m/b$a;->c:I

    invoke-virtual {p0}, Lb/g/a/i/d;->q()I

    move-result v3

    iput v3, p2, Lb/g/a/i/m/b$a;->d:I

    iput-boolean v2, p2, Lb/g/a/i/m/b$a;->i:Z

    iput p3, p2, Lb/g/a/i/m/b$a;->j:I

    iget-object p3, p2, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    sget-object v3, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    const/4 v4, 0x1

    if-ne p3, v3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    iget-object v5, p2, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    if-ne v5, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x0

    if-eqz p3, :cond_4

    iget v6, p0, Lb/g/a/i/d;->Z:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v3, :cond_5

    iget v7, p0, Lb/g/a/i/d;->Z:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz p3, :cond_7

    invoke-virtual {p0, v2}, Lb/g/a/i/d;->z(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lb/g/a/i/d;->q:I

    if-nez v7, :cond_7

    if-nez v6, :cond_7

    iput-object v0, p2, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    if-eqz v3, :cond_6

    iget p3, p0, Lb/g/a/i/d;->r:I

    if-nez p3, :cond_6

    iput-object v1, p2, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    :cond_6
    const/4 p3, 0x0

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {p0, v4}, Lb/g/a/i/d;->z(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lb/g/a/i/d;->r:I

    if-nez v7, :cond_9

    if-nez v5, :cond_9

    iput-object v0, p2, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    if-eqz p3, :cond_8

    iget v3, p0, Lb/g/a/i/d;->q:I

    if-nez v3, :cond_8

    iput-object v1, p2, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    :cond_8
    const/4 v3, 0x0

    :cond_9
    invoke-virtual {p0}, Lb/g/a/i/d;->F()Z

    move-result v7

    if-eqz v7, :cond_a

    iput-object v1, p2, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    const/4 p3, 0x0

    :cond_a
    invoke-virtual {p0}, Lb/g/a/i/d;->G()Z

    move-result v7

    if-eqz v7, :cond_b

    iput-object v1, p2, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    const/4 v3, 0x0

    :cond_b
    const/4 v7, 0x4

    if-eqz v6, :cond_e

    iget-object v6, p0, Lb/g/a/i/d;->s:[I

    aget v6, v6, v2

    if-ne v6, v7, :cond_c

    iput-object v1, p2, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    goto :goto_5

    :cond_c
    if-nez v3, :cond_e

    iget-object v3, p2, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    if-ne v3, v1, :cond_d

    iget v3, p2, Lb/g/a/i/m/b$a;->d:I

    goto :goto_4

    :cond_d
    iput-object v0, p2, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    move-object v3, p1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {v3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b(Lb/g/a/i/d;Lb/g/a/i/m/b$a;)V

    iget v3, p2, Lb/g/a/i/m/b$a;->f:I

    :goto_4
    iput-object v1, p2, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    .line 3
    iget v6, p0, Lb/g/a/i/d;->Z:F

    int-to-float v3, v3

    mul-float v6, v6, v3

    float-to-int v3, v6

    .line 4
    iput v3, p2, Lb/g/a/i/m/b$a;->c:I

    :cond_e
    :goto_5
    if-eqz v5, :cond_12

    iget-object v3, p0, Lb/g/a/i/d;->s:[I

    aget v3, v3, v4

    if-ne v3, v7, :cond_f

    iput-object v1, p2, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    goto :goto_8

    :cond_f
    if-nez p3, :cond_12

    iget-object p3, p2, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    if-ne p3, v1, :cond_10

    iget p3, p2, Lb/g/a/i/m/b$a;->c:I

    goto :goto_6

    :cond_10
    iput-object v0, p2, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    move-object p3, p1

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b(Lb/g/a/i/d;Lb/g/a/i/m/b$a;)V

    iget p3, p2, Lb/g/a/i/m/b$a;->e:I

    :goto_6
    iput-object v1, p2, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    .line 5
    iget v0, p0, Lb/g/a/i/d;->a0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    int-to-float p3, p3

    .line 6
    iget v0, p0, Lb/g/a/i/d;->Z:F

    div-float/2addr p3, v0

    float-to-int p3, p3

    goto :goto_7

    :cond_11
    iget v0, p0, Lb/g/a/i/d;->Z:F

    int-to-float p3, p3

    mul-float v0, v0, p3

    float-to-int p3, v0

    .line 7
    :goto_7
    iput p3, p2, Lb/g/a/i/m/b$a;->d:I

    :cond_12
    :goto_8
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b(Lb/g/a/i/d;Lb/g/a/i/m/b$a;)V

    iget p1, p2, Lb/g/a/i/m/b$a;->e:I

    invoke-virtual {p0, p1}, Lb/g/a/i/d;->T(I)V

    iget p1, p2, Lb/g/a/i/m/b$a;->f:I

    invoke-virtual {p0, p1}, Lb/g/a/i/d;->O(I)V

    iget-boolean p1, p2, Lb/g/a/i/m/b$a;->h:Z

    .line 8
    iput-boolean p1, p0, Lb/g/a/i/d;->F:Z

    .line 9
    iget p1, p2, Lb/g/a/i/m/b$a;->g:I

    invoke-virtual {p0, p1}, Lb/g/a/i/d;->L(I)V

    iput v2, p2, Lb/g/a/i/m/b$a;->j:I

    iget-boolean p0, p2, Lb/g/a/i/m/b$a;->i:Z

    return p0

    :cond_13
    :goto_9
    iput v2, p2, Lb/g/a/i/m/b$a;->e:I

    iput v2, p2, Lb/g/a/i/m/b$a;->f:I

    return v2
.end method


# virtual methods
.method public H()V
    .locals 1

    iget-object v0, p0, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v0}, Lb/g/a/d;->u()V

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/i/e;->T0:I

    iput v0, p0, Lb/g/a/i/e;->U0:I

    invoke-super {p0}, Lb/g/a/i/l;->H()V

    return-void
.end method

.method public U(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lb/g/a/i/d;->U(ZZ)V

    iget-object v0, p0, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/d;

    invoke-virtual {v2, p1, p2}, Lb/g/a/i/d;->U(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public W()V
    .locals 28

    move-object/from16 v1, p0

    sget-object v2, Lb/g/a/i/j;->a:[Z

    sget-object v0, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    sget-object v3, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    sget-object v4, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    const/4 v5, 0x0

    iput v5, v1, Lb/g/a/i/d;->b0:I

    iput v5, v1, Lb/g/a/i/d;->c0:I

    iput-boolean v5, v1, Lb/g/a/i/e;->a1:Z

    iput-boolean v5, v1, Lb/g/a/i/e;->b1:Z

    iget-object v6, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v10, 0x1

    aget-object v11, v9, v10

    aget-object v9, v9, v5

    iget v12, v1, Lb/g/a/i/e;->P0:I

    if-nez v12, :cond_1d

    iget v12, v1, Lb/g/a/i/e;->Z0:I

    invoke-static {v12, v10}, Lb/g/a/i/j;->b(II)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 1
    iget-object v12, v1, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v15

    sput v5, Lb/g/a/i/m/h;->b:I

    sput v5, Lb/g/a/i/m/h;->c:I

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->J()V

    .line 3
    iget-object v13, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_0
    if-ge v5, v10, :cond_0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lb/g/a/i/d;

    invoke-virtual/range {v16 .. v16}, Lb/g/a/i/d;->J()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v5, v1, Lb/g/a/i/e;->R0:Z

    if-ne v14, v4, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v14

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v14}, Lb/g/a/i/d;->M(II)V

    move/from16 v17, v8

    goto :goto_1

    :cond_1
    move-object/from16 v16, v2

    const/4 v2, 0x0

    .line 7
    iget-object v14, v1, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    .line 8
    iput v2, v14, Lb/g/a/i/c;->b:I

    move/from16 v17, v8

    const/4 v8, 0x1

    iput-boolean v8, v14, Lb/g/a/i/c;->c:Z

    .line 9
    iput v2, v1, Lb/g/a/i/d;->b0:I

    :goto_1
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_2
    const/high16 v18, 0x3f000000    # 0.5f

    if-ge v8, v10, :cond_7

    .line 10
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Lb/g/a/i/d;

    move-object/from16 v19, v11

    instance-of v11, v7, Lb/g/a/i/g;

    if-eqz v11, :cond_5

    check-cast v7, Lb/g/a/i/g;

    .line 11
    iget v11, v7, Lb/g/a/i/g;->Q0:I

    move-object/from16 v21, v3

    const/4 v3, 0x1

    if-ne v11, v3, :cond_6

    .line 12
    iget v2, v7, Lb/g/a/i/g;->N0:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    goto :goto_3

    .line 13
    :cond_2
    iget v2, v7, Lb/g/a/i/g;->O0:I

    if-eq v2, v3, :cond_3

    .line 14
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->F()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v2

    .line 15
    iget v3, v7, Lb/g/a/i/g;->O0:I

    sub-int/2addr v2, v3

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->F()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    iget v2, v7, Lb/g/a/i/g;->M0:F

    .line 18
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float v2, v2, v18

    float-to-int v2, v2

    :goto_3
    invoke-virtual {v7, v2}, Lb/g/a/i/g;->W(I)V

    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v21, v3

    instance-of v3, v7, Lb/g/a/i/a;

    if-eqz v3, :cond_6

    check-cast v7, Lb/g/a/i/a;

    invoke-virtual {v7}, Lb/g/a/i/a;->Y()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v14, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v11, v19

    move/from16 v7, v20

    move-object/from16 v3, v21

    goto :goto_2

    :cond_7
    move-object/from16 v21, v3

    move/from16 v20, v7

    move-object/from16 v19, v11

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v10, :cond_9

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    instance-of v7, v3, Lb/g/a/i/g;

    if-eqz v7, :cond_8

    check-cast v3, Lb/g/a/i/g;

    .line 19
    iget v7, v3, Lb/g/a/i/g;->Q0:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    const/4 v7, 0x0

    .line 20
    invoke-static {v7, v3, v12, v5}, Lb/g/a/i/m/h;->b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    invoke-static {v7, v1, v12, v5}, Lb/g/a/i/m/h;->b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V

    if-eqz v14, :cond_b

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v10, :cond_b

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    instance-of v7, v3, Lb/g/a/i/a;

    if-eqz v7, :cond_a

    check-cast v3, Lb/g/a/i/a;

    invoke-virtual {v3}, Lb/g/a/i/a;->Y()I

    move-result v7

    if-nez v7, :cond_a

    .line 21
    invoke-virtual {v3}, Lb/g/a/i/a;->X()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    invoke-static {v7, v3, v12, v5}, Lb/g/a/i/m/h;->b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    if-ne v15, v4, :cond_c

    .line 22
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lb/g/a/i/d;->N(II)V

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    .line 23
    iget-object v2, v1, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    .line 24
    iput v3, v2, Lb/g/a/i/c;->b:I

    const/4 v7, 0x1

    iput-boolean v7, v2, Lb/g/a/i/c;->c:Z

    .line 25
    iput v3, v1, Lb/g/a/i/d;->c0:I

    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_9
    if-ge v3, v10, :cond_12

    .line 26
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/g/a/i/d;

    instance-of v11, v8, Lb/g/a/i/g;

    if-eqz v11, :cond_10

    check-cast v8, Lb/g/a/i/g;

    .line 27
    iget v11, v8, Lb/g/a/i/g;->Q0:I

    if-nez v11, :cond_11

    .line 28
    iget v2, v8, Lb/g/a/i/g;->N0:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    goto :goto_a

    .line 29
    :cond_d
    iget v2, v8, Lb/g/a/i/g;->O0:I

    if-eq v2, v11, :cond_e

    .line 30
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->G()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v2

    .line 31
    iget v11, v8, Lb/g/a/i/g;->O0:I

    sub-int/2addr v2, v11

    goto :goto_a

    .line 32
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->G()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 33
    iget v2, v8, Lb/g/a/i/g;->M0:F

    .line 34
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v11

    int-to-float v11, v11

    mul-float v2, v2, v11

    add-float v2, v2, v18

    float-to-int v2, v2

    :goto_a
    invoke-virtual {v8, v2}, Lb/g/a/i/g;->W(I)V

    :cond_f
    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    instance-of v11, v8, Lb/g/a/i/a;

    if-eqz v11, :cond_11

    check-cast v8, Lb/g/a/i/a;

    invoke-virtual {v8}, Lb/g/a/i/a;->Y()I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_11

    const/4 v7, 0x1

    :cond_11
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_12
    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v10, :cond_14

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    instance-of v8, v3, Lb/g/a/i/g;

    if-eqz v8, :cond_13

    check-cast v3, Lb/g/a/i/g;

    .line 35
    iget v8, v3, Lb/g/a/i/g;->Q0:I

    if-nez v8, :cond_13

    const/4 v8, 0x1

    .line 36
    invoke-static {v8, v3, v12}, Lb/g/a/i/m/h;->g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    invoke-static {v2, v1, v12}, Lb/g/a/i/m/h;->g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V

    if-eqz v7, :cond_16

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v10, :cond_16

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    instance-of v7, v3, Lb/g/a/i/a;

    if-eqz v7, :cond_15

    check-cast v3, Lb/g/a/i/a;

    invoke-virtual {v3}, Lb/g/a/i/a;->Y()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    .line 37
    invoke-virtual {v3}, Lb/g/a/i/a;->X()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {v8, v3, v12}, Lb/g/a/i/m/h;->g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v10, :cond_1a

    .line 38
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    invoke-virtual {v3}, Lb/g/a/i/d;->E()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {v3}, Lb/g/a/i/m/h;->a(Lb/g/a/i/d;)Z

    move-result v7

    if-eqz v7, :cond_19

    sget-object v7, Lb/g/a/i/m/h;->a:Lb/g/a/i/m/b$a;

    const/4 v8, 0x0

    invoke-static {v3, v12, v7, v8}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    instance-of v7, v3, Lb/g/a/i/g;

    if-eqz v7, :cond_18

    move-object v7, v3

    check-cast v7, Lb/g/a/i/g;

    .line 39
    iget v7, v7, Lb/g/a/i/g;->Q0:I

    if-nez v7, :cond_17

    goto :goto_f

    .line 40
    :cond_17
    invoke-static {v8, v3, v12, v5}, Lb/g/a/i/m/h;->b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V

    goto :goto_10

    :cond_18
    invoke-static {v8, v3, v12, v5}, Lb/g/a/i/m/h;->b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V

    :goto_f
    invoke-static {v8, v3, v12}, Lb/g/a/i/m/h;->g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V

    :cond_19
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v6, :cond_1e

    .line 41
    iget-object v3, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    invoke-virtual {v3}, Lb/g/a/i/d;->E()Z

    move-result v5

    if-eqz v5, :cond_1c

    instance-of v5, v3, Lb/g/a/i/g;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lb/g/a/i/a;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lb/g/a/i/k;

    if-nez v5, :cond_1c

    .line 42
    iget-boolean v5, v3, Lb/g/a/i/d;->H:Z

    if-nez v5, :cond_1c

    const/4 v5, 0x0

    .line 43
    invoke-virtual {v3, v5}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v7

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v8

    if-ne v7, v0, :cond_1b

    iget v7, v3, Lb/g/a/i/d;->q:I

    if-eq v7, v5, :cond_1b

    if-ne v8, v0, :cond_1b

    iget v7, v3, Lb/g/a/i/d;->r:I

    if-eq v7, v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_12

    :cond_1b
    const/4 v5, 0x0

    :goto_12
    if-nez v5, :cond_1c

    new-instance v5, Lb/g/a/i/m/b$a;

    invoke-direct {v5}, Lb/g/a/i/m/b$a;-><init>()V

    iget-object v7, v1, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    const/4 v8, 0x0

    invoke-static {v3, v7, v5, v8}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    move-object/from16 v16, v2

    move-object/from16 v21, v3

    move/from16 v20, v7

    move/from16 v17, v8

    move-object/from16 v19, v11

    :cond_1e
    const/4 v2, 0x2

    if-le v6, v2, :cond_54

    move-object/from16 v5, v21

    move-object/from16 v7, v19

    if-eq v9, v5, :cond_1f

    if-ne v7, v5, :cond_53

    :cond_1f
    iget v8, v1, Lb/g/a/i/e;->Z0:I

    const/16 v10, 0x400

    invoke-static {v8, v10}, Lb/g/a/i/j;->b(II)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 44
    iget-object v8, v1, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    .line 45
    sget-object v10, Lb/g/a/i/c$a;->i:Lb/g/a/i/c$a;

    iget-object v11, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_13
    if-ge v13, v12, :cond_22

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/g/a/i/d;

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v2

    invoke-virtual {v14}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v3

    move/from16 v21, v6

    invoke-virtual {v14}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v6

    invoke-static {v15, v2, v3, v6}, La/a/a/a/a;->t0(Lb/g/a/i/d$a;Lb/g/a/i/d$a;Lb/g/a/i/d$a;Lb/g/a/i/d$a;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_14

    :cond_20
    instance-of v2, v14, Lb/g/a/i/f;

    if-eqz v2, :cond_21

    :goto_14
    move-object/from16 v25, v4

    move-object v4, v5

    move-object/from16 v24, v7

    move-object/from16 v23, v9

    goto/16 :goto_2b

    :cond_21
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v21

    const/4 v2, 0x2

    goto :goto_13

    :cond_22
    move/from16 v21, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    :goto_15
    if-ge v2, v12, :cond_32

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v7

    move-object/from16 v7, v23

    check-cast v7, Lb/g/a/i/d;

    move-object/from16 v23, v9

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v9

    move-object/from16 v25, v4

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v4

    move-object/from16 v26, v5

    invoke-virtual {v7}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v5

    move-object/from16 v27, v0

    invoke-virtual {v7}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v0

    invoke-static {v9, v4, v5, v0}, La/a/a/a/a;->t0(Lb/g/a/i/d$a;Lb/g/a/i/d$a;Lb/g/a/i/d$a;Lb/g/a/i/d$a;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v1, Lb/g/a/i/e;->h1:Lb/g/a/i/m/b$a;

    const/4 v4, 0x0

    invoke-static {v7, v8, v0, v4}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    :cond_23
    instance-of v0, v7, Lb/g/a/i/g;

    if-eqz v0, :cond_27

    move-object v4, v7

    check-cast v4, Lb/g/a/i/g;

    .line 47
    iget v5, v4, Lb/g/a/i/g;->Q0:I

    if-nez v5, :cond_25

    if-nez v13, :cond_24

    .line 48
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    :cond_24
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_25
    iget v5, v4, Lb/g/a/i/g;->Q0:I

    const/4 v9, 0x1

    if-ne v5, v9, :cond_27

    if-nez v3, :cond_26

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    instance-of v4, v7, Lb/g/a/i/i;

    if-eqz v4, :cond_2d

    instance-of v4, v7, Lb/g/a/i/a;

    if-eqz v4, :cond_2a

    move-object v4, v7

    check-cast v4, Lb/g/a/i/a;

    invoke-virtual {v4}, Lb/g/a/i/a;->Y()I

    move-result v5

    if-nez v5, :cond_29

    if-nez v6, :cond_28

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v5

    :cond_28
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {v4}, Lb/g/a/i/a;->Y()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_2d

    if-nez v14, :cond_2c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16

    :cond_2a
    move-object v4, v7

    check-cast v4, Lb/g/a/i/i;

    if-nez v6, :cond_2b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2b
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_2c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_16
    move-object v14, v5

    :cond_2c
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v4, v7, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v4, v4, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v4, :cond_2f

    iget-object v4, v7, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v4, v4, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v4, :cond_2f

    if-nez v0, :cond_2f

    instance-of v4, v7, Lb/g/a/i/a;

    if-nez v4, :cond_2f

    if-nez v15, :cond_2e

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object v4, v7, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v4, v4, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v4, :cond_31

    iget-object v4, v7, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v4, v4, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v4, :cond_31

    iget-object v4, v7, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    iget-object v4, v4, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v4, :cond_31

    if-nez v0, :cond_31

    instance-of v0, v7, Lb/g/a/i/a;

    if-nez v0, :cond_31

    if-nez v22, :cond_30

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :cond_30
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v0

    :cond_31
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, v23

    move-object/from16 v7, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v0, v27

    goto/16 :goto_15

    :cond_32
    move-object/from16 v27, v0

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v24, v7

    move-object/from16 v23, v9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/g;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_17

    :cond_33
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v6, :cond_34

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/i;

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    move-result-object v6

    invoke-virtual {v3, v0, v5, v6}, Lb/g/a/i/i;->W(Ljava/util/ArrayList;ILb/g/a/i/m/n;)V

    invoke-virtual {v6, v0}, Lb/g/a/i/m/n;->b(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_18

    :cond_34
    sget-object v2, Lb/g/a/i/c$a;->d:Lb/g/a/i/c$a;

    invoke-virtual {v1, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    .line 51
    iget-object v2, v2, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_35

    .line 52
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_19

    :cond_35
    sget-object v2, Lb/g/a/i/c$a;->f:Lb/g/a/i/c$a;

    invoke-virtual {v1, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    .line 53
    iget-object v2, v2, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_36

    .line 54
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_1a

    :cond_36
    invoke-virtual {v1, v10}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    .line 55
    iget-object v2, v2, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_37

    .line 56
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_1b

    :cond_37
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v15, :cond_38

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_1c

    :cond_38
    if-eqz v13, :cond_39

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/g;

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_1d

    :cond_39
    const/4 v5, 0x1

    if-eqz v14, :cond_3a

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/i;

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    move-result-object v6

    invoke-virtual {v3, v0, v5, v6}, Lb/g/a/i/i;->W(Ljava/util/ArrayList;ILb/g/a/i/m/n;)V

    invoke-virtual {v6, v0}, Lb/g/a/i/m/n;->b(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1e

    :cond_3a
    sget-object v2, Lb/g/a/i/c$a;->e:Lb/g/a/i/c$a;

    invoke-virtual {v1, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    .line 57
    iget-object v2, v2, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3b

    .line 58
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_1f

    :cond_3b
    sget-object v2, Lb/g/a/i/c$a;->h:Lb/g/a/i/c$a;

    invoke-virtual {v1, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    .line 59
    iget-object v2, v2, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3c

    .line 60
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_20

    :cond_3c
    sget-object v2, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    invoke-virtual {v1, v2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    .line 61
    iget-object v2, v2, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3d

    .line 62
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_21

    :cond_3d
    invoke-virtual {v1, v10}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    .line 63
    iget-object v2, v2, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3e

    .line 64
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_22

    :cond_3e
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v22, :cond_3f

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    invoke-static {v3, v5, v0, v4}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    goto :goto_23

    :cond_3f
    const/4 v2, 0x0

    :goto_24
    if-ge v2, v12, :cond_42

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    .line 65
    iget-object v4, v3, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    move-object/from16 v6, v27

    if-ne v7, v6, :cond_40

    aget-object v4, v4, v5

    if-ne v4, v6, :cond_40

    const/4 v4, 0x1

    goto :goto_25

    :cond_40
    const/4 v4, 0x0

    :goto_25
    if-eqz v4, :cond_41

    .line 66
    iget v4, v3, Lb/g/a/i/d;->K0:I

    invoke-static {v0, v4}, La/a/a/a/a;->z(Ljava/util/ArrayList;I)Lb/g/a/i/m/n;

    move-result-object v4

    iget v3, v3, Lb/g/a/i/d;->L0:I

    invoke-static {v0, v3}, La/a/a/a/a;->z(Ljava/util/ArrayList;I)Lb/g/a/i/m/n;

    move-result-object v3

    if-eqz v4, :cond_41

    if-eqz v3, :cond_41

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lb/g/a/i/m/n;->d(ILb/g/a/i/m/n;)V

    const/4 v5, 0x2

    .line 67
    iput v5, v3, Lb/g/a/i/m/n;->c:I

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v27, v6

    const/4 v5, 0x1

    goto :goto_24

    :cond_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_43

    move-object/from16 v4, v26

    goto/16 :goto_2b

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v2

    move-object/from16 v4, v26

    if-ne v2, v4, :cond_47

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/a/i/m/n;

    .line 69
    iget v8, v7, Lb/g/a/i/m/n;->c:I

    if-ne v8, v3, :cond_44

    const/4 v8, 0x0

    goto :goto_27

    .line 70
    :cond_44
    iget-object v3, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    const/4 v8, 0x0

    .line 71
    invoke-virtual {v7, v3, v8}, Lb/g/a/i/m/n;->c(Lb/g/a/d;I)I

    move-result v3

    if-le v3, v5, :cond_45

    move v5, v3

    move-object v6, v7

    :cond_45
    :goto_27
    const/4 v3, 0x1

    goto :goto_26

    :cond_46
    const/4 v8, 0x0

    if-eqz v6, :cond_47

    .line 72
    iget-object v2, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v25, v2, v8

    .line 73
    invoke-virtual {v1, v5}, Lb/g/a/i/d;->T(I)V

    goto :goto_28

    :cond_47
    const/4 v6, 0x0

    :goto_28
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v2

    if-ne v2, v4, :cond_4b

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_48
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/a/i/m/n;

    .line 74
    iget v7, v5, Lb/g/a/i/m/n;->c:I

    if-nez v7, :cond_49

    const/4 v8, 0x1

    goto :goto_29

    .line 75
    :cond_49
    iget-object v7, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    const/4 v8, 0x1

    .line 76
    invoke-virtual {v5, v7, v8}, Lb/g/a/i/m/n;->c(Lb/g/a/d;I)I

    move-result v7

    if-le v7, v2, :cond_48

    move-object v3, v5

    move v2, v7

    goto :goto_29

    :cond_4a
    const/4 v8, 0x1

    if-eqz v3, :cond_4b

    .line 77
    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v25, v0, v8

    .line 78
    invoke-virtual {v1, v2}, Lb/g/a/i/d;->O(I)V

    goto :goto_2a

    :cond_4b
    const/4 v3, 0x0

    :goto_2a
    if-nez v6, :cond_4d

    if-eqz v3, :cond_4c

    goto :goto_2c

    :cond_4c
    :goto_2b
    const/4 v0, 0x0

    goto :goto_2d

    :cond_4d
    :goto_2c
    const/4 v0, 0x1

    :goto_2d
    if-eqz v0, :cond_52

    move-object/from16 v2, v23

    if-ne v2, v4, :cond_4f

    .line 79
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v0

    move/from16 v3, v20

    if-ge v3, v0, :cond_4e

    if-lez v3, :cond_4e

    invoke-virtual {v1, v3}, Lb/g/a/i/d;->T(I)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lb/g/a/i/e;->a1:Z

    goto :goto_2e

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v7

    goto :goto_2f

    :cond_4f
    move/from16 v3, v20

    :goto_2e
    move v7, v3

    :goto_2f
    move-object/from16 v5, v24

    if-ne v5, v4, :cond_51

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v0

    move/from16 v6, v17

    if-ge v6, v0, :cond_50

    if-lez v6, :cond_50

    invoke-virtual {v1, v6}, Lb/g/a/i/d;->O(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lb/g/a/i/e;->b1:Z

    goto :goto_30

    :cond_50
    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v8

    goto :goto_31

    :cond_51
    move/from16 v6, v17

    :goto_30
    move v8, v6

    :goto_31
    const/4 v0, 0x1

    goto :goto_33

    :cond_52
    move/from16 v6, v17

    move/from16 v3, v20

    move-object/from16 v2, v23

    move-object/from16 v5, v24

    goto :goto_32

    :cond_53
    move-object/from16 v25, v4

    move-object v4, v5

    move/from16 v21, v6

    move-object v5, v7

    move-object v2, v9

    move/from16 v6, v17

    move/from16 v3, v20

    goto :goto_32

    :cond_54
    move-object/from16 v25, v4

    move-object v2, v9

    move-object/from16 v5, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v21, v6

    move/from16 v6, v17

    :goto_32
    move v7, v3

    move v8, v6

    const/4 v0, 0x0

    :goto_33
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lb/g/a/i/e;->g0(I)Z

    move-result v6

    if-nez v6, :cond_56

    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Lb/g/a/i/e;->g0(I)Z

    move-result v6

    if-eqz v6, :cond_55

    goto :goto_34

    :cond_55
    const/4 v6, 0x0

    goto :goto_35

    :cond_56
    :goto_34
    const/4 v6, 0x1

    :goto_35
    iget-object v9, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lb/g/a/d;->g:Z

    iget v10, v1, Lb/g/a/i/e;->Z0:I

    if-eqz v10, :cond_57

    if-eqz v6, :cond_57

    const/4 v6, 0x1

    iput-boolean v6, v9, Lb/g/a/d;->g:Z

    :cond_57
    iget-object v6, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v9

    if-eq v9, v4, :cond_59

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v9

    if-ne v9, v4, :cond_58

    goto :goto_36

    :cond_58
    const/4 v9, 0x0

    goto :goto_37

    :cond_59
    :goto_36
    const/4 v9, 0x1

    :goto_37
    const/4 v10, 0x0

    .line 80
    iput v10, v1, Lb/g/a/i/e;->V0:I

    iput v10, v1, Lb/g/a/i/e;->W0:I

    move/from16 v11, v21

    const/4 v10, 0x0

    :goto_38
    if-ge v10, v11, :cond_5b

    .line 81
    iget-object v12, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb/g/a/i/d;

    instance-of v13, v12, Lb/g/a/i/l;

    if-eqz v13, :cond_5a

    check-cast v12, Lb/g/a/i/l;

    invoke-virtual {v12}, Lb/g/a/i/l;->W()V

    :cond_5a
    add-int/lit8 v10, v10, 0x1

    goto :goto_38

    :cond_5b
    invoke-virtual {v1, v3}, Lb/g/a/i/e;->g0(I)Z

    move-result v10

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_39
    if-eqz v13, :cond_70

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    iget-object v0, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v0}, Lb/g/a/d;->u()V

    const/4 v14, 0x0

    .line 82
    iput v14, v1, Lb/g/a/i/e;->V0:I

    iput v14, v1, Lb/g/a/i/e;->W0:I

    .line 83
    iget-object v0, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v1, v0}, Lb/g/a/i/d;->l(Lb/g/a/d;)V

    const/4 v0, 0x0

    :goto_3a
    if-ge v0, v11, :cond_5c

    iget-object v14, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/g/a/i/d;

    iget-object v3, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v14, v3}, Lb/g/a/i/d;->l(Lb/g/a/d;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x40

    goto :goto_3a

    :cond_5c
    iget-object v0, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v1, v0}, Lb/g/a/i/e;->Y(Lb/g/a/d;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, v1, Lb/g/a/i/e;->c1:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x5

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, v1, Lb/g/a/i/e;->c1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/c;

    iget-object v13, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    iget-object v14, v1, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v13, v14}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v13

    .line 84
    iget-object v14, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v14, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    iget-object v14, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v20, v12

    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {v14, v0, v13, v12, v3}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    const/4 v12, 0x0

    .line 85
    iput-object v12, v1, Lb/g/a/i/e;->c1:Ljava/lang/ref/WeakReference;

    goto :goto_3b

    :cond_5d
    move/from16 v20, v12

    :goto_3b
    iget-object v0, v1, Lb/g/a/i/e;->e1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, v1, Lb/g/a/i/e;->e1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/c;

    iget-object v12, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    iget-object v13, v1, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v12, v13}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v12

    .line 86
    iget-object v13, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v13, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    iget-object v13, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v0, v14, v3}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    const/4 v12, 0x0

    .line 87
    iput-object v12, v1, Lb/g/a/i/e;->e1:Ljava/lang/ref/WeakReference;

    :cond_5e
    iget-object v0, v1, Lb/g/a/i/e;->d1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, v1, Lb/g/a/i/e;->d1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/c;

    iget-object v12, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    iget-object v13, v1, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v12, v13}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v12

    .line 88
    iget-object v13, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v13, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    iget-object v13, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    const/4 v14, 0x0

    invoke-virtual {v13, v0, v12, v14, v3}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    const/4 v12, 0x0

    .line 89
    iput-object v12, v1, Lb/g/a/i/e;->d1:Ljava/lang/ref/WeakReference;

    goto :goto_3d

    :goto_3c
    const/4 v3, 0x0

    goto :goto_3f

    :cond_5f
    :goto_3d
    iget-object v0, v1, Lb/g/a/i/e;->f1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, v1, Lb/g/a/i/e;->f1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/c;

    iget-object v12, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    iget-object v13, v1, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v12, v13}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v12

    .line 90
    iget-object v13, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v13, v0}, Lb/g/a/d;->l(Ljava/lang/Object;)Lb/g/a/g;

    move-result-object v0

    iget-object v13, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v0, v14, v3}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    .line 91
    :try_start_3
    iput-object v3, v1, Lb/g/a/i/e;->f1:Ljava/lang/ref/WeakReference;

    goto :goto_3e

    :catch_0
    move-exception v0

    goto :goto_3c

    :cond_60
    const/4 v3, 0x0

    :goto_3e
    iget-object v0, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v0}, Lb/g/a/d;->q()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v13, 0x1

    goto :goto_41

    :catch_1
    move-exception v0

    goto :goto_3f

    :catch_2
    move-exception v0

    move/from16 v20, v12

    goto :goto_3c

    :goto_3f
    const/4 v13, 0x1

    goto :goto_40

    :catch_3
    move-exception v0

    move/from16 v20, v12

    const/4 v3, 0x0

    :goto_40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION : "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_41
    if-eqz v13, :cond_65

    iget-object v0, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    const/4 v3, 0x2

    const/4 v12, 0x0

    .line 92
    aput-boolean v12, v16, v3

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lb/g/a/i/e;->g0(I)Z

    move-result v12

    invoke-virtual {v1, v0, v12}, Lb/g/a/i/d;->V(Lb/g/a/d;Z)V

    iget-object v13, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_42
    if-ge v3, v13, :cond_64

    move/from16 v21, v13

    iget-object v13, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lb/g/a/i/d;

    invoke-virtual {v13, v0, v12}, Lb/g/a/i/d;->V(Lb/g/a/d;Z)V

    move-object/from16 v22, v0

    .line 93
    iget v0, v13, Lb/g/a/i/d;->h:I

    move/from16 v23, v12

    const/4 v12, -0x1

    if-ne v0, v12, :cond_62

    iget v0, v13, Lb/g/a/i/d;->i:I

    if-eq v0, v12, :cond_61

    goto :goto_43

    :cond_61
    const/4 v0, 0x0

    goto :goto_44

    :cond_62
    :goto_43
    const/4 v0, 0x1

    :goto_44
    if-eqz v0, :cond_63

    const/4 v14, 0x1

    :cond_63
    add-int/lit8 v3, v3, 0x1

    move/from16 v13, v21

    move-object/from16 v0, v22

    move/from16 v12, v23

    goto :goto_42

    :cond_64
    const/4 v12, -0x1

    goto :goto_46

    :cond_65
    const/4 v12, -0x1

    .line 94
    iget-object v0, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v1, v0, v10}, Lb/g/a/i/d;->V(Lb/g/a/d;Z)V

    const/4 v0, 0x0

    :goto_45
    if-ge v0, v11, :cond_66

    iget-object v3, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    iget-object v13, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    invoke-virtual {v3, v13, v10}, Lb/g/a/i/d;->V(Lb/g/a/d;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_66
    const/4 v14, 0x0

    :goto_46
    const/16 v0, 0x8

    if-eqz v9, :cond_69

    if-ge v15, v0, :cond_69

    const/4 v3, 0x2

    aget-boolean v13, v16, v3

    if-eqz v13, :cond_69

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_47
    if-ge v13, v11, :cond_67

    iget-object v0, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    move/from16 v22, v9

    iget v9, v0, Lb/g/a/i/d;->b0:I

    invoke-virtual {v0}, Lb/g/a/i/d;->w()I

    move-result v23

    add-int v9, v23, v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v9, v0, Lb/g/a/i/d;->c0:I

    invoke-virtual {v0}, Lb/g/a/i/d;->q()I

    move-result v0

    add-int/2addr v0, v9

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v22

    const/16 v0, 0x8

    goto :goto_47

    :cond_67
    move/from16 v22, v9

    iget v0, v1, Lb/g/a/i/d;->i0:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, v1, Lb/g/a/i/d;->j0:I

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v2, v4, :cond_68

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v9

    if-ge v9, v0, :cond_68

    invoke-virtual {v1, v0}, Lb/g/a/i/d;->T(I)V

    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v9, 0x0

    aput-object v4, v0, v9

    const/4 v14, 0x1

    const/16 v20, 0x1

    :cond_68
    if-ne v5, v4, :cond_6a

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v0

    if-ge v0, v3, :cond_6a

    invoke-virtual {v1, v3}, Lb/g/a/i/d;->O(I)V

    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v14, 0x1

    const/16 v20, 0x1

    goto :goto_48

    :cond_69
    move/from16 v22, v9

    :cond_6a
    :goto_48
    iget v0, v1, Lb/g/a/i/d;->i0:I

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v3

    if-le v0, v3, :cond_6b

    invoke-virtual {v1, v0}, Lb/g/a/i/d;->T(I)V

    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v3, 0x0

    aput-object v25, v0, v3

    const/4 v14, 0x1

    const/16 v20, 0x1

    :cond_6b
    iget v0, v1, Lb/g/a/i/d;->j0:I

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v3

    if-le v0, v3, :cond_6c

    invoke-virtual {v1, v0}, Lb/g/a/i/d;->O(I)V

    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v3, 0x1

    aput-object v25, v0, v3

    const/4 v14, 0x1

    const/16 v20, 0x1

    goto :goto_49

    :cond_6c
    const/4 v3, 0x1

    :goto_49
    if-nez v20, :cond_6e

    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v9, 0x0

    aget-object v0, v0, v9

    if-ne v0, v4, :cond_6d

    if-lez v7, :cond_6d

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->w()I

    move-result v0

    if-le v0, v7, :cond_6d

    iput-boolean v3, v1, Lb/g/a/i/e;->a1:Z

    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v25, v0, v9

    invoke-virtual {v1, v7}, Lb/g/a/i/d;->T(I)V

    const/4 v14, 0x1

    const/16 v20, 0x1

    :cond_6d
    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v0, v0, v3

    if-ne v0, v4, :cond_6e

    if-lez v8, :cond_6e

    invoke-virtual/range {p0 .. p0}, Lb/g/a/i/d;->q()I

    move-result v0

    if-le v0, v8, :cond_6e

    iput-boolean v3, v1, Lb/g/a/i/e;->b1:Z

    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v25, v0, v3

    invoke-virtual {v1, v8}, Lb/g/a/i/d;->O(I)V

    const/16 v0, 0x8

    const/4 v12, 0x1

    const/4 v14, 0x1

    goto :goto_4a

    :cond_6e
    move/from16 v12, v20

    const/16 v0, 0x8

    :goto_4a
    if-le v15, v0, :cond_6f

    const/4 v13, 0x0

    goto :goto_4b

    :cond_6f
    move v13, v14

    :goto_4b
    move v0, v15

    move/from16 v9, v22

    const/16 v3, 0x40

    goto/16 :goto_39

    :cond_70
    move/from16 v20, v12

    iput-object v6, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    if-eqz v20, :cond_71

    iget-object v0, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v5, v0, v2

    :cond_71
    iget-object v0, v1, Lb/g/a/i/e;->S0:Lb/g/a/d;

    .line 95
    iget-object v0, v0, Lb/g/a/d;->l:Lb/g/a/c;

    .line 96
    invoke-virtual {v1, v0}, Lb/g/a/i/l;->K(Lb/g/a/c;)V

    return-void
.end method

.method public X(Lb/g/a/i/d;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Lb/g/a/i/e;->V0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lb/g/a/i/e;->Y0:[Lb/g/a/i/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lb/g/a/i/b;

    iput-object p2, p0, Lb/g/a/i/e;->Y0:[Lb/g/a/i/b;

    :cond_0
    iget-object p2, p0, Lb/g/a/i/e;->Y0:[Lb/g/a/i/b;

    iget v1, p0, Lb/g/a/i/e;->V0:I

    new-instance v2, Lb/g/a/i/b;

    const/4 v3, 0x0

    .line 2
    iget-boolean v4, p0, Lb/g/a/i/e;->R0:Z

    .line 3
    invoke-direct {v2, p1, v3, v4}, Lb/g/a/i/b;-><init>(Lb/g/a/i/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lb/g/a/i/e;->V0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 4
    iget p2, p0, Lb/g/a/i/e;->W0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lb/g/a/i/e;->X0:[Lb/g/a/i/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lb/g/a/i/b;

    iput-object p2, p0, Lb/g/a/i/e;->X0:[Lb/g/a/i/b;

    :cond_2
    iget-object p2, p0, Lb/g/a/i/e;->X0:[Lb/g/a/i/b;

    iget v1, p0, Lb/g/a/i/e;->W0:I

    new-instance v2, Lb/g/a/i/b;

    .line 5
    iget-boolean v3, p0, Lb/g/a/i/e;->R0:Z

    .line 6
    invoke-direct {v2, p1, v0, v3}, Lb/g/a/i/b;-><init>(Lb/g/a/i/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lb/g/a/i/e;->W0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public Y(Lb/g/a/d;)Z
    .locals 14

    sget-object v0, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    sget-object v1, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lb/g/a/i/e;->g0(I)Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    iget-object v3, p0, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    iget-object v8, p0, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/g/a/i/d;

    .line 1
    iget-object v9, v8, Lb/g/a/i/d;->U:[Z

    aput-boolean v4, v9, v4

    aput-boolean v4, v9, v7

    .line 2
    instance-of v8, v8, Lb/g/a/i/a;

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_8

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_8

    iget-object v6, p0, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/a/i/d;

    instance-of v8, v6, Lb/g/a/i/a;

    if-eqz v8, :cond_7

    check-cast v6, Lb/g/a/i/a;

    const/4 v8, 0x0

    .line 3
    :goto_2
    iget v9, v6, Lb/g/a/i/i;->N0:I

    if-ge v8, v9, :cond_7

    iget-object v9, v6, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v9, v9, v8

    iget-boolean v10, v6, Lb/g/a/i/a;->P0:Z

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lb/g/a/i/d;->g()Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_4

    :cond_2
    iget v10, v6, Lb/g/a/i/a;->O0:I

    if-eqz v10, :cond_5

    if-ne v10, v7, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    .line 4
    :cond_4
    iget-object v9, v9, Lb/g/a/i/d;->U:[Z

    aput-boolean v7, v9, v7

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v9, v9, Lb/g/a/i/d;->U:[Z

    aput-boolean v7, v9, v4

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5
    :cond_8
    iget-object v5, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_b

    iget-object v6, p0, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/a/i/d;

    invoke-virtual {v6}, Lb/g/a/i/d;->e()Z

    move-result v8

    if-eqz v8, :cond_a

    instance-of v8, v6, Lb/g/a/i/k;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    invoke-virtual {v6, p1, v2}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    :cond_a
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    :goto_7
    iget-object v5, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_11

    iget-object v5, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    iget-object v6, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/g/a/i/d;

    check-cast v8, Lb/g/a/i/k;

    iget-object v9, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    const/4 v10, 0x0

    .line 6
    :goto_8
    iget v11, v8, Lb/g/a/i/i;->N0:I

    if-ge v10, v11, :cond_e

    iget-object v11, v8, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v11, v11, v10

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_c

    .line 7
    invoke-virtual {v8, p1, v2}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    iget-object v6, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_f
    iget-object v6, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ne v5, v6, :cond_b

    iget-object v5, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/a/i/d;

    invoke-virtual {v6, p1, v2}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    goto :goto_a

    :cond_10
    iget-object v5, p0, Lb/g/a/i/e;->g1:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    goto :goto_7

    :cond_11
    sget-boolean v5, Lb/g/a/d;->p:Z

    if-eqz v5, :cond_15

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v3, :cond_13

    iget-object v6, p0, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/a/i/d;

    invoke-virtual {v6}, Lb/g/a/i/d;->e()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v3

    if-ne v3, v1, :cond_14

    const/4 v12, 0x0

    goto :goto_c

    :cond_14
    const/4 v12, 0x1

    :goto_c
    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, p0

    move-object v10, p1

    move-object v11, v0

    invoke-virtual/range {v8 .. v13}, Lb/g/a/i/d;->d(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/HashSet;IZ)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/d;

    invoke-static {p0, p1, v1}, Lb/g/a/i/j;->a(Lb/g/a/i/e;Lb/g/a/d;Lb/g/a/i/d;)V

    invoke-virtual {v1, p1, v2}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    goto :goto_d

    :cond_15
    const/4 v5, 0x0

    :goto_e
    if-ge v5, v3, :cond_1b

    iget-object v6, p0, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/a/i/d;

    instance-of v8, v6, Lb/g/a/i/e;

    if-eqz v8, :cond_19

    iget-object v8, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v9, v8, v4

    aget-object v10, v8, v7

    if-ne v9, v1, :cond_16

    .line 8
    aput-object v0, v8, v4

    :cond_16
    if-ne v10, v1, :cond_17

    .line 9
    aput-object v0, v8, v7

    .line 10
    :cond_17
    invoke-virtual {v6, p1, v2}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    if-ne v9, v1, :cond_18

    invoke-virtual {v6, v9}, Lb/g/a/i/d;->P(Lb/g/a/i/d$a;)V

    :cond_18
    if-ne v10, v1, :cond_1a

    invoke-virtual {v6, v10}, Lb/g/a/i/d;->S(Lb/g/a/i/d$a;)V

    goto :goto_f

    :cond_19
    invoke-static {p0, p1, v6}, Lb/g/a/i/j;->a(Lb/g/a/i/e;Lb/g/a/d;Lb/g/a/i/d;)V

    invoke-virtual {v6}, Lb/g/a/i/d;->e()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v6, p1, v2}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    :cond_1a
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1b
    iget v0, p0, Lb/g/a/i/e;->V0:I

    const/4 v1, 0x0

    if-lez v0, :cond_1c

    invoke-static {p0, p1, v1, v4}, La/a/a/a/a;->a(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/ArrayList;I)V

    :cond_1c
    iget v0, p0, Lb/g/a/i/e;->W0:I

    if-lez v0, :cond_1d

    invoke-static {p0, p1, v1, v7}, La/a/a/a/a;->a(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/ArrayList;I)V

    :cond_1d
    return v7
.end method

.method public Z(Lb/g/a/i/c;)V
    .locals 2

    iget-object v0, p0, Lb/g/a/i/e;->f1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/g/a/i/c;->d()I

    move-result v0

    iget-object v1, p0, Lb/g/a/i/e;->f1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/g/a/i/e;->f1:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public a0(Lb/g/a/i/c;)V
    .locals 2

    iget-object v0, p0, Lb/g/a/i/e;->d1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/g/a/i/c;->d()I

    move-result v0

    iget-object v1, p0, Lb/g/a/i/e;->d1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/g/a/i/e;->d1:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public b0(Lb/g/a/i/c;)V
    .locals 2

    iget-object v0, p0, Lb/g/a/i/e;->e1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/g/a/i/c;->d()I

    move-result v0

    iget-object v1, p0, Lb/g/a/i/e;->e1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/g/a/i/e;->e1:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public c0(Lb/g/a/i/c;)V
    .locals 2

    iget-object v0, p0, Lb/g/a/i/e;->c1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/g/a/i/c;->d()I

    move-result v0

    iget-object v1, p0, Lb/g/a/i/e;->c1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/g/a/i/e;->c1:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public d0(ZI)Z
    .locals 13

    iget-object v0, p0, Lb/g/a/i/e;->O0:Lb/g/a/i/m/e;

    .line 1
    sget-object v1, Lb/g/a/i/d$a;->f:Lb/g/a/i/d$a;

    sget-object v2, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    sget-object v3, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    const/4 v4, 0x1

    and-int/2addr p1, v4

    iget-object v5, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v5

    iget-object v7, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {v7, v4}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v7

    iget-object v8, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {v8}, Lb/g/a/i/d;->x()I

    move-result v8

    iget-object v9, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {v9}, Lb/g/a/i/d;->y()I

    move-result v9

    if-eqz p1, :cond_4

    if-eq v5, v2, :cond_0

    if-ne v7, v2, :cond_4

    :cond_0
    iget-object v10, v0, Lb/g/a/i/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/g/a/i/m/o;

    iget v12, v11, Lb/g/a/i/m/o;->f:I

    if-ne v12, p2, :cond_1

    invoke-virtual {v11}, Lb/g/a/i/m/o;->k()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 p1, 0x0

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    if-ne v5, v2, :cond_4

    iget-object p1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    .line 2
    iget-object v2, p1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v3, v2, v6

    .line 3
    invoke-virtual {v0, p1, v6}, Lb/g/a/i/m/e;->d(Lb/g/a/i/e;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lb/g/a/i/d;->T(I)V

    iget-object p1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v2, p1, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v2, v2, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result p1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ne v7, v2, :cond_4

    iget-object p1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    .line 4
    iget-object v2, p1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v3, v2, v4

    .line 5
    invoke-virtual {v0, p1, v4}, Lb/g/a/i/m/e;->d(Lb/g/a/i/e;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lb/g/a/i/d;->O(I)V

    iget-object p1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v2, p1, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v2, v2, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result p1

    :goto_0
    invoke-virtual {v2, p1}, Lb/g/a/i/m/g;->c(I)V

    :cond_4
    iget-object p1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v2, p1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    if-nez p2, :cond_6

    aget-object v9, v2, v6

    if-eq v9, v3, :cond_5

    aget-object v2, v2, v6

    if-ne v2, v1, :cond_7

    :cond_5
    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result p1

    add-int/2addr p1, v8

    iget-object v1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v1, v1, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v1, v1, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    invoke-virtual {v1, p1}, Lb/g/a/i/m/f;->c(I)V

    iget-object v1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v1, v1, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v1, v1, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    sub-int/2addr p1, v8

    goto :goto_2

    :cond_6
    aget-object v8, v2, v4

    if-eq v8, v3, :cond_8

    aget-object v2, v2, v4

    if-ne v2, v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result p1

    add-int/2addr p1, v9

    iget-object v1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v1, v1, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v1, v1, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    invoke-virtual {v1, p1}, Lb/g/a/i/m/f;->c(I)V

    iget-object v1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v1, v1, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v1, v1, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    sub-int/2addr p1, v9

    :goto_2
    invoke-virtual {v1, p1}, Lb/g/a/i/m/g;->c(I)V

    const/4 p1, 0x1

    :goto_3
    invoke-virtual {v0}, Lb/g/a/i/m/e;->g()V

    iget-object v1, v0, Lb/g/a/i/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/m/o;

    iget v3, v2, Lb/g/a/i/m/o;->f:I

    if-eq v3, p2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v3, v2, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    iget-object v8, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    if-ne v3, v8, :cond_a

    iget-boolean v3, v2, Lb/g/a/i/m/o;->g:Z

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Lb/g/a/i/m/o;->e()V

    goto :goto_4

    :cond_b
    iget-object v1, v0, Lb/g/a/i/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/m/o;

    iget v3, v2, Lb/g/a/i/m/o;->f:I

    if-eq v3, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    iget-object v3, v2, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    iget-object v8, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    if-ne v3, v8, :cond_e

    goto :goto_5

    :cond_e
    iget-object v3, v2, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-boolean v3, v3, Lb/g/a/i/m/f;->j:Z

    if-nez v3, :cond_f

    goto :goto_6

    :cond_f
    iget-object v3, v2, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-boolean v3, v3, Lb/g/a/i/m/f;->j:Z

    if-nez v3, :cond_10

    goto :goto_6

    :cond_10
    instance-of v3, v2, Lb/g/a/i/m/c;

    if-nez v3, :cond_c

    iget-object v2, v2, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iget-boolean v2, v2, Lb/g/a/i/m/f;->j:Z

    if-nez v2, :cond_c

    :goto_6
    const/4 v4, 0x0

    :cond_11
    iget-object p1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {p1, v5}, Lb/g/a/i/d;->P(Lb/g/a/i/d$a;)V

    iget-object p1, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {p1, v7}, Lb/g/a/i/d;->S(Lb/g/a/i/d$a;)V

    return v4
.end method

.method public e0()V
    .locals 2

    iget-object v0, p0, Lb/g/a/i/e;->O0:Lb/g/a/i/m/e;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lb/g/a/i/m/e;->b:Z

    return-void
.end method

.method public g0(I)Z
    .locals 1

    iget v0, p0, Lb/g/a/i/e;->Z0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h0(Lb/g/a/i/m/b$b;)V
    .locals 1

    iput-object p1, p0, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    iget-object v0, p0, Lb/g/a/i/e;->O0:Lb/g/a/i/m/e;

    .line 1
    iput-object p1, v0, Lb/g/a/i/m/e;->f:Lb/g/a/i/m/b$b;

    return-void
.end method

.method public i0(I)V
    .locals 0

    iput p1, p0, Lb/g/a/i/e;->Z0:I

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lb/g/a/i/e;->g0(I)Z

    move-result p1

    sput-boolean p1, Lb/g/a/d;->p:Z

    return-void
.end method
