.class public Lc/c/b/a/j/j;
.super Lc/c/b/a/j/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/a/j/j$b;
    }
.end annotation


# instance fields
.field public h:Lc/c/b/a/g/a/g;

.field public i:Landroid/graphics/Paint;

.field public j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroid/graphics/Canvas;

.field public l:Landroid/graphics/Bitmap$Config;

.field public m:Landroid/graphics/Path;

.field public n:Landroid/graphics/Path;

.field public o:[F

.field public p:Landroid/graphics/Path;

.field public q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lc/c/b/a/g/b/e;",
            "Lc/c/b/a/j/j$b;",
            ">;"
        }
    .end annotation
.end field

.field public r:[F


# direct methods
.method public constructor <init>(Lc/c/b/a/g/a/g;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lc/c/b/a/j/k;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, p0, Lc/c/b/a/j/j;->l:Landroid/graphics/Bitmap$Config;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/j;->n:Landroid/graphics/Path;

    const/4 p2, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lc/c/b/a/j/j;->o:[F

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/j;->p:Landroid/graphics/Path;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/j;->q:Ljava/util/HashMap;

    const/4 p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lc/c/b/a/j/j;->r:[F

    iput-object p1, p0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/j;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lc/c/b/a/j/j;->i:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget v1, v0, Lc/c/b/a/k/j;->c:F

    float-to-int v1, v1

    .line 2
    iget v0, v0, Lc/c/b/a/k/j;->d:F

    float-to-int v0, v0

    .line 3
    iget-object v2, v6, Lc/c/b/a/j/j;->j:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v9, v2

    goto :goto_3

    :cond_2
    :goto_2
    if-lez v1, :cond_2d

    if-lez v0, :cond_2d

    iget-object v2, v6, Lc/c/b/a/j/j;->l:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v6, Lc/c/b/a/j/j;->j:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v6, Lc/c/b/a/j/j;->k:Landroid/graphics/Canvas;

    goto :goto_1

    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, v6, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v0}, Lc/c/b/a/g/a/g;->getLineData()Lc/c/b/a/d/p;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lc/c/b/a/g/b/f;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6
    invoke-interface {v12}, Lc/c/b/a/g/b/e;->y0()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    goto/16 :goto_1c

    :cond_3
    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v12}, Lc/c/b/a/g/b/g;->I()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v12}, Lc/c/b/a/g/b/f;->p0()Landroid/graphics/DashPathEffect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-interface {v12}, Lc/c/b/a/g/b/f;->P0()Lc/c/b/a/d/q$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_24

    const/4 v4, 0x3

    if-eq v0, v4, :cond_21

    .line 7
    sget-object v0, Lc/c/b/a/d/q$a;->d:Lc/c/b/a/d/q$a;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->y0()I

    move-result v5

    invoke-interface {v12}, Lc/c/b/a/g/b/f;->P0()Lc/c/b/a/d/q$a;

    move-result-object v13

    if-ne v13, v0, :cond_4

    const/4 v13, 0x1

    goto :goto_5

    :cond_4
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_5

    const/4 v15, 0x4

    goto :goto_6

    :cond_5
    const/4 v15, 0x2

    :goto_6
    iget-object v8, v6, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v14

    invoke-interface {v8, v14}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v8

    iget-object v14, v6, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {v12}, Lc/c/b/a/g/b/f;->P()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v6, Lc/c/b/a/j/j;->k:Landroid/graphics/Canvas;

    goto :goto_7

    :cond_6
    move-object v4, v7

    :goto_7
    iget-object v14, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v2, v6, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-virtual {v14, v2, v12}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

    invoke-interface {v12}, Lc/c/b/a/g/b/g;->L0()Z

    move-result v2

    if-eqz v2, :cond_f

    if-lez v5, :cond_f

    iget-object v2, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    .line 8
    iget-object v14, v6, Lc/c/b/a/j/j;->p:Landroid/graphics/Path;

    iget v10, v2, Lc/c/b/a/j/c$a;->a:I

    iget v2, v2, Lc/c/b/a/j/c$a;->c:I

    add-int/2addr v2, v10

    const/4 v1, 0x0

    :goto_8
    mul-int/lit16 v3, v1, 0x80

    add-int/2addr v3, v10

    move/from16 v18, v10

    add-int/lit16 v10, v3, 0x80

    if-le v10, v2, :cond_7

    move v10, v2

    :cond_7
    if-gt v3, v10, :cond_d

    move/from16 v19, v2

    .line 9
    invoke-interface {v12}, Lc/c/b/a/g/b/f;->v()Lc/c/b/a/e/b;

    move-result-object v2

    move-object/from16 v20, v11

    iget-object v11, v6, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-virtual {v2, v12, v11}, Lc/c/b/a/e/b;->a(Lc/c/b/a/g/b/f;Lc/c/b/a/g/a/g;)F

    move-result v2

    iget-object v11, v6, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12}, Lc/c/b/a/g/b/f;->P0()Lc/c/b/a/d/q$a;

    move-result-object v11

    if-ne v11, v0, :cond_8

    const/4 v11, 0x1

    goto :goto_9

    :cond_8
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    invoke-interface {v12, v3}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v21

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Lc/c/b/a/d/o;->b()F

    move-result v0

    invoke-virtual {v14, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual/range {v21 .. v21}, Lc/c/b/a/d/o;->b()F

    move-result v0

    invoke-virtual/range {v21 .. v21}, Lc/c/b/a/d/g;->a()F

    move-result v23

    move-object/from16 v24, v9

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v9, v23, v17

    invoke-virtual {v14, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v3, 0x1

    const/4 v9, 0x0

    :goto_a
    if-gt v0, v10, :cond_a

    invoke-interface {v12, v0}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v9

    if-eqz v11, :cond_9

    move/from16 v23, v11

    invoke-virtual {v9}, Lc/c/b/a/d/o;->b()F

    move-result v11

    invoke-virtual/range {v21 .. v21}, Lc/c/b/a/d/g;->a()F

    move-result v21

    move/from16 v25, v5

    mul-float v5, v21, v17

    invoke-virtual {v14, v11, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_b

    :cond_9
    move/from16 v25, v5

    move/from16 v23, v11

    :goto_b
    invoke-virtual {v9}, Lc/c/b/a/d/o;->b()F

    move-result v5

    invoke-virtual {v9}, Lc/c/b/a/d/g;->a()F

    move-result v11

    mul-float v11, v11, v17

    invoke-virtual {v14, v5, v11}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v21, v9

    move/from16 v11, v23

    move/from16 v5, v25

    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_a
    move/from16 v25, v5

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lc/c/b/a/d/o;->b()F

    move-result v0

    invoke-virtual {v14, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_b
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 10
    invoke-virtual {v8, v14}, Lc/c/b/a/k/g;->e(Landroid/graphics/Path;)V

    invoke-interface {v12}, Lc/c/b/a/g/b/g;->s0()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v6, v7, v14, v0}, Lc/c/b/a/j/k;->l(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_c
    invoke-interface {v12}, Lc/c/b/a/g/b/g;->l()I

    move-result v0

    invoke-interface {v12}, Lc/c/b/a/g/b/g;->q()I

    move-result v2

    invoke-virtual {v6, v7, v14, v0, v2}, Lc/c/b/a/j/k;->k(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_c

    :cond_d
    move-object/from16 v22, v0

    move/from16 v19, v2

    move/from16 v25, v5

    move-object/from16 v24, v9

    move-object/from16 v20, v11

    :goto_c
    add-int/lit8 v1, v1, 0x1

    if-le v3, v10, :cond_e

    goto :goto_d

    :cond_e
    move/from16 v10, v18

    move/from16 v2, v19

    move-object/from16 v11, v20

    move-object/from16 v0, v22

    move-object/from16 v9, v24

    move/from16 v5, v25

    goto/16 :goto_8

    :cond_f
    move/from16 v25, v5

    move-object/from16 v24, v9

    move-object/from16 v20, v11

    .line 11
    :goto_d
    invoke-interface {v12}, Lc/c/b/a/g/b/e;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    iget-object v0, v6, Lc/c/b/a/j/j;->o:[F

    array-length v0, v0

    mul-int/lit8 v1, v15, 0x2

    if-gt v0, v1, :cond_10

    mul-int/lit8 v15, v15, 0x4

    new-array v0, v15, [F

    iput-object v0, v6, Lc/c/b/a/j/j;->o:[F

    :cond_10
    iget-object v0, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v0, v0, Lc/c/b/a/j/c$a;->a:I

    :goto_e
    iget-object v2, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v3, v2, Lc/c/b/a/j/c$a;->c:I

    iget v2, v2, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_20

    invoke-interface {v12, v0}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v2

    if-nez v2, :cond_12

    :cond_11
    const/4 v5, 0x3

    goto/16 :goto_11

    :cond_12
    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    invoke-virtual {v2}, Lc/c/b/a/d/o;->b()F

    move-result v5

    const/4 v9, 0x0

    aput v5, v3, v9

    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    invoke-virtual {v2}, Lc/c/b/a/d/g;->a()F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v2, v2, v5

    const/4 v5, 0x1

    aput v2, v3, v5

    iget-object v2, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v2, v2, Lc/c/b/a/j/c$a;->b:I

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v12, v2}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v2

    if-nez v2, :cond_13

    goto/16 :goto_15

    :cond_13
    if-eqz v13, :cond_14

    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    invoke-virtual {v2}, Lc/c/b/a/d/o;->b()F

    move-result v5

    const/4 v9, 0x2

    aput v5, v3, v9

    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    const/4 v5, 0x1

    aget v10, v3, v5

    const/4 v5, 0x3

    aput v10, v3, v5

    aget v10, v3, v9

    const/4 v9, 0x4

    aput v10, v3, v9

    const/4 v9, 0x5

    aget v10, v3, v5

    aput v10, v3, v9

    const/4 v5, 0x6

    invoke-virtual {v2}, Lc/c/b/a/d/o;->b()F

    move-result v9

    aput v9, v3, v5

    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    const/4 v5, 0x7

    invoke-virtual {v2}, Lc/c/b/a/d/g;->a()F

    move-result v2

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v2, v2, v9

    aput v2, v3, v5

    const/4 v5, 0x3

    const/4 v10, 0x2

    goto :goto_f

    :cond_14
    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    invoke-virtual {v2}, Lc/c/b/a/d/o;->b()F

    move-result v5

    const/4 v10, 0x2

    aput v5, v3, v10

    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    invoke-virtual {v2}, Lc/c/b/a/d/g;->a()F

    move-result v2

    mul-float v2, v2, v9

    const/4 v5, 0x3

    aput v2, v3, v5

    :goto_f
    const/4 v3, 0x0

    goto :goto_10

    :cond_15
    const/4 v5, 0x3

    const/4 v10, 0x2

    iget-object v2, v6, Lc/c/b/a/j/j;->o:[F

    const/4 v3, 0x0

    aget v9, v2, v3

    aput v9, v2, v10

    const/4 v9, 0x1

    aget v10, v2, v9

    aput v10, v2, v5

    :goto_10
    iget-object v2, v6, Lc/c/b/a/j/j;->o:[F

    invoke-virtual {v8, v2}, Lc/c/b/a/k/g;->g([F)V

    iget-object v2, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v5, v6, Lc/c/b/a/j/j;->o:[F

    aget v5, v5, v3

    invoke-virtual {v2, v5}, Lc/c/b/a/k/j;->f(F)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_15

    :cond_16
    iget-object v2, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Lc/c/b/a/k/j;->e(F)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Lc/c/b/a/k/j;->g(F)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v3, v6, Lc/c/b/a/j/j;->o:[F

    const/4 v5, 0x3

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Lc/c/b/a/k/j;->d(F)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_11

    :cond_17
    const/4 v5, 0x3

    :cond_18
    iget-object v2, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v12, v0}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v6, Lc/c/b/a/j/j;->o:[F

    iget-object v3, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v9, v1, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_19
    iget-object v0, v6, Lc/c/b/a/j/j;->o:[F

    array-length v0, v0

    mul-int v5, v25, v15

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1a

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, v6, Lc/c/b/a/j/j;->o:[F

    :cond_1a
    iget-object v0, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v0, v0, Lc/c/b/a/j/c$a;->a:I

    invoke-interface {v12, v0}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v0, v0, Lc/c/b/a/j/c$a;->a:I

    const/4 v1, 0x0

    :goto_12
    iget-object v2, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v3, v2, Lc/c/b/a/j/c$a;->c:I

    iget v2, v2, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_1f

    if-nez v0, :cond_1b

    const/4 v2, 0x0

    goto :goto_13

    :cond_1b
    add-int/lit8 v2, v0, -0x1

    :goto_13
    invoke-interface {v12, v2}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v2

    invoke-interface {v12, v0}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v3

    if-eqz v2, :cond_1e

    if-nez v3, :cond_1c

    goto :goto_14

    :cond_1c
    iget-object v5, v6, Lc/c/b/a/j/j;->o:[F

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v2}, Lc/c/b/a/d/o;->b()F

    move-result v10

    aput v10, v5, v1

    iget-object v1, v6, Lc/c/b/a/j/j;->o:[F

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v2}, Lc/c/b/a/d/g;->a()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v10, v10, v11

    aput v10, v1, v9

    if-eqz v13, :cond_1d

    iget-object v1, v6, Lc/c/b/a/j/j;->o:[F

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3}, Lc/c/b/a/d/o;->b()F

    move-result v10

    aput v10, v1, v5

    iget-object v1, v6, Lc/c/b/a/j/j;->o:[F

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v2}, Lc/c/b/a/d/g;->a()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v10, v10, v11

    aput v10, v1, v9

    iget-object v1, v6, Lc/c/b/a/j/j;->o:[F

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3}, Lc/c/b/a/d/o;->b()F

    move-result v10

    aput v10, v1, v5

    iget-object v1, v6, Lc/c/b/a/j/j;->o:[F

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v2}, Lc/c/b/a/d/g;->a()F

    move-result v2

    mul-float v2, v2, v11

    aput v2, v1, v9

    :cond_1d
    iget-object v1, v6, Lc/c/b/a/j/j;->o:[F

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v3}, Lc/c/b/a/d/o;->b()F

    move-result v9

    aput v9, v1, v5

    iget-object v1, v6, Lc/c/b/a/j/j;->o:[F

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Lc/c/b/a/d/g;->a()F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v3, v3, v9

    aput v3, v1, v2

    move v1, v5

    :cond_1e
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1f
    if-lez v1, :cond_20

    iget-object v0, v6, Lc/c/b/a/j/j;->o:[F

    invoke-virtual {v8, v0}, Lc/c/b/a/k/g;->g([F)V

    iget-object v0, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v0, v0, Lc/c/b/a/j/c$a;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    mul-int v0, v0, v15

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->B0()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v6, Lc/c/b/a/j/j;->o:[F

    iget-object v2, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_20
    :goto_15
    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_17

    :cond_21
    move-object/from16 v24, v9

    move-object/from16 v20, v11

    .line 12
    iget-object v0, v6, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v8

    iget-object v0, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v1, v6, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-virtual {v0, v1, v12}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

    iget-object v0, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v1, v0, Lc/c/b/a/j/c$a;->c:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_22

    iget v0, v0, Lc/c/b/a/j/c$a;->a:I

    invoke-interface {v12, v0}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v0

    iget-object v1, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Lc/c/b/a/d/o;->b()F

    move-result v3

    invoke-virtual {v0}, Lc/c/b/a/d/g;->a()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v1, v1, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v1, v2

    :goto_16
    iget-object v2, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v3, v2, Lc/c/b/a/j/c$a;->c:I

    iget v2, v2, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v3, v2

    if-gt v1, v3, :cond_22

    invoke-interface {v12, v1}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v2

    invoke-virtual {v0}, Lc/c/b/a/d/o;->b()F

    move-result v3

    invoke-virtual {v2}, Lc/c/b/a/d/o;->b()F

    move-result v4

    invoke-virtual {v0}, Lc/c/b/a/d/o;->b()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v28, v4, v3

    iget-object v3, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Lc/c/b/a/d/g;->a()F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v27, v0, v4

    invoke-virtual {v2}, Lc/c/b/a/d/g;->a()F

    move-result v0

    mul-float v29, v0, v4

    invoke-virtual {v2}, Lc/c/b/a/d/o;->b()F

    move-result v30

    invoke-virtual {v2}, Lc/c/b/a/d/g;->a()F

    move-result v0

    mul-float v31, v0, v4

    move-object/from16 v25, v3

    move/from16 v26, v28

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_16

    :cond_22
    invoke-interface {v12}, Lc/c/b/a/g/b/g;->L0()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v6, Lc/c/b/a/j/j;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v6, Lc/c/b/a/j/j;->n:Landroid/graphics/Path;

    iget-object v1, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v1, v6, Lc/c/b/a/j/j;->k:Landroid/graphics/Canvas;

    iget-object v3, v6, Lc/c/b/a/j/j;->n:Landroid/graphics/Path;

    iget-object v5, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    move-object/from16 v0, p0

    move-object v2, v12

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lc/c/b/a/j/j;->m(Landroid/graphics/Canvas;Lc/c/b/a/g/b/f;Landroid/graphics/Path;Lc/c/b/a/k/g;Lc/c/b/a/j/c$a;)V

    :cond_23
    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->B0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v8, v0}, Lc/c/b/a/k/g;->e(Landroid/graphics/Path;)V

    iget-object v0, v6, Lc/c/b/a/j/j;->k:Landroid/graphics/Canvas;

    iget-object v1, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    iget-object v2, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :goto_17
    const/4 v9, 0x0

    goto :goto_18

    :cond_24
    move-object/from16 v24, v9

    move-object/from16 v20, v11

    .line 13
    iget-object v0, v6, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v8

    iget-object v0, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v1, v6, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-virtual {v0, v1, v12}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

    invoke-interface {v12}, Lc/c/b/a/g/b/f;->l0()F

    move-result v0

    iget-object v1, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v2, v1, Lc/c/b/a/j/c$a;->c:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_28

    iget v1, v1, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, -0x2

    const/4 v9, 0x0

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v12, v2}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v2

    sub-int/2addr v1, v3

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v12, v1}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v1

    if-nez v1, :cond_25

    :goto_18
    const/4 v1, 0x0

    goto/16 :goto_1b

    :cond_25
    iget-object v3, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v1}, Lc/c/b/a/d/o;->b()F

    move-result v4

    invoke-virtual {v1}, Lc/c/b/a/d/g;->a()F

    move-result v5

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v5, v5, v10

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v3, v3, Lc/c/b/a/j/c$a;->a:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v4, -0x1

    move v4, v3

    const/4 v5, -0x1

    move-object v3, v1

    :goto_19
    iget-object v10, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v11, v10, Lc/c/b/a/j/c$a;->c:I

    iget v10, v10, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v11, v10

    if-gt v4, v11, :cond_29

    if-ne v5, v4, :cond_26

    goto :goto_1a

    :cond_26
    invoke-interface {v12, v4}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v1

    :goto_1a
    add-int/lit8 v5, v4, 0x1

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->y0()I

    move-result v10

    if-ge v5, v10, :cond_27

    move v4, v5

    :cond_27
    invoke-interface {v12, v4}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v10

    invoke-virtual {v1}, Lc/c/b/a/d/o;->b()F

    move-result v11

    invoke-virtual {v2}, Lc/c/b/a/d/o;->b()F

    move-result v13

    sub-float/2addr v11, v13

    mul-float v11, v11, v0

    invoke-virtual {v1}, Lc/c/b/a/d/g;->a()F

    move-result v13

    invoke-virtual {v2}, Lc/c/b/a/d/g;->a()F

    move-result v2

    sub-float/2addr v13, v2

    mul-float v13, v13, v0

    invoke-virtual {v10}, Lc/c/b/a/d/o;->b()F

    move-result v2

    invoke-virtual {v3}, Lc/c/b/a/d/o;->b()F

    move-result v14

    sub-float/2addr v2, v14

    mul-float v2, v2, v0

    invoke-virtual {v10}, Lc/c/b/a/d/g;->a()F

    move-result v14

    invoke-virtual {v3}, Lc/c/b/a/d/g;->a()F

    move-result v15

    sub-float/2addr v14, v15

    mul-float v14, v14, v0

    iget-object v15, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v3}, Lc/c/b/a/d/o;->b()F

    move-result v16

    add-float v26, v16, v11

    invoke-virtual {v3}, Lc/c/b/a/d/g;->a()F

    move-result v11

    add-float/2addr v11, v13

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v27, v11, v13

    invoke-virtual {v1}, Lc/c/b/a/d/o;->b()F

    move-result v11

    sub-float v28, v11, v2

    invoke-virtual {v1}, Lc/c/b/a/d/g;->a()F

    move-result v2

    sub-float/2addr v2, v14

    mul-float v29, v2, v13

    invoke-virtual {v1}, Lc/c/b/a/d/o;->b()F

    move-result v30

    invoke-virtual {v1}, Lc/c/b/a/d/g;->a()F

    move-result v2

    mul-float v31, v2, v13

    move-object/from16 v25, v15

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v2, v3

    move-object v3, v1

    move-object v1, v10

    move/from16 v32, v5

    move v5, v4

    move/from16 v4, v32

    goto :goto_19

    :cond_28
    const/4 v9, 0x0

    :cond_29
    invoke-interface {v12}, Lc/c/b/a/g/b/g;->L0()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v6, Lc/c/b/a/j/j;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v6, Lc/c/b/a/j/j;->n:Landroid/graphics/Path;

    iget-object v1, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v1, v6, Lc/c/b/a/j/j;->k:Landroid/graphics/Canvas;

    iget-object v3, v6, Lc/c/b/a/j/j;->n:Landroid/graphics/Path;

    iget-object v5, v6, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    move-object/from16 v0, p0

    move-object v2, v12

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lc/c/b/a/j/j;->m(Landroid/graphics/Canvas;Lc/c/b/a/g/b/f;Landroid/graphics/Path;Lc/c/b/a/k/g;Lc/c/b/a/j/c$a;)V

    :cond_2a
    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->B0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    invoke-virtual {v8, v0}, Lc/c/b/a/k/g;->e(Landroid/graphics/Path;)V

    iget-object v0, v6, Lc/c/b/a/j/j;->k:Landroid/graphics/Canvas;

    iget-object v1, v6, Lc/c/b/a/j/j;->m:Landroid/graphics/Path;

    iget-object v2, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 14
    :goto_1b
    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1d

    :cond_2b
    :goto_1c
    move-object/from16 v24, v9

    move-object/from16 v20, v11

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_1d
    move-object/from16 v11, v20

    move-object/from16 v9, v24

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_2c
    move-object/from16 v24, v9

    .line 15
    iget-object v0, v6, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object/from16 v2, v24

    invoke-virtual {v7, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2d
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc/c/b/a/j/j;->r:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    iget-object v1, v0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v1}, Lc/c/b/a/g/a/g;->getLineData()Lc/c/b/a/d/p;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    const/4 v5, 0x0

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/b/a/g/b/f;

    invoke-interface {v6}, Lc/c/b/a/g/b/e;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Lc/c/b/a/g/b/f;->C0()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Lc/c/b/a/g/b/e;->y0()I

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v7, v0, Lc/c/b/a/j/j;->i:Landroid/graphics/Paint;

    invoke-interface {v6}, Lc/c/b/a/g/b/f;->X()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v6}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v8

    invoke-interface {v7, v8}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v7

    iget-object v8, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v9, v0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-virtual {v8, v9, v6}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

    invoke-interface {v6}, Lc/c/b/a/g/b/f;->J0()F

    move-result v8

    invoke-interface {v6}, Lc/c/b/a/g/b/f;->I0()F

    move-result v9

    invoke-interface {v6}, Lc/c/b/a/g/b/f;->R0()Z

    move-result v10

    if-eqz v10, :cond_1

    cmpg-float v10, v9, v8

    if-gez v10, :cond_1

    cmpl-float v9, v9, v3

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_2

    invoke-interface {v6}, Lc/c/b/a/g/b/f;->X()I

    move-result v10

    const v11, 0x112233

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    iget-object v11, v0, Lc/c/b/a/j/j;->q:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    iget-object v11, v0, Lc/c/b/a/j/j;->q:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc/c/b/a/j/j$b;

    goto :goto_3

    :cond_3
    new-instance v11, Lc/c/b/a/j/j$b;

    invoke-direct {v11, v0, v12}, Lc/c/b/a/j/j$b;-><init>(Lc/c/b/a/j/j;Lc/c/b/a/j/j$a;)V

    iget-object v13, v0, Lc/c/b/a/j/j;->q:Ljava/util/HashMap;

    invoke-virtual {v13, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_3
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Lc/c/b/a/g/b/f;->k()I

    move-result v13

    iget-object v14, v11, Lc/c/b/a/j/j$b;->b:[Landroid/graphics/Bitmap;

    if-nez v14, :cond_4

    new-array v13, v13, [Landroid/graphics/Bitmap;

    iput-object v13, v11, Lc/c/b/a/j/j$b;->b:[Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_4
    array-length v14, v14

    if-eq v14, v13, :cond_5

    new-array v13, v13, [Landroid/graphics/Bitmap;

    iput-object v13, v11, Lc/c/b/a/j/j$b;->b:[Landroid/graphics/Bitmap;

    :goto_4
    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_8

    .line 5
    invoke-interface {v6}, Lc/c/b/a/g/b/f;->k()I

    move-result v13

    invoke-interface {v6}, Lc/c/b/a/g/b/f;->J0()F

    move-result v14

    invoke-interface {v6}, Lc/c/b/a/g/b/f;->I0()F

    move-result v15

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v13, :cond_8

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v16, v5

    float-to-double v4, v14

    const-wide v17, 0x4000cccccccccccdL    # 2.1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v17

    double-to-int v4, v4

    invoke-static {v4, v4, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v11, Lc/c/b/a/j/j$b;->b:[Landroid/graphics/Bitmap;

    aput-object v4, v12, v3

    iget-object v4, v11, Lc/c/b/a/j/j$b;->c:Lc/c/b/a/j/j;

    iget-object v4, v4, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v6, v3}, Lc/c/b/a/g/b/f;->q0(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v10, :cond_6

    iget-object v4, v11, Lc/c/b/a/j/j$b;->a:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v11, Lc/c/b/a/j/j$b;->a:Landroid/graphics/Path;

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v14, v14, v14, v12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, v11, Lc/c/b/a/j/j$b;->a:Landroid/graphics/Path;

    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v14, v14, v15, v12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, v11, Lc/c/b/a/j/j$b;->a:Landroid/graphics/Path;

    iget-object v12, v11, Lc/c/b/a/j/j$b;->c:Lc/c/b/a/j/j;

    iget-object v12, v12, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    :cond_6
    iget-object v4, v11, Lc/c/b/a/j/j$b;->c:Lc/c/b/a/j/j;

    iget-object v4, v4, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v14, v14, v14, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v9, :cond_7

    iget-object v4, v11, Lc/c/b/a/j/j$b;->c:Lc/c/b/a/j/j;

    iget-object v4, v4, Lc/c/b/a/j/j;->i:Landroid/graphics/Paint;

    invoke-virtual {v5, v14, v14, v15, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v16

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto :goto_6

    :cond_8
    move/from16 v16, v5

    .line 6
    iget-object v3, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v4, v3, Lc/c/b/a/j/c$a;->c:I

    iget v3, v3, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v4, v3

    :goto_8
    if-gt v3, v4, :cond_d

    invoke-interface {v6, v3}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_b

    :cond_9
    iget-object v9, v0, Lc/c/b/a/j/j;->r:[F

    invoke-virtual {v5}, Lc/c/b/a/d/o;->b()F

    move-result v10

    aput v10, v9, v2

    iget-object v9, v0, Lc/c/b/a/j/j;->r:[F

    invoke-virtual {v5}, Lc/c/b/a/d/g;->a()F

    move-result v5

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v5, v5, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    iget-object v5, v0, Lc/c/b/a/j/j;->r:[F

    invoke-virtual {v7, v5}, Lc/c/b/a/k/g;->g([F)V

    iget-object v5, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v9, v0, Lc/c/b/a/j/j;->r:[F

    aget v9, v9, v2

    invoke-virtual {v5, v9}, Lc/c/b/a/k/j;->f(F)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_b

    :cond_a
    iget-object v5, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v9, v0, Lc/c/b/a/j/j;->r:[F

    aget v9, v9, v2

    invoke-virtual {v5, v9}, Lc/c/b/a/k/j;->e(F)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v9, v0, Lc/c/b/a/j/j;->r:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v5, v9}, Lc/c/b/a/k/j;->i(F)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_9

    .line 7
    :cond_b
    iget-object v5, v11, Lc/c/b/a/j/j$b;->b:[Landroid/graphics/Bitmap;

    array-length v9, v5

    rem-int v9, v3, v9

    aget-object v5, v5, v9

    if-eqz v5, :cond_c

    .line 8
    iget-object v9, v0, Lc/c/b/a/j/j;->r:[F

    aget v10, v9, v2

    sub-float/2addr v10, v8

    const/4 v12, 0x1

    aget v9, v9, v12

    sub-float/2addr v9, v8

    move-object/from16 v13, p1

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v10, v9, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_c
    :goto_9
    move-object/from16 v13, p1

    const/4 v12, 0x1

    const/4 v14, 0x0

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    :goto_b
    move-object/from16 v13, p1

    :goto_c
    const/4 v12, 0x1

    goto :goto_e

    :cond_e
    :goto_d
    move-object/from16 v13, p1

    move/from16 v16, v5

    goto :goto_c

    :goto_e
    add-int/lit8 v5, v16, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V
    .locals 11

    iget-object v0, p0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v0}, Lc/c/b/a/g/a/g;->getLineData()Lc/c/b/a/d/p;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 1
    iget v4, v3, Lc/c/b/a/f/d;->f:I

    .line 2
    invoke-virtual {v0, v4}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v4

    check-cast v4, Lc/c/b/a/g/b/f;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->D0()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v5, v3, Lc/c/b/a/f/d;->a:F

    .line 4
    iget v6, v3, Lc/c/b/a/f/d;->b:F

    .line 5
    invoke-interface {v4, v5, v6}, Lc/c/b/a/g/b/e;->L(FF)Lc/c/b/a/d/o;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lc/c/b/a/j/c;->h(Lc/c/b/a/d/o;Lc/c/b/a/g/b/b;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v7

    invoke-interface {v6, v7}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v6

    invoke-virtual {v5}, Lc/c/b/a/d/o;->b()F

    move-result v7

    invoke-virtual {v5}, Lc/c/b/a/d/g;->a()F

    move-result v5

    iget-object v8, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v5, v5, v8

    invoke-virtual {v6, v7, v5}, Lc/c/b/a/k/g;->a(FF)Lc/c/b/a/k/d;

    move-result-object v5

    iget-wide v6, v5, Lc/c/b/a/k/d;->b:D

    double-to-float v8, v6

    iget-wide v9, v5, Lc/c/b/a/k/d;->c:D

    double-to-float v5, v9

    .line 6
    iput v8, v3, Lc/c/b/a/f/d;->i:F

    iput v5, v3, Lc/c/b/a/f/d;->j:F

    double-to-float v3, v6

    double-to-float v5, v9

    .line 7
    invoke-virtual {p0, p1, v3, v5, v4}, Lc/c/b/a/j/l;->j(Landroid/graphics/Canvas;FFLc/c/b/a/g/b/h;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-virtual {v0, v1}, Lc/c/b/a/j/g;->g(Lc/c/b/a/g/a/e;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v1}, Lc/c/b/a/g/a/g;->getLineData()Lc/c/b/a/d/p;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/b/a/g/b/f;

    invoke-virtual {v0, v4}, Lc/c/b/a/j/c;->i(Lc/c/b/a/g/b/e;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->y0()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v0, v4}, Lc/c/b/a/j/g;->a(Lc/c/b/a/g/b/e;)V

    iget-object v5, v0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v7

    invoke-interface {v5, v7}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v5

    invoke-interface {v4}, Lc/c/b/a/g/b/f;->J0()F

    move-result v7

    const/high16 v8, 0x3fe00000    # 1.75f

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-interface {v4}, Lc/c/b/a/g/b/f;->C0()Z

    move-result v8

    if-nez v8, :cond_1

    div-int/lit8 v7, v7, 0x2

    :cond_1
    iget-object v8, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v9, v0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-virtual {v8, v9, v4}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

    iget-object v8, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v9, v8, Lc/c/b/a/j/c$a;->a:I

    iget v8, v8, Lc/c/b/a/j/c$a;->b:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v8, v8, v10

    float-to-int v8, v8

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x2

    .line 3
    iget-object v6, v5, Lc/c/b/a/k/g;->f:[F

    array-length v6, v6

    if-eq v6, v8, :cond_2

    new-array v6, v8, [F

    iput-object v6, v5, Lc/c/b/a/k/g;->f:[F

    :cond_2
    iget-object v6, v5, Lc/c/b/a/k/g;->f:[F

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_4

    div-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v9

    invoke-interface {v4, v12}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lc/c/b/a/d/o;->b()F

    move-result v13

    aput v13, v6, v11

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v12}, Lc/c/b/a/d/g;->a()F

    move-result v12

    mul-float v12, v12, v10

    aput v12, v6, v13

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    aput v12, v6, v11

    add-int/lit8 v13, v11, 0x1

    aput v12, v6, v13

    :goto_2
    add-int/lit8 v11, v11, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lc/c/b/a/k/g;->b()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4
    invoke-interface {v4}, Lc/c/b/a/g/b/e;->x0()Lc/c/b/a/e/e;

    move-result-object v5

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->z0()Lc/c/b/a/k/e;

    move-result-object v8

    invoke-static {v8}, Lc/c/b/a/k/e;->c(Lc/c/b/a/k/e;)Lc/c/b/a/k/e;

    move-result-object v8

    iget v9, v8, Lc/c/b/a/k/e;->b:F

    invoke-static {v9}, Lc/c/b/a/k/i;->d(F)F

    move-result v9

    iput v9, v8, Lc/c/b/a/k/e;->b:F

    iget v9, v8, Lc/c/b/a/k/e;->c:F

    invoke-static {v9}, Lc/c/b/a/k/i;->d(F)F

    move-result v9

    iput v9, v8, Lc/c/b/a/k/e;->c:F

    const/4 v9, 0x0

    :goto_3
    array-length v10, v6

    if-ge v9, v10, :cond_a

    aget v10, v6, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v6, v11

    iget-object v12, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v12, v10}, Lc/c/b/a/k/j;->f(F)Z

    move-result v12

    if-nez v12, :cond_5

    goto/16 :goto_7

    :cond_5
    iget-object v12, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v12, v10}, Lc/c/b/a/k/j;->e(F)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v12, v11}, Lc/c/b/a/k/j;->i(F)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_5

    :cond_6
    div-int/lit8 v12, v9, 0x2

    iget-object v13, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v13, v13, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v13, v12

    invoke-interface {v4, v13}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v13

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Lc/c/b/a/d/g;->a()F

    move-result v14

    invoke-virtual {v5, v14}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object v14

    int-to-float v15, v7

    sub-float v15, v11, v15

    .line 6
    invoke-interface {v4, v12}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v12

    .line 7
    iget-object v2, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v14, v10, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    move-object/from16 v12, p1

    .line 8
    :goto_4
    iget-object v2, v13, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    .line 9
    invoke-interface {v4}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 10
    iget-object v2, v13, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    .line 11
    iget v13, v8, Lc/c/b/a/k/e;->b:F

    add-float/2addr v10, v13

    float-to-int v10, v10

    iget v13, v8, Lc/c/b/a/k/e;->c:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v16, p1

    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-static/range {v16 .. v21}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v12, p1

    :cond_9
    :goto_6
    add-int/lit8 v9, v9, 0x2

    goto/16 :goto_3

    :cond_a
    :goto_7
    move-object/from16 v12, p1

    .line 12
    sget-object v2, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v2, v8}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v12, p1

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public m(Landroid/graphics/Canvas;Lc/c/b/a/g/b/f;Landroid/graphics/Path;Lc/c/b/a/k/g;Lc/c/b/a/j/c$a;)V
    .locals 3

    invoke-interface {p2}, Lc/c/b/a/g/b/f;->v()Lc/c/b/a/e/b;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/a/j/j;->h:Lc/c/b/a/g/a/g;

    invoke-virtual {v0, p2, v1}, Lc/c/b/a/e/b;->a(Lc/c/b/a/g/b/f;Lc/c/b/a/g/a/g;)F

    move-result v0

    iget v1, p5, Lc/c/b/a/j/c$a;->a:I

    iget v2, p5, Lc/c/b/a/j/c$a;->c:I

    add-int/2addr v1, v2

    invoke-interface {p2, v1}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/b/a/d/o;->b()F

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget p5, p5, Lc/c/b/a/j/c$a;->a:I

    invoke-interface {p2, p5}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object p5

    invoke-virtual {p5}, Lc/c/b/a/d/o;->b()F

    move-result p5

    invoke-virtual {p3, p5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    invoke-virtual {p4, p3}, Lc/c/b/a/k/g;->e(Landroid/graphics/Path;)V

    invoke-interface {p2}, Lc/c/b/a/g/b/g;->s0()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lc/c/b/a/j/k;->l(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lc/c/b/a/g/b/g;->l()I

    move-result p4

    invoke-interface {p2}, Lc/c/b/a/g/b/g;->q()I

    move-result p2

    invoke-virtual {p0, p1, p3, p4, p2}, Lc/c/b/a/j/k;->k(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    :goto_0
    return-void
.end method
