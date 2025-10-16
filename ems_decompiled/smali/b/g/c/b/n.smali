.class public Lb/g/c/b/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:[Lb/g/c/b/k;

.field public B:I

.field public C:I

.field public D:Landroid/view/View;

.field public E:I

.field public F:F

.field public G:Landroid/view/animation/Interpolator;

.field public H:Z

.field public a:Landroid/graphics/Rect;

.field public b:Landroid/view/View;

.field public c:I

.field public d:I

.field public e:Lb/g/c/b/p;

.field public f:Lb/g/c/b/p;

.field public g:Lb/g/c/b/l;

.field public h:Lb/g/c/b/l;

.field public i:[Lb/g/a/h/a/b;

.field public j:Lb/g/a/h/a/b;

.field public k:F

.field public l:F

.field public m:F

.field public n:[I

.field public o:[D

.field public p:[D

.field public q:[Ljava/lang/String;

.field public r:[I

.field public s:I

.field public t:[F

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/c/b/p;",
            ">;"
        }
    .end annotation
.end field

.field public v:[F

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/c/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/g/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/g/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/g/c/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/g/c/b/n;->a:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lb/g/c/b/n;->d:I

    new-instance v1, Lb/g/c/b/p;

    invoke-direct {v1}, Lb/g/c/b/p;-><init>()V

    iput-object v1, p0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    new-instance v1, Lb/g/c/b/p;

    invoke-direct {v1}, Lb/g/c/b/p;-><init>()V

    iput-object v1, p0, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    new-instance v1, Lb/g/c/b/l;

    invoke-direct {v1}, Lb/g/c/b/l;-><init>()V

    iput-object v1, p0, Lb/g/c/b/n;->g:Lb/g/c/b/l;

    new-instance v1, Lb/g/c/b/l;

    invoke-direct {v1}, Lb/g/c/b/l;-><init>()V

    iput-object v1, p0, Lb/g/c/b/n;->h:Lb/g/c/b/l;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lb/g/c/b/n;->k:F

    const/4 v2, 0x0

    iput v2, p0, Lb/g/c/b/n;->l:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lb/g/c/b/n;->m:F

    const/4 v2, 0x4

    iput v2, p0, Lb/g/c/b/n;->s:I

    new-array v2, v2, [F

    iput-object v2, p0, Lb/g/c/b/n;->t:[F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, p0, Lb/g/c/b/n;->v:[F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lb/g/c/b/n;->w:Ljava/util/ArrayList;

    iput v0, p0, Lb/g/c/b/n;->B:I

    iput v0, p0, Lb/g/c/b/n;->C:I

    const/4 v2, 0x0

    iput-object v2, p0, Lb/g/c/b/n;->D:Landroid/view/View;

    iput v0, p0, Lb/g/c/b/n;->E:I

    iput v1, p0, Lb/g/c/b/n;->F:F

    iput-object v2, p0, Lb/g/c/b/n;->G:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/c/b/n;->H:Z

    .line 1
    iput-object p1, p0, Lb/g/c/b/n;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lb/g/c/b/n;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    aput v2, p2, v1

    goto :goto_0

    :cond_0
    iget v3, p0, Lb/g/c/b/n;->m:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_2

    iget v4, p0, Lb/g/c/b/n;->l:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    const/4 p1, 0x0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float p1, p1, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_2
    :goto_0
    iget-object v3, p0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v3, v3, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    const/high16 v4, 0x7fc00000    # Float.NaN

    iget-object v5, p0, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/c/b/p;

    iget-object v7, v6, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    if-eqz v7, :cond_3

    iget v8, v6, Lb/g/c/b/p;->e:F

    cmpg-float v9, v8, p1

    if-gez v9, :cond_4

    move-object v3, v7

    move v0, v8

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v4, v6, Lb/g/c/b/p;->e:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    float-to-double v4, p1

    invoke-virtual {v3, v4, v5}, Lb/g/a/h/a/c;->a(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v2

    add-float/2addr p1, v0

    if-eqz p2, :cond_7

    invoke-virtual {v3, v4, v5}, Lb/g/a/h/a/c;->b(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p2, v1

    :cond_7
    return p1
.end method

.method public b(D[F[F)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    const/4 v4, 0x4

    new-array v5, v4, [D

    new-array v6, v4, [D

    iget-object v7, v0, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v5}, Lb/g/a/h/a/b;->c(D[D)V

    iget-object v7, v0, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v6}, Lb/g/a/h/a/b;->f(D[D)V

    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v9, v0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v10, v0, Lb/g/c/b/n;->n:[I

    .line 1
    iget v11, v9, Lb/g/c/b/p;->g:F

    iget v12, v9, Lb/g/c/b/p;->h:F

    iget v13, v9, Lb/g/c/b/p;->i:F

    iget v14, v9, Lb/g/c/b/p;->j:F

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    array-length v4, v10

    if-ge v15, v4, :cond_4

    aget-wide v0, v5, v15

    double-to-float v0, v0

    aget-wide v2, v6, v15

    double-to-float v2, v2

    aget v3, v10, v15

    const/4 v1, 0x1

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    const/4 v1, 0x4

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v14, v0

    move/from16 v17, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    move v13, v0

    move/from16 v16, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    move v12, v0

    move v8, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    move v11, v0

    move v7, v2

    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    div-float v16, v16, v0

    add-float v16, v16, v7

    div-float v17, v17, v0

    add-float v17, v17, v8

    iget-object v1, v9, Lb/g/c/b/p;->o:Lb/g/c/b/n;

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    new-array v4, v3, [F

    new-array v3, v3, [F

    move-wide/from16 v5, p1

    invoke-virtual {v1, v5, v6, v4, v3}, Lb/g/c/b/n;->b(D[F[F)V

    const/4 v1, 0x0

    aget v5, v4, v1

    const/4 v2, 0x1

    aget v4, v4, v2

    aget v6, v3, v1

    aget v1, v3, v2

    float-to-double v9, v5

    float-to-double v2, v11

    float-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v15, v9

    div-float v5, v13, v0

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v9, v15, v9

    double-to-float v5, v9

    float-to-double v9, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v15

    div-float v2, v14, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v2

    double-to-float v2, v9

    float-to-double v3, v6

    float-to-double v6, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    move/from16 p2, v1

    float-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v0

    add-double/2addr v3, v9

    double-to-float v3, v3

    move/from16 v4, p2

    float-to-double v8, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v18, v18, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v8, v18

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v0

    add-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v17, v0

    move v12, v2

    move/from16 v16, v3

    move v11, v5

    const/high16 v0, 0x40000000    # 2.0f

    :cond_5
    div-float/2addr v13, v0

    add-float/2addr v13, v11

    const/4 v1, 0x0

    add-float/2addr v13, v1

    const/4 v2, 0x0

    aput v13, p3, v2

    div-float/2addr v14, v0

    add-float/2addr v14, v12

    add-float/2addr v14, v1

    const/4 v0, 0x1

    aput v14, p3, v0

    aput v16, p4, v2

    aput v17, p4, v0

    return-void
.end method

.method public c(FFF[F)V
    .locals 11

    iget-object v0, p0, Lb/g/c/b/n;->v:[F

    invoke-virtual {p0, p1, v0}, Lb/g/c/b/n;->a(F[F)F

    move-result p1

    iget-object v0, p0, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    aget-object v0, v0, v1

    float-to-double v2, p1

    iget-object p1, p0, Lb/g/c/b/n;->p:[D

    invoke-virtual {v0, v2, v3, p1}, Lb/g/a/h/a/b;->f(D[D)V

    iget-object p1, p0, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    aget-object p1, p1, v1

    iget-object v0, p0, Lb/g/c/b/n;->o:[D

    invoke-virtual {p1, v2, v3, v0}, Lb/g/a/h/a/b;->c(D[D)V

    iget-object p1, p0, Lb/g/c/b/n;->v:[F

    aget p1, p1, v1

    :goto_0
    iget-object v9, p0, Lb/g/c/b/n;->p:[D

    array-length v0, v9

    if-ge v1, v0, :cond_0

    aget-wide v4, v9, v1

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    aput-wide v4, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/g/c/b/n;->j:Lb/g/a/h/a/b;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lb/g/c/b/n;->o:[D

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p1, v2, v3, v0}, Lb/g/a/h/a/b;->c(D[D)V

    iget-object p1, p0, Lb/g/c/b/n;->j:Lb/g/a/h/a/b;

    iget-object v0, p0, Lb/g/c/b/n;->p:[D

    invoke-virtual {p1, v2, v3, v0}, Lb/g/a/h/a/b;->f(D[D)V

    iget-object v4, p0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v8, p0, Lb/g/c/b/n;->n:[I

    iget-object v9, p0, Lb/g/c/b/n;->p:[D

    iget-object v10, p0, Lb/g/c/b/n;->o:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Lb/g/c/b/p;->j(FF[F[I[D[D)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v8, p0, Lb/g/c/b/n;->n:[I

    iget-object v10, p0, Lb/g/c/b/n;->o:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Lb/g/c/b/p;->j(FF[F[I[D[D)V

    return-void

    :cond_3
    iget-object p1, p0, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v0, p1, Lb/g/c/b/p;->g:F

    iget-object v2, p0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v3, v2, Lb/g/c/b/p;->g:F

    sub-float/2addr v0, v3

    iget v3, p1, Lb/g/c/b/p;->h:F

    iget v4, v2, Lb/g/c/b/p;->h:F

    sub-float/2addr v3, v4

    iget v4, p1, Lb/g/c/b/p;->i:F

    iget v5, v2, Lb/g/c/b/p;->i:F

    sub-float/2addr v4, v5

    iget p1, p1, Lb/g/c/b/p;->j:F

    iget v2, v2, Lb/g/c/b/p;->j:F

    sub-float/2addr p1, v2

    add-float/2addr v4, v0

    add-float/2addr p1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v2, p2

    mul-float v5, v5, v0

    mul-float v4, v4, p2

    add-float/2addr v4, v5

    aput v4, p4, v1

    sub-float/2addr v2, p3

    mul-float v2, v2, v3

    mul-float p1, p1, p3

    add-float/2addr p1, v2

    const/4 p2, 0x1

    aput p1, p4, p2

    return-void
.end method

.method public d(Landroid/view/View;FJLb/g/a/h/a/d;)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    invoke-virtual {v0, v2, v1}, Lb/g/c/b/n;->a(F[F)F

    move-result v2

    iget v3, v0, Lb/g/c/b/n;->E:I

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v3, v4, :cond_3

    int-to-float v3, v3

    div-float v3, v5, v3

    div-float v4, v2, v3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float v4, v4, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    iget v6, v0, Lb/g/c/b/n;->F:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v0, Lb/g/c/b/n;->F:F

    add-float/2addr v2, v6

    rem-float/2addr v2, v5

    :cond_0
    iget-object v5, v0, Lb/g/c/b/n;->G:Landroid/view/animation/Interpolator;

    if-eqz v5, :cond_1

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_1
    float-to-double v5, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v5, v8

    if-lez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    mul-float v2, v2, v3

    add-float/2addr v2, v4

    :cond_3
    move v8, v2

    iget-object v2, v0, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/a/c;

    invoke-virtual {v3, v7, v8}, Lb/g/c/a/c;->d(Landroid/view/View;F)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lb/g/c/b/n;->x:Ljava/util/HashMap;

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v2, 0x0

    move-object v11, v1

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/c/a/d;

    instance-of v2, v1, Lb/g/c/a/d$d;

    if-eqz v2, :cond_5

    move-object v11, v1

    check-cast v11, Lb/g/c/a/d$d;

    goto :goto_2

    :cond_5
    move-object/from16 v2, p1

    move v3, v8

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lb/g/c/a/d;->e(Landroid/view/View;FJLb/g/a/h/a/d;)Z

    move-result v1

    or-int/2addr v12, v1

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    move-object v11, v1

    :cond_7
    iget-object v1, v0, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    if-eqz v1, :cond_27

    aget-object v1, v1, v9

    float-to-double v13, v8

    iget-object v2, v0, Lb/g/c/b/n;->o:[D

    invoke-virtual {v1, v13, v14, v2}, Lb/g/a/h/a/b;->c(D[D)V

    iget-object v1, v0, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    aget-object v1, v1, v9

    iget-object v2, v0, Lb/g/c/b/n;->p:[D

    invoke-virtual {v1, v13, v14, v2}, Lb/g/a/h/a/b;->f(D[D)V

    iget-object v1, v0, Lb/g/c/b/n;->j:Lb/g/a/h/a/b;

    if-eqz v1, :cond_8

    iget-object v2, v0, Lb/g/c/b/n;->o:[D

    array-length v3, v2

    if-lez v3, :cond_8

    invoke-virtual {v1, v13, v14, v2}, Lb/g/a/h/a/b;->c(D[D)V

    iget-object v1, v0, Lb/g/c/b/n;->j:Lb/g/a/h/a/b;

    iget-object v2, v0, Lb/g/c/b/n;->p:[D

    invoke-virtual {v1, v13, v14, v2}, Lb/g/a/h/a/b;->f(D[D)V

    :cond_8
    iget-boolean v1, v0, Lb/g/c/b/n;->H:Z

    if-nez v1, :cond_1c

    iget-object v1, v0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v2, v0, Lb/g/c/b/n;->n:[I

    iget-object v3, v0, Lb/g/c/b/n;->o:[D

    iget-object v4, v0, Lb/g/c/b/n;->p:[D

    .line 1
    iget v5, v1, Lb/g/c/b/p;->g:F

    iget v6, v1, Lb/g/c/b/p;->h:F

    iget v9, v1, Lb/g/c/b/p;->i:F

    iget v10, v1, Lb/g/c/b/p;->j:F

    array-length v15, v2

    if-eqz v15, :cond_9

    iget-object v15, v1, Lb/g/c/b/p;->r:[D

    array-length v15, v15

    move/from16 p2, v5

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    if-gt v15, v5, :cond_a

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    add-int/lit8 v5, v5, 0x1

    new-array v15, v5, [D

    iput-object v15, v1, Lb/g/c/b/p;->r:[D

    new-array v5, v5, [D

    iput-object v5, v1, Lb/g/c/b/p;->s:[D

    goto :goto_3

    :cond_9
    move/from16 p2, v5

    :cond_a
    :goto_3
    iget-object v5, v1, Lb/g/c/b/p;->r:[D

    move v15, v9

    move/from16 v16, v10

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v5, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    const/4 v5, 0x0

    :goto_4
    array-length v9, v2

    if-ge v5, v9, :cond_b

    iget-object v9, v1, Lb/g/c/b/p;->r:[D

    aget v10, v2, v5

    aget-wide v17, v3, v5

    aput-wide v17, v9, v10

    iget-object v9, v1, Lb/g/c/b/p;->s:[D

    aget v10, v2, v5

    aget-wide v17, v4, v5

    aput-wide v17, v9, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    const/high16 v2, 0x7fc00000    # Float.NaN

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    move/from16 v5, p2

    move v9, v6

    move/from16 p2, v12

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_5
    iget-object v12, v1, Lb/g/c/b/p;->r:[D

    move/from16 v19, v8

    array-length v8, v12

    if-ge v10, v8, :cond_13

    aget-wide v20, v12, v10

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v8, v11

    goto :goto_7

    :cond_c
    const-wide/16 v20, 0x0

    iget-object v8, v1, Lb/g/c/b/p;->r:[D

    aget-wide v22, v8, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    iget-object v8, v1, Lb/g/c/b/p;->r:[D

    aget-wide v22, v8, v10

    add-double v20, v22, v20

    :goto_6
    move-object v8, v11

    move-wide/from16 v11, v20

    double-to-float v11, v11

    iget-object v12, v1, Lb/g/c/b/p;->s:[D

    move/from16 v20, v11

    aget-wide v11, v12, v10

    double-to-float v11, v11

    const/4 v12, 0x1

    if-eq v10, v12, :cond_12

    const/4 v12, 0x2

    if-eq v10, v12, :cond_11

    const/4 v12, 0x3

    if-eq v10, v12, :cond_10

    const/4 v12, 0x4

    if-eq v10, v12, :cond_f

    const/4 v11, 0x5

    if-eq v10, v11, :cond_e

    goto :goto_7

    :cond_e
    move/from16 v2, v20

    goto :goto_7

    :cond_f
    move/from16 v18, v11

    move/from16 v16, v20

    goto :goto_7

    :cond_10
    move/from16 v17, v11

    move/from16 v15, v20

    goto :goto_7

    :cond_11
    move v6, v11

    move/from16 v9, v20

    goto :goto_7

    :cond_12
    move v3, v11

    move/from16 v5, v20

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object v11, v8

    move/from16 v8, v19

    goto :goto_5

    :cond_13
    move-object v8, v11

    iget-object v1, v1, Lb/g/c/b/p;->o:Lb/g/c/b/n;

    if-eqz v1, :cond_16

    const/4 v10, 0x2

    new-array v11, v10, [F

    new-array v10, v10, [F

    invoke-virtual {v1, v13, v14, v11, v10}, Lb/g/c/b/n;->b(D[F[F)V

    const/4 v1, 0x0

    aget v12, v11, v1

    const/16 v17, 0x1

    aget v11, v11, v17

    aget v1, v10, v1

    aget v10, v10, v17

    move-wide/from16 v20, v13

    float-to-double v12, v12

    move-object v14, v8

    float-to-double v7, v5

    move-object/from16 v22, v4

    float-to-double v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v17, v7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v17, v17, v12

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v15, v9

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v12, v17, v12

    double-to-float v9, v12

    float-to-double v11, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v17, v7

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v11, v11, v17

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v16, v13

    move-object/from16 v23, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v11, v13

    double-to-float v11, v11

    float-to-double v12, v1

    float-to-double v0, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v17, v0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v17, v17, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v7

    move/from16 v24, v15

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    add-double v12, v12, v17

    double-to-float v3, v12

    float-to-double v12, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v17, v0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v12, v12, v17

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v7

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v14

    add-double/2addr v0, v12

    double-to-float v0, v0

    move-object/from16 v1, v22

    array-length v4, v1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_14

    float-to-double v4, v3

    const/4 v6, 0x0

    aput-wide v4, v1, v6

    float-to-double v4, v0

    const/4 v6, 0x1

    aput-wide v4, v1, v6

    :cond_14
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_15

    float-to-double v1, v2

    float-to-double v4, v0

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v1

    double-to-float v0, v3

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_8

    :cond_15
    move-object/from16 v7, p1

    :goto_8
    move v5, v9

    move v9, v11

    goto :goto_9

    :cond_16
    move-object/from16 v23, v8

    move-wide/from16 v20, v13

    move/from16 v24, v15

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_17

    const/high16 v0, 0x40000000    # 2.0f

    div-float v17, v17, v0

    add-float v1, v17, v3

    div-float v18, v18, v0

    add-float v0, v18, v6

    const/4 v3, 0x0

    float-to-double v3, v3

    float-to-double v10, v2

    float-to-double v12, v0

    float-to-double v0, v1

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v10

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v3

    double-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    :cond_17
    :goto_9
    instance-of v0, v7, Lb/g/c/b/c;

    if-eqz v0, :cond_18

    add-float v15, v24, v5

    add-float v0, v9, v16

    move-object v1, v7

    check-cast v1, Lb/g/c/b/c;

    invoke-interface {v1, v5, v9, v15, v0}, Lb/g/c/b/c;->a(FFFF)V

    goto :goto_c

    :cond_18
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v5, v0

    float-to-int v1, v5

    add-float/2addr v9, v0

    float-to-int v0, v9

    add-float v5, v5, v24

    float-to-int v2, v5

    add-float v9, v9, v16

    float-to-int v3, v9

    sub-int v4, v2, v1

    sub-int v5, v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ne v4, v6, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-eq v5, v6, :cond_19

    goto :goto_a

    :cond_19
    const/4 v6, 0x0

    goto :goto_b

    :cond_1a
    :goto_a
    const/4 v6, 0x1

    :goto_b
    if-eqz v6, :cond_1b

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v7, v4, v5}, Landroid/view/View;->measure(II)V

    :cond_1b
    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_c

    :cond_1c
    move/from16 v19, v8

    move-object/from16 v23, v11

    move/from16 p2, v12

    move-wide/from16 v20, v13

    :goto_c
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lb/g/c/b/n;->C:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget-object v1, v0, Lb/g/c/b/n;->D:Landroid/view/View;

    if-nez v1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, v0, Lb/g/c/b/n;->C:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lb/g/c/b/n;->D:Landroid/view/View;

    :cond_1d
    iget-object v1, v0, Lb/g/c/b/n;->D:Landroid/view/View;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, v0, Lb/g/c/b/n;->D:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, v0, Lb/g/c/b/n;->D:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v0, Lb/g/c/b/n;->D:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v3, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v7, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_1e
    iget-object v1, v0, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/h/a/j;

    instance-of v3, v2, Lb/g/c/a/c$d;

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lb/g/c/b/n;->p:[D

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1f

    check-cast v2, Lb/g/c/a/c$d;

    const/4 v4, 0x0

    aget-wide v8, v3, v4

    aget-wide v5, v3, v5

    .line 3
    iget-object v2, v2, Lb/g/a/h/a/j;->a:Lb/g/a/h/a/b;

    move-wide/from16 v10, v20

    invoke-virtual {v2, v10, v11, v4}, Lb/g/a/h/a/b;->b(DI)D

    move-result-wide v2

    double-to-float v2, v2

    .line 4
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_e

    :cond_1f
    move-wide/from16 v10, v20

    :goto_e
    move-wide/from16 v20, v10

    goto :goto_d

    :cond_20
    move-wide/from16 v10, v20

    if-eqz v23, :cond_21

    .line 5
    iget-object v1, v0, Lb/g/c/b/n;->p:[D

    const/4 v2, 0x0

    aget-wide v8, v1, v2

    const/4 v2, 0x1

    aget-wide v12, v1, v2

    move-object/from16 v1, v23

    move/from16 v2, v19

    move-wide/from16 v3, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    .line 6
    invoke-virtual/range {v1 .. v6}, Lb/g/c/a/d;->d(FJLandroid/view/View;Lb/g/a/h/a/d;)F

    move-result v1

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v1, v23

    iget-boolean v1, v1, Lb/g/a/h/a/o;->h:Z

    or-int v1, p2, v1

    move v12, v1

    goto :goto_f

    :cond_21
    move/from16 v12, p2

    :goto_f
    const/4 v1, 0x1

    .line 7
    :goto_10
    iget-object v2, v0, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    array-length v3, v2

    if-ge v1, v3, :cond_22

    aget-object v2, v2, v1

    iget-object v3, v0, Lb/g/c/b/n;->t:[F

    invoke-virtual {v2, v10, v11, v3}, Lb/g/a/h/a/b;->d(D[F)V

    iget-object v2, v0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v2, v2, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lb/g/c/b/n;->q:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/d/a;

    iget-object v3, v0, Lb/g/c/b/n;->t:[F

    invoke-virtual {v2, v7, v3}, Lb/g/d/a;->h(Landroid/view/View;[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    iget-object v1, v0, Lb/g/c/b/n;->g:Lb/g/c/b/l;

    iget v2, v1, Lb/g/c/b/l;->d:I

    if-nez v2, :cond_25

    const/4 v2, 0x0

    cmpg-float v2, v19, v2

    if-gtz v2, :cond_23

    goto :goto_11

    :cond_23
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v19, v2

    if-ltz v2, :cond_24

    iget-object v1, v0, Lb/g/c/b/n;->h:Lb/g/c/b/l;

    :goto_11
    iget v1, v1, Lb/g/c/b/l;->e:I

    goto :goto_12

    :cond_24
    iget-object v2, v0, Lb/g/c/b/n;->h:Lb/g/c/b/l;

    iget v2, v2, Lb/g/c/b/l;->e:I

    iget v1, v1, Lb/g/c/b/l;->e:I

    if-eq v2, v1, :cond_25

    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    iget-object v1, v0, Lb/g/c/b/n;->A:[Lb/g/c/b/k;

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    :goto_13
    iget-object v2, v0, Lb/g/c/b/n;->A:[Lb/g/c/b/k;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    aget-object v2, v2, v1

    move/from16 v3, v19

    invoke-virtual {v2, v3, v7}, Lb/g/c/b/k;->i(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_26
    move/from16 v3, v19

    goto :goto_14

    :cond_27
    move v3, v8

    move/from16 p2, v12

    iget-object v1, v0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v2, v1, Lb/g/c/b/p;->g:F

    iget-object v4, v0, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v5, v4, Lb/g/c/b/p;->g:F

    invoke-static {v5, v2, v3, v2}, Lc/a/a/a/a;->a(FFFF)F

    move-result v2

    iget v5, v1, Lb/g/c/b/p;->h:F

    iget v6, v4, Lb/g/c/b/p;->h:F

    invoke-static {v6, v5, v3, v5}, Lc/a/a/a/a;->a(FFFF)F

    move-result v5

    iget v6, v1, Lb/g/c/b/p;->i:F

    iget v8, v4, Lb/g/c/b/p;->i:F

    invoke-static {v8, v6, v3, v6}, Lc/a/a/a/a;->a(FFFF)F

    move-result v9

    iget v1, v1, Lb/g/c/b/p;->j:F

    iget v4, v4, Lb/g/c/b/p;->j:F

    invoke-static {v4, v1, v3, v1}, Lc/a/a/a/a;->a(FFFF)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v2, v11

    float-to-int v12, v2

    add-float/2addr v5, v11

    float-to-int v11, v5

    add-float/2addr v2, v9

    float-to-int v2, v2

    add-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v9, v2, v12

    sub-int v10, v5, v11

    cmpl-float v6, v8, v6

    if-nez v6, :cond_28

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_29

    :cond_28
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v7, v4, v1}, Landroid/view/View;->measure(II)V

    :cond_29
    invoke-virtual {v7, v12, v11, v2, v5}, Landroid/view/View;->layout(IIII)V

    move/from16 v12, p2

    :goto_14
    iget-object v1, v0, Lb/g/c/b/n;->z:Ljava/util/HashMap;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/a/b;

    instance-of v4, v2, Lb/g/c/a/b$d;

    if-eqz v4, :cond_2a

    check-cast v2, Lb/g/c/a/b$d;

    iget-object v4, v0, Lb/g/c/b/n;->p:[D

    const/4 v5, 0x0

    aget-wide v5, v4, v5

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    .line 8
    invoke-virtual {v2, v3}, Lb/g/a/h/a/e;->a(F)F

    move-result v2

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_15

    .line 9
    :cond_2a
    invoke-virtual {v2, v7, v3}, Lb/g/c/a/b;->e(Landroid/view/View;F)V

    goto :goto_15

    :cond_2b
    return v12
.end method

.method public final e(Lb/g/c/b/p;)V
    .locals 4

    iget-object v0, p0, Lb/g/c/b/n;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lb/g/c/b/n;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lb/g/c/b/n;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lb/g/c/b/n;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lb/g/c/b/p;->g(FFFF)V

    return-void
.end method

.method public f(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p3, v0, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 p5, 0x4

    if-eq p3, p5, :cond_0

    goto :goto_3

    :cond_0
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p5

    iget p5, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/2addr p4, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v0

    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p4, v0

    goto :goto_1

    :cond_2
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p5

    iget p5, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    add-int/2addr p5, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p5

    div-int/2addr v0, v1

    sub-int/2addr p4, v0

    iput p4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/2addr p3, v1

    iput p3, p2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_3
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p4

    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p4, v0

    div-int/2addr p4, v1

    :goto_1
    iput p4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    add-int/2addr p4, p3

    div-int/2addr p4, v1

    sub-int/2addr p5, p4

    iput p5, p2, Landroid/graphics/Rect;->top:I

    :goto_2
    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p4, p3

    iput p4, p2, Landroid/graphics/Rect;->right:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    :goto_3
    return-void
.end method

.method public g(IIJ)V
    .locals 33

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget v5, v0, Lb/g/c/b/n;->B:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v6, v0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iput v5, v6, Lb/g/c/b/p;->l:I

    :cond_0
    iget-object v5, v0, Lb/g/c/b/n;->g:Lb/g/c/b/l;

    iget-object v6, v0, Lb/g/c/b/n;->h:Lb/g/c/b/l;

    .line 1
    iget v7, v5, Lb/g/c/b/l;->c:F

    iget v8, v6, Lb/g/c/b/l;->c:F

    invoke-virtual {v5, v7, v8}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    const-string v8, "alpha"

    if-eqz v7, :cond_1

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v7, v5, Lb/g/c/b/l;->f:F

    iget v9, v6, Lb/g/c/b/l;->f:F

    invoke-virtual {v5, v7, v9}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    const-string v9, "elevation"

    if-eqz v7, :cond_2

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v7, v5, Lb/g/c/b/l;->e:I

    iget v10, v6, Lb/g/c/b/l;->e:I

    if-eq v7, v10, :cond_4

    iget v11, v5, Lb/g/c/b/l;->d:I

    if-nez v11, :cond_4

    if-eqz v7, :cond_3

    if-nez v10, :cond_4

    :cond_3
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v7, v5, Lb/g/c/b/l;->g:F

    iget v10, v6, Lb/g/c/b/l;->g:F

    invoke-virtual {v5, v7, v10}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    const-string v10, "rotation"

    if-eqz v7, :cond_5

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v7, v5, Lb/g/c/b/l;->q:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    const-string v11, "transitionPathRotate"

    if-eqz v7, :cond_6

    iget v7, v6, Lb/g/c/b/l;->q:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v7, v5, Lb/g/c/b/l;->r:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    const-string v12, "progress"

    if-eqz v7, :cond_8

    iget v7, v6, Lb/g/c/b/l;->r:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v7, v5, Lb/g/c/b/l;->h:F

    iget v13, v6, Lb/g/c/b/l;->h:F

    invoke-virtual {v5, v7, v13}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    const-string v13, "rotationX"

    if-eqz v7, :cond_a

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v7, v5, Lb/g/c/b/l;->i:F

    iget v14, v6, Lb/g/c/b/l;->i:F

    invoke-virtual {v5, v7, v14}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    const-string v14, "rotationY"

    if-eqz v7, :cond_b

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v7, v5, Lb/g/c/b/l;->l:F

    iget v15, v6, Lb/g/c/b/l;->l:F

    invoke-virtual {v5, v7, v15}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "transformPivotX"

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v7, v5, Lb/g/c/b/l;->m:F

    iget v15, v6, Lb/g/c/b/l;->m:F

    invoke-virtual {v5, v7, v15}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "transformPivotY"

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v7, v5, Lb/g/c/b/l;->j:F

    iget v15, v6, Lb/g/c/b/l;->j:F

    invoke-virtual {v5, v7, v15}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    const-string v15, "scaleX"

    if-eqz v7, :cond_e

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v7, v5, Lb/g/c/b/l;->k:F

    move-object/from16 v16, v13

    iget v13, v6, Lb/g/c/b/l;->k:F

    invoke-virtual {v5, v7, v13}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    const-string v13, "scaleY"

    if-eqz v7, :cond_f

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v7, v5, Lb/g/c/b/l;->n:F

    move-object/from16 v17, v14

    iget v14, v6, Lb/g/c/b/l;->n:F

    invoke-virtual {v5, v7, v14}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    const-string v14, "translationX"

    if-eqz v7, :cond_10

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget v7, v5, Lb/g/c/b/l;->o:F

    move-object/from16 v18, v14

    iget v14, v6, Lb/g/c/b/l;->o:F

    invoke-virtual {v5, v7, v14}, Lb/g/c/b/l;->e(FF)Z

    move-result v7

    const-string v14, "translationY"

    if-eqz v7, :cond_11

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    iget v7, v5, Lb/g/c/b/l;->p:F

    iget v6, v6, Lb/g/c/b/l;->p:F

    invoke-virtual {v5, v7, v6}, Lb/g/c/b/l;->e(FF)Z

    move-result v5

    const-string v6, "translationZ"

    if-eqz v5, :cond_12

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    :cond_12
    iget-object v5, v0, Lb/g/c/b/n;->w:Ljava/util/ArrayList;

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Lb/g/c/b/d;

    move-object/from16 v19, v14

    instance-of v14, v5, Lb/g/c/b/h;

    if-eqz v14, :cond_14

    check-cast v5, Lb/g/c/b/h;

    new-instance v14, Lb/g/c/b/p;

    move-object/from16 v27, v6

    iget-object v6, v0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    move-object/from16 v28, v12

    iget-object v12, v0, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    move-object/from16 v21, v14

    move/from16 v22, p1

    move/from16 v23, p2

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v12

    invoke-direct/range {v21 .. v26}, Lb/g/c/b/p;-><init>(IILb/g/c/b/h;Lb/g/c/b/p;Lb/g/c/b/p;)V

    .line 3
    iget-object v6, v0, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    invoke-static {v6, v14}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_13

    const-string v12, " KeyPath position \""

    invoke-static {v12}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v21, v15

    iget v15, v14, Lb/g/c/b/p;->f:F

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, "\" outside of range"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "MotionController"

    invoke-static {v15, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_13
    move-object/from16 v21, v15

    :goto_1
    iget-object v12, v0, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    neg-int v6, v6

    const/4 v15, -0x1

    add-int/2addr v6, v15

    invoke-virtual {v12, v6, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4
    iget v5, v5, Lb/g/c/b/i;->f:I

    if-eq v5, v15, :cond_19

    iput v5, v0, Lb/g/c/b/n;->d:I

    goto :goto_2

    :cond_14
    move-object/from16 v27, v6

    move-object/from16 v28, v12

    move-object/from16 v21, v15

    instance-of v6, v5, Lb/g/c/b/f;

    if-eqz v6, :cond_15

    invoke-virtual {v5, v3}, Lb/g/c/b/d;->d(Ljava/util/HashSet;)V

    goto :goto_2

    :cond_15
    instance-of v6, v5, Lb/g/c/b/j;

    if-eqz v6, :cond_16

    invoke-virtual {v5, v1}, Lb/g/c/b/d;->d(Ljava/util/HashSet;)V

    goto :goto_2

    :cond_16
    instance-of v6, v5, Lb/g/c/b/k;

    if-eqz v6, :cond_18

    if-nez v7, :cond_17

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    check-cast v5, Lb/g/c/b/k;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_18
    invoke-virtual {v5, v4}, Lb/g/c/b/d;->f(Ljava/util/HashMap;)V

    invoke-virtual {v5, v2}, Lb/g/c/b/d;->d(Ljava/util/HashSet;)V

    :cond_19
    :goto_2
    move-object/from16 v14, v19

    move-object/from16 v5, v20

    move-object/from16 v15, v21

    move-object/from16 v6, v27

    move-object/from16 v12, v28

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v27, v6

    move-object/from16 v28, v12

    move-object/from16 v19, v14

    move-object/from16 v21, v15

    goto :goto_3

    :cond_1b
    move-object/from16 v27, v6

    move-object/from16 v28, v12

    move-object/from16 v19, v14

    move-object/from16 v21, v15

    const/4 v7, 0x0

    :goto_3
    const/4 v5, 0x0

    if-eqz v7, :cond_1c

    new-array v5, v5, [Lb/g/c/b/k;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lb/g/c/b/k;

    iput-object v5, v0, Lb/g/c/b/n;->A:[Lb/g/c/b/k;

    :cond_1c
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    const/4 v12, 0x1

    if-nez v5, :cond_37

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "CUSTOM,"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_20

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    const-string v6, ","

    invoke-virtual {v14, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v12

    iget-object v12, v0, Lb/g/c/b/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v7, v20

    check-cast v7, Lb/g/c/b/d;

    move-object/from16 v20, v5

    iget-object v5, v7, Lb/g/c/b/d;->e:Ljava/util/HashMap;

    if-nez v5, :cond_1d

    goto :goto_6

    :cond_1d
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/d/a;

    if-eqz v5, :cond_1e

    iget v7, v7, Lb/g/c/b/d;->a:I

    invoke-virtual {v15, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1e
    :goto_6
    move-object/from16 v5, v20

    goto :goto_5

    :cond_1f
    move-object/from16 v20, v5

    .line 5
    new-instance v5, Lb/g/c/a/c$b;

    invoke-direct {v5, v14, v15}, Lb/g/c/a/c$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object v2, v5

    move-object/from16 v3, v17

    move-object/from16 v5, v21

    move-object/from16 v17, v16

    goto/16 :goto_e

    :cond_20
    move-object/from16 v20, v5

    .line 6
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_7
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    :goto_8
    move-object/from16 v7, v27

    move-object/from16 v6, v28

    :goto_9
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_b

    :sswitch_0
    const-string v5, "waveOffset"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_7

    :cond_21
    const/16 v5, 0xf

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xf

    goto/16 :goto_c

    :sswitch_1
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_7

    :cond_22
    const/16 v5, 0xe

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xe

    goto/16 :goto_c

    :sswitch_2
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_7

    :cond_23
    const/16 v5, 0xd

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xd

    goto/16 :goto_c

    :sswitch_3
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_7

    :cond_24
    const/16 v5, 0xc

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xc

    goto/16 :goto_c

    :sswitch_4
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto/16 :goto_7

    :cond_25
    const/16 v5, 0xb

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xb

    goto/16 :goto_c

    :sswitch_5
    const-string v5, "transformPivotY"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto/16 :goto_7

    :cond_26
    const/16 v5, 0xa

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xa

    goto/16 :goto_c

    :sswitch_6
    const-string v5, "transformPivotX"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    goto/16 :goto_7

    :cond_27
    const/16 v5, 0x9

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x9

    goto/16 :goto_c

    :sswitch_7
    const-string v5, "waveVariesBy"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    goto/16 :goto_7

    :cond_28
    const/16 v5, 0x8

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x8

    goto/16 :goto_c

    :sswitch_8
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    goto/16 :goto_7

    :cond_29
    const/4 v5, 0x7

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x7

    goto/16 :goto_c

    :sswitch_9
    move-object/from16 v5, v21

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    goto/16 :goto_8

    :cond_2a
    const/4 v6, 0x6

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x6

    goto/16 :goto_c

    :sswitch_a
    move-object/from16 v5, v21

    move-object/from16 v6, v28

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v7, v27

    goto/16 :goto_9

    :cond_2b
    const/4 v7, 0x5

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v7, v27

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x5

    goto/16 :goto_c

    :sswitch_b
    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2c

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    goto/16 :goto_9

    :cond_2c
    const/4 v12, 0x4

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x4

    goto/16 :goto_c

    :sswitch_c
    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2d

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move-object/from16 v15, v18

    :goto_a
    move-object/from16 v18, v2

    move-object/from16 v2, v16

    goto/16 :goto_b

    :cond_2d
    const/4 v15, 0x3

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move-object/from16 v15, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    const/16 v16, 0x3

    goto/16 :goto_c

    :sswitch_d
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2e

    goto/16 :goto_9

    :cond_2e
    const/16 v18, 0x2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x2

    goto :goto_c

    :sswitch_e
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2f

    goto :goto_a

    :cond_2f
    const/16 v17, 0x1

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    const/16 v16, 0x1

    goto :goto_c

    :sswitch_f
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_30

    goto :goto_b

    :cond_30
    const/16 v16, 0x0

    goto :goto_c

    :goto_b
    const/16 v16, -0x1

    :goto_c
    packed-switch v16, :pswitch_data_0

    const/16 v16, 0x0

    goto/16 :goto_d

    :pswitch_0
    new-instance v16, Lb/g/c/a/c$a;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$a;-><init>()V

    goto :goto_d

    :pswitch_1
    new-instance v16, Lb/g/c/a/c$a;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$a;-><init>()V

    goto :goto_d

    :pswitch_2
    new-instance v16, Lb/g/c/a/c$d;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$d;-><init>()V

    goto :goto_d

    :pswitch_3
    new-instance v16, Lb/g/c/a/c$c;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$c;-><init>()V

    goto :goto_d

    :pswitch_4
    new-instance v16, Lb/g/c/a/c$h;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$h;-><init>()V

    goto :goto_d

    :pswitch_5
    new-instance v16, Lb/g/c/a/c$f;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$f;-><init>()V

    goto :goto_d

    :pswitch_6
    new-instance v16, Lb/g/c/a/c$e;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$e;-><init>()V

    goto :goto_d

    :pswitch_7
    new-instance v16, Lb/g/c/a/c$a;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$a;-><init>()V

    goto :goto_d

    :pswitch_8
    new-instance v16, Lb/g/c/a/c$l;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$l;-><init>()V

    goto :goto_d

    :pswitch_9
    new-instance v16, Lb/g/c/a/c$k;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$k;-><init>()V

    goto :goto_d

    :pswitch_a
    new-instance v16, Lb/g/c/a/c$g;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$g;-><init>()V

    goto :goto_d

    :pswitch_b
    new-instance v16, Lb/g/c/a/c$o;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$o;-><init>()V

    goto :goto_d

    :pswitch_c
    new-instance v16, Lb/g/c/a/c$n;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$n;-><init>()V

    goto :goto_d

    :pswitch_d
    new-instance v16, Lb/g/c/a/c$m;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$m;-><init>()V

    goto :goto_d

    :pswitch_e
    new-instance v16, Lb/g/c/a/c$j;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$j;-><init>()V

    goto :goto_d

    :pswitch_f
    new-instance v16, Lb/g/c/a/c$i;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/c$i;-><init>()V

    :goto_d
    move-object/from16 v17, v2

    move-object/from16 v2, v16

    :goto_e
    if-nez v2, :cond_31

    const/4 v2, 0x1

    move-object/from16 v21, v5

    move-object/from16 v28, v6

    move-object/from16 v27, v7

    move-object/from16 v16, v17

    move-object/from16 v2, v18

    move-object/from16 v5, v20

    move-object/from16 v17, v3

    move-object/from16 v18, v15

    move-object/from16 v3, v19

    move-object/from16 v19, v12

    const/4 v12, 0x1

    goto/16 :goto_4

    .line 7
    :cond_31
    iput-object v14, v2, Lb/g/a/h/a/j;->e:Ljava/lang/String;

    move-object/from16 v16, v3

    .line 8
    iget-object v3, v0, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    move-object/from16 v21, v5

    move-object/from16 v28, v6

    move-object/from16 v27, v7

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v19, v12

    move-object/from16 v18, v15

    const/4 v12, 0x1

    move-object/from16 v32, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v32

    goto/16 :goto_4

    :cond_32
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v32, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v32

    iget-object v2, v0, Lb/g/c/b/n;->w:Ljava/util/ArrayList;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/b/d;

    instance-of v14, v3, Lb/g/c/b/e;

    if-eqz v14, :cond_33

    iget-object v14, v0, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Lb/g/c/b/d;->a(Ljava/util/HashMap;)V

    goto :goto_f

    :cond_34
    iget-object v2, v0, Lb/g/c/b/n;->g:Lb/g/c/b/l;

    iget-object v3, v0, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Lb/g/c/b/l;->a(Ljava/util/HashMap;I)V

    iget-object v2, v0, Lb/g/c/b/n;->h:Lb/g/c/b/l;

    iget-object v3, v0, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    const/16 v14, 0x64

    invoke-virtual {v2, v3, v14}, Lb/g/c/b/l;->a(Ljava/util/HashMap;I)V

    iget-object v2, v0, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_35

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_35

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_11

    :cond_35
    const/4 v14, 0x0

    :goto_11
    move-object/from16 v20, v2

    iget-object v2, v0, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/h/a/j;

    if-eqz v2, :cond_36

    invoke-virtual {v2, v14}, Lb/g/a/h/a/j;->c(I)V

    :cond_36
    move-object/from16 v2, v20

    goto :goto_10

    :cond_37
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v32, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v32

    :cond_38
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_60

    iget-object v2, v0, Lb/g/c/b/n;->x:Ljava/util/HashMap;

    if-nez v2, :cond_39

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lb/g/c/b/n;->x:Ljava/util/HashMap;

    :cond_39
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lb/g/c/b/n;->x:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_12

    :cond_3a
    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x1

    aget-object v14, v14, v20

    move-object/from16 v20, v1

    iget-object v1, v0, Lb/g/c/b/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v1

    move-object/from16 v1, v21

    check-cast v1, Lb/g/c/b/d;

    move-object/from16 v21, v4

    iget-object v4, v1, Lb/g/c/b/d;->e:Ljava/util/HashMap;

    if-nez v4, :cond_3b

    goto :goto_14

    :cond_3b
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/d/a;

    if-eqz v4, :cond_3c

    iget v1, v1, Lb/g/c/b/d;->a:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_3c
    :goto_14
    move-object/from16 v4, v21

    move-object/from16 v1, v22

    goto :goto_13

    :cond_3d
    move-object/from16 v21, v4

    .line 9
    new-instance v1, Lb/g/c/a/d$b;

    invoke-direct {v1, v2, v3}, Lb/g/c/a/d$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object v4, v1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v16, v15

    move-wide/from16 v14, p3

    goto/16 :goto_1a

    :cond_3e
    move-object/from16 v20, v1

    move-object/from16 v21, v4

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_15
    move-object/from16 v1, v16

    :goto_16
    move-object/from16 v3, v17

    goto/16 :goto_17

    :sswitch_10
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_15

    :cond_3f
    const/16 v1, 0xb

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v4, 0xb

    goto/16 :goto_18

    :sswitch_11
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_15

    :cond_40
    const/16 v1, 0xa

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v4, 0xa

    goto/16 :goto_18

    :sswitch_12
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_15

    :cond_41
    const/16 v1, 0x9

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v4, 0x9

    goto/16 :goto_18

    :sswitch_13
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_15

    :cond_42
    const/16 v1, 0x8

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v4, 0x8

    goto/16 :goto_18

    :sswitch_14
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_15

    :cond_43
    const/4 v1, 0x7

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x7

    goto/16 :goto_18

    :sswitch_15
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_15

    :cond_44
    const/4 v1, 0x6

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x6

    goto/16 :goto_18

    :sswitch_16
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_15

    :cond_45
    const/4 v1, 0x5

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x5

    goto :goto_18

    :sswitch_17
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_15

    :cond_46
    const/4 v1, 0x4

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x4

    goto :goto_18

    :sswitch_18
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto/16 :goto_15

    :cond_47
    const/4 v1, 0x3

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x3

    goto :goto_18

    :sswitch_19
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto/16 :goto_15

    :cond_48
    const/4 v1, 0x2

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x2

    goto :goto_18

    :sswitch_1a
    move-object/from16 v1, v16

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto/16 :goto_16

    :cond_49
    const/4 v3, 0x1

    move-object/from16 v3, v17

    const/4 v4, 0x1

    goto :goto_18

    :sswitch_1b
    move-object/from16 v1, v16

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_17

    :cond_4a
    const/4 v4, 0x0

    goto :goto_18

    :goto_17
    const/4 v4, -0x1

    :goto_18
    packed-switch v4, :pswitch_data_1

    move-object/from16 v16, v15

    move-wide/from16 v14, p3

    const/4 v4, 0x0

    goto :goto_1a

    :pswitch_10
    new-instance v4, Lb/g/c/a/d$a;

    invoke-direct {v4}, Lb/g/c/a/d$a;-><init>()V

    goto :goto_19

    :pswitch_11
    new-instance v4, Lb/g/c/a/d$d;

    invoke-direct {v4}, Lb/g/c/a/d$d;-><init>()V

    goto :goto_19

    :pswitch_12
    new-instance v4, Lb/g/c/a/d$c;

    invoke-direct {v4}, Lb/g/c/a/d$c;-><init>()V

    goto :goto_19

    :pswitch_13
    new-instance v4, Lb/g/c/a/d$f;

    invoke-direct {v4}, Lb/g/c/a/d$f;-><init>()V

    goto :goto_19

    :pswitch_14
    new-instance v4, Lb/g/c/a/d$j;

    invoke-direct {v4}, Lb/g/c/a/d$j;-><init>()V

    goto :goto_19

    :pswitch_15
    new-instance v4, Lb/g/c/a/d$i;

    invoke-direct {v4}, Lb/g/c/a/d$i;-><init>()V

    goto :goto_19

    :pswitch_16
    new-instance v4, Lb/g/c/a/d$e;

    invoke-direct {v4}, Lb/g/c/a/d$e;-><init>()V

    goto :goto_19

    :pswitch_17
    new-instance v4, Lb/g/c/a/d$m;

    invoke-direct {v4}, Lb/g/c/a/d$m;-><init>()V

    goto :goto_19

    :pswitch_18
    new-instance v4, Lb/g/c/a/d$l;

    invoke-direct {v4}, Lb/g/c/a/d$l;-><init>()V

    goto :goto_19

    :pswitch_19
    new-instance v4, Lb/g/c/a/d$k;

    invoke-direct {v4}, Lb/g/c/a/d$k;-><init>()V

    goto :goto_19

    :pswitch_1a
    new-instance v4, Lb/g/c/a/d$h;

    invoke-direct {v4}, Lb/g/c/a/d$h;-><init>()V

    goto :goto_19

    :pswitch_1b
    new-instance v4, Lb/g/c/a/d$g;

    invoke-direct {v4}, Lb/g/c/a/d$g;-><init>()V

    :goto_19
    move-object/from16 v16, v15

    move-wide/from16 v14, p3

    .line 11
    iput-wide v14, v4, Lb/g/a/h/a/o;->i:J

    :goto_1a
    if-nez v4, :cond_4b

    goto :goto_1b

    .line 12
    :cond_4b
    iput-object v2, v4, Lb/g/a/h/a/o;->f:Ljava/lang/String;

    .line 13
    iget-object v14, v0, Lb/g/c/b/n;->x:Ljava/util/HashMap;

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    move-object/from16 v17, v3

    move-object/from16 v15, v16

    move-object/from16 v4, v21

    move-object/from16 v16, v1

    move-object/from16 v1, v20

    goto/16 :goto_12

    :cond_4c
    move-object/from16 v21, v4

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v16, v15

    iget-object v2, v0, Lb/g/c/b/n;->w:Ljava/util/ArrayList;

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/b/d;

    instance-of v14, v4, Lb/g/c/b/j;

    if-eqz v14, :cond_5d

    check-cast v4, Lb/g/c/b/j;

    iget-object v14, v0, Lb/g/c/b/n;->x:Ljava/util/HashMap;

    .line 14
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p3, v2

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v22, v17

    check-cast v22, Lb/g/c/a/d;

    if-nez v22, :cond_4d

    move-object/from16 v2, p3

    goto :goto_1d

    :cond_4d
    move-object/from16 v17, v14

    const-string v14, "CUSTOM"

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4f

    const/4 v14, 0x7

    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v14, v4, Lb/g/c/b/d;->e:Ljava/util/HashMap;

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/d/a;

    if-eqz v2, :cond_4e

    move-object/from16 v14, v22

    check-cast v14, Lb/g/c/a/d$b;

    move-object/from16 p4, v15

    iget v15, v4, Lb/g/c/b/d;->a:I

    iget v0, v4, Lb/g/c/b/j;->u:F

    move-object/from16 v20, v3

    iget v3, v4, Lb/g/c/b/j;->t:I

    move-object/from16 v28, v1

    iget v1, v4, Lb/g/c/b/j;->v:F

    move-object/from16 v29, v4

    .line 15
    iget-object v4, v14, Lb/g/c/a/d$b;->l:Landroid/util/SparseArray;

    invoke-virtual {v4, v15, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, v14, Lb/g/c/a/d$b;->m:Landroid/util/SparseArray;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/16 v22, 0x0

    aput v0, v4, v22

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-virtual {v2, v15, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget v0, v14, Lb/g/a/h/a/o;->b:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v14, Lb/g/a/h/a/o;->b:I

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v15, p4

    move-object/from16 v14, v17

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    move-object/from16 v4, v29

    goto :goto_1d

    :cond_4e
    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v14, v17

    goto :goto_1d

    :cond_4f
    move-object/from16 v28, v1

    move-object/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 p4, v15

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    :goto_1e
    move-object/from16 v0, v16

    :goto_1f
    move-object/from16 v3, v20

    move-object/from16 v1, v28

    goto/16 :goto_22

    :sswitch_1c
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_1e

    :cond_50
    const/16 v0, 0xb

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/16 v4, 0xb

    goto/16 :goto_23

    :sswitch_1d
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_1e

    :cond_51
    const/16 v0, 0xa

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/16 v4, 0xa

    goto/16 :goto_23

    :sswitch_1e
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_1e

    :cond_52
    const/16 v0, 0x9

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/16 v4, 0x9

    goto/16 :goto_23

    :sswitch_1f
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_1e

    :cond_53
    const/16 v0, 0x8

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/16 v4, 0x8

    goto/16 :goto_23

    :sswitch_20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_1e

    :cond_54
    const/4 v0, 0x7

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x7

    goto/16 :goto_23

    :sswitch_21
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_1e

    :cond_55
    const/4 v0, 0x6

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x6

    goto/16 :goto_23

    :sswitch_22
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_1e

    :cond_56
    const/4 v0, 0x5

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x5

    goto/16 :goto_23

    :sswitch_23
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_20

    :cond_57
    const/4 v0, 0x4

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x4

    goto :goto_23

    :sswitch_24
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    :goto_20
    move-object/from16 v0, v16

    goto :goto_21

    :cond_58
    const/4 v0, 0x3

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x3

    goto :goto_23

    :sswitch_25
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    :goto_21
    goto/16 :goto_1f

    :cond_59
    const/4 v1, 0x2

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x2

    goto :goto_23

    :sswitch_26
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    move-object/from16 v3, v20

    goto :goto_22

    :cond_5a
    const/4 v3, 0x1

    move-object/from16 v3, v20

    const/4 v4, 0x1

    goto :goto_23

    :sswitch_27
    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_22

    :cond_5b
    const/4 v4, 0x0

    goto :goto_23

    :goto_22
    const/4 v4, -0x1

    :goto_23
    packed-switch v4, :pswitch_data_2

    move-object/from16 v4, v29

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UNKNOWN addValues \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, "KeyTimeCycles"

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :pswitch_1c
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->h:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->h:F

    goto/16 :goto_24

    :pswitch_1d
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->m:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->m:F

    goto/16 :goto_24

    :pswitch_1e
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->i:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->i:F

    goto/16 :goto_24

    :pswitch_1f
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->j:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->j:F

    goto/16 :goto_24

    :pswitch_20
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->o:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->o:F

    goto/16 :goto_24

    :pswitch_21
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->n:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->n:F

    goto :goto_24

    :pswitch_22
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->s:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->s:F

    goto :goto_24

    :pswitch_23
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->r:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->r:F

    goto :goto_24

    :pswitch_24
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->q:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->q:F

    goto :goto_24

    :pswitch_25
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->p:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->p:F

    goto :goto_24

    :pswitch_26
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->l:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->l:F

    goto :goto_24

    :pswitch_27
    move-object/from16 v4, v29

    iget v2, v4, Lb/g/c/b/j;->k:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5c

    iget v2, v4, Lb/g/c/b/d;->a:I

    iget v14, v4, Lb/g/c/b/j;->k:F

    :goto_24
    move/from16 v23, v2

    move/from16 v24, v14

    iget v2, v4, Lb/g/c/b/j;->u:F

    iget v14, v4, Lb/g/c/b/j;->t:I

    iget v15, v4, Lb/g/c/b/j;->v:F

    move/from16 v25, v2

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Lb/g/a/h/a/o;->b(IFFIF)V

    :cond_5c
    :goto_25
    move-object/from16 v2, p3

    move-object/from16 v15, p4

    move-object/from16 v16, v0

    move-object/from16 v14, v17

    move-object/from16 v0, p0

    goto/16 :goto_1d

    :cond_5d
    move-object/from16 p3, v2

    move-object/from16 v0, v16

    move-object/from16 v2, p3

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    goto/16 :goto_1c

    :cond_5e
    move-object/from16 v0, v16

    move-object/from16 v2, p0

    .line 17
    iget-object v4, v2, Lb/g/c/b/n;->x:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v15, v21

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5f

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 p3, v4

    move-object/from16 v21, v15

    move/from16 v4, v16

    goto :goto_27

    :cond_5f
    const/16 v16, 0x0

    move-object/from16 p3, v4

    move-object/from16 v21, v15

    const/4 v4, 0x0

    :goto_27
    iget-object v15, v2, Lb/g/c/b/n;->x:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/g/c/a/d;

    invoke-virtual {v14, v4}, Lb/g/a/h/a/o;->c(I)V

    move-object/from16 v4, p3

    goto :goto_26

    :cond_60
    move-object v2, v0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    :cond_61
    iget-object v4, v2, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    new-array v14, v4, [Lb/g/c/b/p;

    iget-object v15, v2, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    add-int/lit8 v15, v4, -0x1

    move-object/from16 v16, v3

    iget-object v3, v2, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    aput-object v3, v14, v15

    iget-object v3, v2, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_62

    iget v3, v2, Lb/g/c/b/n;->d:I

    const/4 v15, -0x1

    if-ne v3, v15, :cond_62

    const/4 v3, 0x0

    iput v3, v2, Lb/g/c/b/n;->d:I

    :cond_62
    iget-object v3, v2, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v15, 0x1

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lb/g/c/b/p;

    add-int/lit8 v20, v15, 0x1

    aput-object v17, v14, v15

    move/from16 v15, v20

    goto :goto_28

    :cond_63
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v15, v2, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget-object v15, v15, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_29
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_66

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p3, v15

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v2, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v1, v1, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    const-string v0, "CUSTOM,"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_64
    move-object/from16 v20, v0

    move-object/from16 v1, v18

    :cond_65
    :goto_2a
    move-object/from16 v15, p3

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    move-object/from16 v0, v20

    goto :goto_29

    :cond_66
    move-object/from16 v20, v0

    move-object/from16 v17, v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v2, Lb/g/c/b/n;->q:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, v2, Lb/g/c/b/n;->r:[I

    const/4 v0, 0x0

    :goto_2b
    iget-object v1, v2, Lb/g/c/b/n;->q:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_69

    aget-object v1, v1, v0

    iget-object v3, v2, Lb/g/c/b/n;->r:[I

    const/4 v15, 0x0

    aput v15, v3, v0

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v4, :cond_68

    aget-object v15, v14, v3

    iget-object v15, v15, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_67

    aget-object v15, v14, v3

    iget-object v15, v15, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/g/d/a;

    if-eqz v15, :cond_67

    iget-object v1, v2, Lb/g/c/b/n;->r:[I

    aget v3, v1, v0

    invoke-virtual {v15}, Lb/g/d/a;->e()I

    move-result v15

    add-int/2addr v15, v3

    aput v15, v1, v0

    goto :goto_2d

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_68
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_69
    const/4 v0, 0x0

    aget-object v0, v14, v0

    iget v0, v0, Lb/g/c/b/p;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6a

    const/4 v0, 0x1

    goto :goto_2e

    :cond_6a
    const/4 v0, 0x0

    :goto_2e
    array-length v1, v1

    add-int/lit8 v1, v1, 0x12

    new-array v3, v1, [Z

    const/4 v15, 0x1

    :goto_2f
    if-ge v15, v4, :cond_6b

    move-object/from16 v18, v12

    aget-object v12, v14, v15

    add-int/lit8 v21, v15, -0x1

    move-object/from16 v27, v7

    aget-object v7, v14, v21

    move-object/from16 v28, v6

    .line 18
    iget v6, v12, Lb/g/c/b/p;->g:F

    move-object/from16 v21, v5

    iget v5, v7, Lb/g/c/b/p;->g:F

    invoke-virtual {v12, v6, v5}, Lb/g/c/b/p;->d(FF)Z

    move-result v5

    iget v6, v12, Lb/g/c/b/p;->h:F

    move-object/from16 v22, v13

    iget v13, v7, Lb/g/c/b/p;->h:F

    invoke-virtual {v12, v6, v13}, Lb/g/c/b/p;->d(FF)Z

    move-result v6

    const/4 v13, 0x0

    aget-boolean v13, v3, v13

    move-object/from16 v23, v10

    iget v10, v12, Lb/g/c/b/p;->f:F

    move-object/from16 v24, v9

    iget v9, v7, Lb/g/c/b/p;->f:F

    invoke-virtual {v12, v10, v9}, Lb/g/c/b/p;->d(FF)Z

    move-result v9

    or-int/2addr v9, v13

    const/4 v10, 0x0

    aput-boolean v9, v3, v10

    const/4 v9, 0x1

    aget-boolean v10, v3, v9

    or-int/2addr v5, v6

    or-int/2addr v5, v0

    or-int v6, v10, v5

    aput-boolean v6, v3, v9

    const/4 v6, 0x2

    aget-boolean v9, v3, v6

    or-int/2addr v5, v9

    aput-boolean v5, v3, v6

    const/4 v5, 0x3

    aget-boolean v6, v3, v5

    iget v9, v12, Lb/g/c/b/p;->i:F

    iget v10, v7, Lb/g/c/b/p;->i:F

    invoke-virtual {v12, v9, v10}, Lb/g/c/b/p;->d(FF)Z

    move-result v9

    or-int/2addr v6, v9

    aput-boolean v6, v3, v5

    const/4 v5, 0x4

    aget-boolean v6, v3, v5

    iget v9, v12, Lb/g/c/b/p;->j:F

    iget v7, v7, Lb/g/c/b/p;->j:F

    invoke-virtual {v12, v9, v7}, Lb/g/c/b/p;->d(FF)Z

    move-result v7

    or-int/2addr v6, v7

    aput-boolean v6, v3, v5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v18

    move-object/from16 v5, v21

    move-object/from16 v13, v22

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    goto :goto_2f

    :cond_6b
    move-object/from16 v21, v5

    move-object/from16 v28, v6

    move-object/from16 v27, v7

    move-object/from16 v24, v9

    move-object/from16 v23, v10

    move-object/from16 v18, v12

    move-object/from16 v22, v13

    const/4 v0, 0x0

    const/4 v5, 0x1

    :goto_30
    if-ge v5, v1, :cond_6d

    .line 19
    aget-boolean v6, v3, v5

    if-eqz v6, :cond_6c

    add-int/lit8 v0, v0, 0x1

    :cond_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_6d
    new-array v5, v0, [I

    iput-object v5, v2, Lb/g/c/b/n;->n:[I

    const/4 v5, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v5, v0, [D

    iput-object v5, v2, Lb/g/c/b/n;->o:[D

    new-array v0, v0, [D

    iput-object v0, v2, Lb/g/c/b/n;->p:[D

    const/4 v0, 0x0

    const/4 v5, 0x1

    :goto_31
    if-ge v5, v1, :cond_6f

    aget-boolean v6, v3, v5

    if-eqz v6, :cond_6e

    iget-object v6, v2, Lb/g/c/b/n;->n:[I

    add-int/lit8 v7, v0, 0x1

    aput v5, v6, v0

    move v0, v7

    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_6f
    iget-object v0, v2, Lb/g/c/b/n;->n:[I

    array-length v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x1

    aput v0, v1, v3

    const/4 v0, 0x0

    aput v4, v1, v0

    const-class v0, D

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    new-array v1, v4, [D

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v4, :cond_72

    aget-object v5, v14, v3

    aget-object v6, v0, v3

    iget-object v7, v2, Lb/g/c/b/n;->n:[I

    const/4 v9, 0x6

    new-array v9, v9, [F

    .line 20
    iget v10, v5, Lb/g/c/b/p;->f:F

    const/4 v12, 0x0

    aput v10, v9, v12

    iget v10, v5, Lb/g/c/b/p;->g:F

    const/4 v12, 0x1

    aput v10, v9, v12

    iget v10, v5, Lb/g/c/b/p;->h:F

    const/4 v12, 0x2

    aput v10, v9, v12

    iget v10, v5, Lb/g/c/b/p;->i:F

    const/4 v12, 0x3

    aput v10, v9, v12

    iget v10, v5, Lb/g/c/b/p;->j:F

    const/4 v13, 0x4

    aput v10, v9, v13

    iget v5, v5, Lb/g/c/b/p;->k:F

    const/4 v10, 0x5

    aput v5, v9, v10

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_33
    array-length v15, v7

    if-ge v5, v15, :cond_71

    aget v15, v7, v5

    const/4 v12, 0x6

    if-ge v15, v12, :cond_70

    add-int/lit8 v12, v10, 0x1

    aget v15, v7, v5

    aget v15, v9, v15

    move-object/from16 v25, v14

    float-to-double v13, v15

    aput-wide v13, v6, v10

    move v10, v12

    goto :goto_34

    :cond_70
    move-object/from16 v25, v14

    :goto_34
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v14, v25

    const/4 v12, 0x3

    const/4 v13, 0x4

    goto :goto_33

    :cond_71
    move-object/from16 v25, v14

    .line 21
    aget-object v5, v25, v3

    iget v5, v5, Lb/g/c/b/p;->e:F

    float-to-double v5, v5

    aput-wide v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_72
    move-object/from16 v25, v14

    const/4 v3, 0x0

    :goto_35
    iget-object v5, v2, Lb/g/c/b/n;->n:[I

    array-length v6, v5

    if-ge v3, v6, :cond_74

    aget v5, v5, v3

    sget-object v6, Lb/g/c/b/p;->t:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_73

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lb/g/c/b/p;->t:[Ljava/lang/String;

    iget-object v7, v2, Lb/g/c/b/n;->n:[I

    aget v7, v7, v3

    aget-object v6, v6, v7

    const-string v7, " ["

    invoke-static {v5, v6, v7}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_36
    if-ge v6, v4, :cond_73

    invoke-static {v5}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v0, v6

    aget-wide v9, v7, v3

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_74
    iget-object v3, v2, Lb/g/c/b/n;->q:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lb/g/a/h/a/b;

    iput-object v3, v2, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    const/4 v3, 0x0

    :goto_37
    iget-object v5, v2, Lb/g/c/b/n;->q:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_7c

    aget-object v5, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_38
    if-ge v6, v4, :cond_7b

    aget-object v12, v25, v6

    .line 22
    iget-object v12, v12, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7a

    if-nez v10, :cond_76

    .line 23
    new-array v9, v4, [D

    aget-object v10, v25, v6

    .line 24
    iget-object v10, v10, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/g/d/a;

    if-nez v10, :cond_75

    const/4 v10, 0x0

    goto :goto_39

    :cond_75
    invoke-virtual {v10}, Lb/g/d/a;->e()I

    move-result v10

    :goto_39
    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x1

    aput v10, v12, v13

    const/4 v10, 0x0

    aput v4, v12, v10

    .line 25
    const-class v10, D

    invoke-static {v10, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    :cond_76
    aget-object v12, v25, v6

    iget v12, v12, Lb/g/c/b/p;->e:F

    float-to-double v12, v12

    aput-wide v12, v9, v7

    aget-object v12, v25, v6

    aget-object v13, v10, v7

    .line 26
    iget-object v12, v12, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb/g/d/a;

    if-nez v12, :cond_78

    :cond_77
    :goto_3a
    move-object/from16 p1, v5

    move-object/from16 p2, v9

    move-object/from16 p3, v10

    goto :goto_3c

    :cond_78
    invoke-virtual {v12}, Lb/g/d/a;->e()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_79

    invoke-virtual {v12}, Lb/g/d/a;->b()F

    move-result v12

    float-to-double v14, v12

    const/4 v12, 0x0

    aput-wide v14, v13, v12

    goto :goto_3a

    :cond_79
    invoke-virtual {v12}, Lb/g/d/a;->e()I

    move-result v14

    new-array v15, v14, [F

    invoke-virtual {v12, v15}, Lb/g/d/a;->c([F)V

    const/4 v12, 0x0

    const/16 v26, 0x0

    :goto_3b
    if-ge v12, v14, :cond_77

    add-int/lit8 v29, v26, 0x1

    move-object/from16 p1, v5

    aget v5, v15, v12

    move-object/from16 p2, v9

    move-object/from16 p3, v10

    float-to-double v9, v5

    aput-wide v9, v13, v26

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v26, v29

    goto :goto_3b

    :goto_3c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    goto :goto_3d

    :cond_7a
    move-object/from16 p1, v5

    :goto_3d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, p1

    goto/16 :goto_38

    .line 27
    :cond_7b
    invoke-static {v9, v7}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v5

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    iget-object v7, v2, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    add-int/lit8 v3, v3, 0x1

    iget v9, v2, Lb/g/c/b/n;->d:I

    invoke-static {v9, v5, v6}, Lb/g/a/h/a/b;->a(I[D[[D)Lb/g/a/h/a/b;

    move-result-object v5

    aput-object v5, v7, v3

    goto/16 :goto_37

    :cond_7c
    iget-object v3, v2, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    iget v5, v2, Lb/g/c/b/n;->d:I

    invoke-static {v5, v1, v0}, Lb/g/a/h/a/b;->a(I[D[[D)Lb/g/a/h/a/b;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    aget-object v0, v25, v1

    iget v0, v0, Lb/g/c/b/p;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7e

    new-array v0, v4, [I

    new-array v3, v4, [D

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    aput v4, v6, v1

    const-class v1, D

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v5, 0x0

    :goto_3e
    if-ge v5, v4, :cond_7d

    aget-object v6, v25, v5

    iget v6, v6, Lb/g/c/b/p;->l:I

    aput v6, v0, v5

    aget-object v6, v25, v5

    iget v6, v6, Lb/g/c/b/p;->e:F

    float-to-double v6, v6

    aput-wide v6, v3, v5

    aget-object v6, v1, v5

    aget-object v7, v25, v5

    iget v7, v7, Lb/g/c/b/p;->g:F

    float-to-double v9, v7

    const/4 v7, 0x0

    aput-wide v9, v6, v7

    aget-object v6, v1, v5

    aget-object v7, v25, v5

    iget v7, v7, Lb/g/c/b/p;->h:F

    float-to-double v9, v7

    const/4 v7, 0x1

    aput-wide v9, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 28
    :cond_7d
    new-instance v4, Lb/g/a/h/a/a;

    invoke-direct {v4, v0, v3, v1}, Lb/g/a/h/a/a;-><init>([I[D[[D)V

    .line 29
    iput-object v4, v2, Lb/g/c/b/n;->j:Lb/g/a/h/a/b;

    :cond_7e
    const/high16 v0, 0x7fc00000    # Float.NaN

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v2, Lb/g/c/b/n;->z:Ljava/util/HashMap;

    iget-object v1, v2, Lb/g/c/b/n;->w:Ljava/util/ArrayList;

    if-eqz v1, :cond_9b

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CUSTOM"

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    new-instance v4, Lb/g/c/a/b$b;

    invoke-direct {v4}, Lb/g/c/a/b$b;-><init>()V

    move-object/from16 p1, v1

    move-object v1, v4

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    goto/16 :goto_4a

    :cond_7f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3

    :goto_40
    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    :goto_41
    move-object/from16 v10, v27

    move-object/from16 v9, v28

    goto/16 :goto_47

    :sswitch_28
    const-string v4, "waveOffset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    goto :goto_40

    :cond_80
    const/16 v4, 0xd

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    const/16 v16, 0xd

    goto/16 :goto_48

    :sswitch_29
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    goto :goto_42

    :cond_81
    const/16 v4, 0xc

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    const/16 v16, 0xc

    goto/16 :goto_48

    :sswitch_2a
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    :goto_42
    goto :goto_40

    :cond_82
    const/16 v4, 0xb

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    const/16 v16, 0xb

    goto/16 :goto_48

    :sswitch_2b
    move-object/from16 v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    goto/16 :goto_41

    :cond_83
    const/16 v5, 0xa

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    const/16 v16, 0xa

    goto/16 :goto_48

    :sswitch_2c
    move-object/from16 v5, v23

    move-object/from16 v4, v24

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_84

    goto :goto_43

    :cond_84
    const/16 v6, 0x9

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    const/16 v16, 0x9

    goto/16 :goto_48

    :sswitch_2d
    move-object/from16 v5, v23

    move-object/from16 v4, v24

    const-string v6, "waveVariesBy"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    :goto_43
    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    goto/16 :goto_41

    :cond_85
    const/16 v6, 0x8

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    const/16 v16, 0x8

    goto/16 :goto_48

    :sswitch_2e
    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    move-object/from16 v7, v21

    goto :goto_44

    :cond_86
    const/4 v7, 0x7

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    const/16 v16, 0x7

    goto/16 :goto_48

    :sswitch_2f
    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_87

    :goto_44
    move-object/from16 v9, v28

    goto :goto_45

    :cond_87
    const/4 v9, 0x6

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    const/16 v16, 0x6

    goto/16 :goto_48

    :sswitch_30
    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v9, v28

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_88

    :goto_45
    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v10, v27

    goto/16 :goto_47

    :cond_88
    const/4 v10, 0x5

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v10, v27

    const/16 v16, 0x5

    goto/16 :goto_48

    :sswitch_31
    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_89

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    goto :goto_46

    :cond_89
    const/4 v12, 0x4

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    const/16 v16, 0x4

    goto/16 :goto_48

    :sswitch_32
    move-object/from16 v12, v18

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8a

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    :goto_46
    move-object/from16 v13, v20

    goto/16 :goto_47

    :cond_8a
    const/4 v13, 0x3

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v13, v20

    const/16 v16, 0x3

    goto/16 :goto_48

    :sswitch_33
    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8b

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    goto :goto_47

    :cond_8b
    const/4 v14, 0x2

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    const/16 v16, 0x2

    goto :goto_48

    :sswitch_34
    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8c

    move-object/from16 v15, v16

    goto :goto_47

    :cond_8c
    const/4 v15, 0x1

    move-object/from16 v15, v16

    const/16 v16, 0x1

    goto :goto_48

    :sswitch_35
    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8d

    goto :goto_47

    :cond_8d
    const/16 v16, 0x0

    goto :goto_48

    :goto_47
    const/16 v16, -0x1

    :goto_48
    packed-switch v16, :pswitch_data_3

    const/16 v16, 0x0

    :goto_49
    move-object/from16 p1, v1

    move-object/from16 v1, v16

    goto :goto_4a

    :pswitch_28
    new-instance v16, Lb/g/c/a/b$a;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$a;-><init>()V

    goto :goto_49

    :pswitch_29
    new-instance v16, Lb/g/c/a/b$a;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$a;-><init>()V

    goto :goto_49

    :pswitch_2a
    new-instance v16, Lb/g/c/a/b$d;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$d;-><init>()V

    goto :goto_49

    :pswitch_2b
    new-instance v16, Lb/g/c/a/b$c;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$c;-><init>()V

    goto :goto_49

    :pswitch_2c
    new-instance v16, Lb/g/c/a/b$f;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$f;-><init>()V

    goto :goto_49

    :pswitch_2d
    new-instance v16, Lb/g/c/a/b$a;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$a;-><init>()V

    goto :goto_49

    :pswitch_2e
    new-instance v16, Lb/g/c/a/b$j;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$j;-><init>()V

    goto :goto_49

    :pswitch_2f
    new-instance v16, Lb/g/c/a/b$i;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$i;-><init>()V

    goto :goto_49

    :pswitch_30
    new-instance v16, Lb/g/c/a/b$e;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$e;-><init>()V

    goto :goto_49

    :pswitch_31
    new-instance v16, Lb/g/c/a/b$m;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$m;-><init>()V

    goto :goto_49

    :pswitch_32
    new-instance v16, Lb/g/c/a/b$l;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$l;-><init>()V

    goto :goto_49

    :pswitch_33
    new-instance v16, Lb/g/c/a/b$k;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$k;-><init>()V

    goto :goto_49

    :pswitch_34
    new-instance v16, Lb/g/c/a/b$h;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$h;-><init>()V

    goto :goto_49

    :pswitch_35
    new-instance v16, Lb/g/c/a/b$g;

    invoke-direct/range {v16 .. v16}, Lb/g/c/a/b$g;-><init>()V

    goto :goto_49

    :goto_4a
    if-nez v1, :cond_8e

    move-object/from16 v1, p1

    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v21, v7

    move-object/from16 v28, v9

    move-object/from16 v27, v10

    move-object/from16 v18, v12

    move-object/from16 v20, v13

    move-object/from16 v17, v14

    move-object/from16 v16, v15

    goto/16 :goto_3f

    :cond_8e
    move-object/from16 v24, v4

    .line 31
    iget v4, v1, Lb/g/a/h/a/e;->e:I

    move-object/from16 v23, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8f

    const/4 v4, 0x1

    goto :goto_4b

    :cond_8f
    const/4 v4, 0x0

    :goto_4b
    if-eqz v4, :cond_97

    .line 32
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_97

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/16 v4, 0x63

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    const-wide/16 v16, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object/from16 v29, v6

    move-object/from16 p2, v7

    move-wide/from16 v25, v16

    move-wide/from16 v27, v25

    const/4 v6, 0x0

    :goto_4c
    const/16 v7, 0x64

    if-ge v6, v7, :cond_96

    int-to-float v7, v6

    mul-float v7, v7, v5

    move-object/from16 v30, v8

    move-object/from16 p3, v9

    float-to-double v8, v7

    move/from16 p4, v5

    .line 33
    iget-object v5, v2, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v5, v5, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    move-object/from16 v16, v5

    iget-object v5, v2, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/high16 v17, 0x7fc00000    # Float.NaN

    const/16 v18, 0x0

    move-wide/from16 v19, v8

    move-object/from16 v8, v16

    :goto_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_92

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/g/c/b/p;

    move-object/from16 v16, v5

    iget-object v5, v9, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    if-eqz v5, :cond_91

    move-object/from16 v21, v5

    iget v5, v9, Lb/g/c/b/p;->e:F

    cmpg-float v22, v5, v7

    if-gez v22, :cond_90

    move/from16 v18, v5

    move-object/from16 v8, v21

    goto :goto_4e

    :cond_90
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_91

    iget v5, v9, Lb/g/c/b/p;->e:F

    move/from16 v17, v5

    :cond_91
    :goto_4e
    move-object/from16 v5, v16

    goto :goto_4d

    :cond_92
    if-eqz v8, :cond_94

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_93

    const/high16 v17, 0x3f800000    # 1.0f

    :cond_93
    sub-float v7, v7, v18

    sub-float v17, v17, v18

    div-float v7, v7, v17

    move-object v5, v10

    float-to-double v9, v7

    invoke-virtual {v8, v9, v10}, Lb/g/a/h/a/c;->a(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, v17

    add-float v7, v7, v18

    float-to-double v7, v7

    goto :goto_4f

    :cond_94
    move-object v5, v10

    move-wide/from16 v7, v19

    :goto_4f
    iget-object v9, v2, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v10, v2, Lb/g/c/b/n;->o:[D

    invoke-virtual {v9, v7, v8, v10}, Lb/g/a/h/a/b;->c(D[D)V

    iget-object v9, v2, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v10, v2, Lb/g/c/b/n;->n:[I

    move-object/from16 v31, v5

    iget-object v5, v2, Lb/g/c/b/n;->o:[D

    const/16 v22, 0x0

    move-object/from16 v16, v9

    move-wide/from16 v17, v7

    move-object/from16 v19, v10

    move-object/from16 v20, v5

    move-object/from16 v21, v0

    invoke-virtual/range {v16 .. v22}, Lb/g/c/b/p;->e(D[I[D[FI)V

    if-lez v6, :cond_95

    float-to-double v4, v4

    const/4 v7, 0x1

    aget v7, v0, v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v7, v25, v7

    const/4 v9, 0x0

    aget v9, v0, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v9, v27, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v4

    double-to-float v4, v7

    :cond_95
    const/4 v5, 0x0

    aget v5, v0, v5

    float-to-double v7, v5

    const/4 v5, 0x1

    aget v5, v0, v5

    float-to-double v9, v5

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p4

    move-wide/from16 v27, v7

    move-wide/from16 v25, v9

    move-object/from16 v8, v30

    move-object/from16 v10, v31

    move-object/from16 v9, p3

    goto/16 :goto_4c

    :cond_96
    move-object/from16 v30, v8

    move-object/from16 p3, v9

    move-object/from16 v31, v10

    move v0, v4

    goto :goto_50

    :cond_97
    move-object/from16 v29, v6

    move-object/from16 p2, v7

    move-object/from16 v30, v8

    move-object/from16 p3, v9

    move-object/from16 v31, v10

    .line 34
    :goto_50
    iput-object v3, v1, Lb/g/a/h/a/e;->b:Ljava/lang/String;

    .line 35
    iget-object v4, v2, Lb/g/c/b/n;->z:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object/from16 v21, p2

    move-object/from16 v28, p3

    move-object/from16 v18, v12

    move-object/from16 v20, v13

    move-object/from16 v17, v14

    move-object/from16 v16, v15

    move-object/from16 v22, v29

    move-object/from16 v8, v30

    move-object/from16 v27, v31

    goto/16 :goto_3f

    :cond_98
    iget-object v1, v2, Lb/g/c/b/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_99
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/b/d;

    instance-of v4, v3, Lb/g/c/b/f;

    if-eqz v4, :cond_99

    check-cast v3, Lb/g/c/b/f;

    iget-object v4, v2, Lb/g/c/b/n;->z:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lb/g/c/b/f;->i(Ljava/util/HashMap;)V

    goto :goto_51

    :cond_9a
    iget-object v1, v2, Lb/g/c/b/n;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/a/b;

    invoke-virtual {v3, v0}, Lb/g/a/h/a/e;->d(F)V

    goto :goto_52

    :cond_9b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1b
        -0x4a771f65 -> :sswitch_1a
        -0x490b9c39 -> :sswitch_19
        -0x490b9c38 -> :sswitch_18
        -0x490b9c37 -> :sswitch_17
        -0x3bab3dd3 -> :sswitch_16
        -0x3621dfb2 -> :sswitch_15
        -0x3621dfb1 -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4a771f66 -> :sswitch_27
        -0x4a771f65 -> :sswitch_26
        -0x490b9c39 -> :sswitch_25
        -0x490b9c38 -> :sswitch_24
        -0x490b9c37 -> :sswitch_23
        -0x3bab3dd3 -> :sswitch_22
        -0x3621dfb2 -> :sswitch_21
        -0x3621dfb1 -> :sswitch_20
        -0x266f082 -> :sswitch_1f
        -0x42d1a3 -> :sswitch_1e
        0x2382115 -> :sswitch_1d
        0x589b15e -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x4a771f66 -> :sswitch_35
        -0x4a771f65 -> :sswitch_34
        -0x490b9c39 -> :sswitch_33
        -0x490b9c38 -> :sswitch_32
        -0x490b9c37 -> :sswitch_31
        -0x3bab3dd3 -> :sswitch_30
        -0x3621dfb2 -> :sswitch_2f
        -0x3621dfb1 -> :sswitch_2e
        -0x2f893320 -> :sswitch_2d
        -0x266f082 -> :sswitch_2c
        -0x42d1a3 -> :sswitch_2b
        0x2382115 -> :sswitch_2a
        0x589b15e -> :sswitch_29
        0x94e04ec -> :sswitch_28
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, " start: x: "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v1, v1, Lb/g/c/b/p;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v2, v2, Lb/g/c/b/p;->h:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v2, v2, Lb/g/c/b/p;->g:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v1, v1, Lb/g/c/b/p;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
