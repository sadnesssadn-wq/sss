.class public Lc/c/b/a/j/i;
.super Lc/c/b/a/j/o;
.source ""


# instance fields
.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:Lc/c/b/a/c/e;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/graphics/Paint$FontMetrics;

.field public g:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lc/c/b/a/k/j;Lc/c/b/a/c/e;)V
    .locals 1

    invoke-direct {p0, p1}, Lc/c/b/a/j/o;-><init>(Lc/c/b/a/k/j;)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    new-instance p1, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/i;->f:Landroid/graphics/Paint$FontMetrics;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/i;->g:Landroid/graphics/Path;

    iput-object p2, p0, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/a/d/l;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/b/a/d/l<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v9, Lc/c/b/a/c/e$b;->c:Lc/c/b/a/c/e$b;

    iget-object v2, v0, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lc/c/b/a/d/l;->d()I

    move-result v2

    const/4 v3, 0x1

    if-ge v11, v2, :cond_7

    invoke-virtual {v1, v11}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v2

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->F()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v5

    instance-of v6, v2, Lc/c/b/a/g/b/a;

    if-eqz v6, :cond_1

    move-object v6, v2

    check-cast v6, Lc/c/b/a/g/b/a;

    invoke-interface {v6}, Lc/c/b/a/g/b/a;->i0()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Lc/c/b/a/g/b/a;->k0()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    invoke-interface {v6}, Lc/c/b/a/g/b/a;->H()I

    move-result v7

    if-ge v5, v7, :cond_0

    iget-object v7, v0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    new-instance v8, Lc/c/b/a/c/f;

    array-length v12, v3

    rem-int v12, v5, v12

    aget-object v13, v3, v12

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->R()Lc/c/b/a/c/e$b;

    move-result-object v14

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->O0()F

    move-result v15

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->G0()F

    move-result v16

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->K()Landroid/graphics/DashPathEffect;

    move-result-object v17

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object v12, v8

    invoke-direct/range {v12 .. v18}, Lc/c/b/a/c/f;-><init>(Ljava/lang/String;Lc/c/b/a/c/e$b;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v6}, Lc/c/b/a/g/b/e;->Z()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v12, v0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    new-instance v13, Lc/c/b/a/c/f;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->Z()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/4 v7, 0x0

    const v8, 0x112233

    move-object v2, v13

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lc/c/b/a/c/f;-><init>(Ljava/lang/String;Lc/c/b/a/c/e$b;FFLandroid/graphics/DashPathEffect;I)V

    goto :goto_3

    :cond_1
    instance-of v6, v2, Lc/c/b/a/g/b/i;

    if-eqz v6, :cond_3

    move-object v3, v2

    check-cast v3, Lc/c/b/a/g/b/i;

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    if-ge v6, v5, :cond_2

    iget-object v7, v0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    new-instance v8, Lc/c/b/a/c/f;

    invoke-interface {v3, v6}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v12

    check-cast v12, Lc/c/b/a/d/u;

    .line 1
    iget-object v13, v12, Lc/c/b/a/d/u;->g:Ljava/lang/String;

    .line 2
    invoke-interface {v2}, Lc/c/b/a/g/b/e;->R()Lc/c/b/a/c/e$b;

    move-result-object v14

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->O0()F

    move-result v15

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->G0()F

    move-result v16

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->K()Landroid/graphics/DashPathEffect;

    move-result-object v17

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object v12, v8

    invoke-direct/range {v12 .. v18}, Lc/c/b/a/c/f;-><init>(Ljava/lang/String;Lc/c/b/a/c/e$b;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lc/c/b/a/g/b/e;->Z()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v12, v0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    new-instance v13, Lc/c/b/a/c/f;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->Z()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/4 v7, 0x0

    const v8, 0x112233

    move-object v2, v13

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lc/c/b/a/c/f;-><init>(Ljava/lang/String;Lc/c/b/a/c/e$b;FFLandroid/graphics/DashPathEffect;I)V

    .line 3
    :goto_3
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 4
    :cond_3
    instance-of v6, v2, Lc/c/b/a/g/b/d;

    if-eqz v6, :cond_4

    move-object v6, v2

    check-cast v6, Lc/c/b/a/g/b/d;

    invoke-interface {v6}, Lc/c/b/a/g/b/d;->Q0()I

    move-result v7

    const v8, 0x112233

    if-eq v7, v8, :cond_4

    invoke-interface {v6}, Lc/c/b/a/g/b/d;->Q0()I

    move-result v18

    invoke-interface {v6}, Lc/c/b/a/g/b/d;->m0()I

    move-result v25

    iget-object v3, v0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    new-instance v4, Lc/c/b/a/c/f;

    const/4 v13, 0x0

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->R()Lc/c/b/a/c/e$b;

    move-result-object v14

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->O0()F

    move-result v15

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->G0()F

    move-result v16

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->K()Landroid/graphics/DashPathEffect;

    move-result-object v17

    move-object v12, v4

    invoke-direct/range {v12 .. v18}, Lc/c/b/a/c/f;-><init>(Ljava/lang/String;Lc/c/b/a/c/e$b;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    new-instance v4, Lc/c/b/a/c/f;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->Z()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->R()Lc/c/b/a/c/e$b;

    move-result-object v21

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->O0()F

    move-result v22

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->G0()F

    move-result v23

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->K()Landroid/graphics/DashPathEffect;

    move-result-object v24

    move-object/from16 v19, v4

    invoke-direct/range {v19 .. v25}, Lc/c/b/a/c/f;-><init>(Ljava/lang/String;Lc/c/b/a/c/e$b;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    const/4 v6, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    if-ge v6, v5, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    if-ge v6, v7, :cond_5

    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v11}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v7

    invoke-interface {v7}, Lc/c/b/a/g/b/e;->Z()Ljava/lang/String;

    move-result-object v7

    :goto_5
    move-object v13, v7

    iget-object v7, v0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    new-instance v8, Lc/c/b/a/c/f;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->R()Lc/c/b/a/c/e$b;

    move-result-object v14

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->O0()F

    move-result v15

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->G0()F

    move-result v16

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->K()Landroid/graphics/DashPathEffect;

    move-result-object v17

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object v12, v8

    invoke-direct/range {v12 .. v18}, Lc/c/b/a/c/f;-><init>(Ljava/lang/String;Lc/c/b/a/c/e$b;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget-object v2, v0, Lc/c/b/a/j/i;->e:Ljava/util/List;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lc/c/b/a/c/f;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lc/c/b/a/c/f;

    iput-object v2, v1, Lc/c/b/a/c/e;->f:[Lc/c/b/a/c/f;

    .line 6
    iget-object v1, v0, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    iget-object v2, v0, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 7
    iget v2, v2, Lc/c/b/a/c/b;->d:F

    .line 8
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    iget-object v2, v0, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 9
    iget v2, v2, Lc/c/b/a/c/b;->e:I

    .line 10
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget-object v2, v0, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    iget-object v4, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 11
    iget v5, v1, Lc/c/b/a/c/e;->m:F

    invoke-static {v5}, Lc/c/b/a/k/i;->d(F)F

    move-result v5

    iget v6, v1, Lc/c/b/a/c/e;->r:F

    invoke-static {v6}, Lc/c/b/a/k/i;->d(F)F

    move-result v6

    iget v7, v1, Lc/c/b/a/c/e;->q:F

    invoke-static {v7}, Lc/c/b/a/k/i;->d(F)F

    move-result v7

    iget v8, v1, Lc/c/b/a/c/e;->o:F

    invoke-static {v8}, Lc/c/b/a/k/i;->d(F)F

    move-result v8

    iget v11, v1, Lc/c/b/a/c/e;->p:F

    invoke-static {v11}, Lc/c/b/a/k/i;->d(F)F

    move-result v11

    iget-boolean v12, v1, Lc/c/b/a/c/e;->w:Z

    iget-object v13, v1, Lc/c/b/a/c/e;->f:[Lc/c/b/a/c/f;

    array-length v14, v13

    .line 12
    iget v15, v1, Lc/c/b/a/c/e;->q:F

    invoke-static {v15}, Lc/c/b/a/k/i;->d(F)F

    iget-object v15, v1, Lc/c/b/a/c/e;->f:[Lc/c/b/a/c/f;

    array-length v10, v15

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_7
    if-ge v3, v10, :cond_c

    aget-object v0, v15, v3

    move/from16 v20, v5

    iget v5, v0, Lc/c/b/a/c/f;->c:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v1, Lc/c/b/a/c/e;->m:F

    goto :goto_8

    :cond_8
    iget v5, v0, Lc/c/b/a/c/f;->c:F

    :goto_8
    invoke-static {v5}, Lc/c/b/a/k/i;->d(F)F

    move-result v5

    cmpl-float v21, v5, v18

    if-lez v21, :cond_9

    move/from16 v18, v5

    :cond_9
    iget-object v0, v0, Lc/c/b/a/c/f;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_9

    .line 13
    :cond_a
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    cmpl-float v5, v0, v19

    if-lez v5, :cond_b

    move/from16 v19, v0

    :cond_b
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v20

    goto :goto_7

    :cond_c
    move/from16 v20, v5

    .line 14
    iget-object v0, v1, Lc/c/b/a/c/e;->f:[Lc/c/b/a/c/f;

    array-length v3, v0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v3, :cond_f

    aget-object v15, v0, v10

    iget-object v15, v15, Lc/c/b/a/c/f;->a:Ljava/lang/String;

    if-nez v15, :cond_d

    goto :goto_b

    :cond_d
    invoke-static {v2, v15}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v15

    int-to-float v15, v15

    cmpl-float v18, v15, v5

    if-lez v18, :cond_e

    move v5, v15

    :cond_e
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 15
    :cond_f
    iput v5, v1, Lc/c/b/a/c/e;->v:F

    iget-object v0, v1, Lc/c/b/a/c/e;->i:Lc/c/b/a/c/e$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v3, 0x1

    if-eq v0, v3, :cond_10

    goto/16 :goto_20

    .line 16
    :cond_10
    sget-object v0, Lc/c/b/a/k/i;->f:Landroid/graphics/Paint$FontMetrics;

    .line 17
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_c
    if-ge v10, v14, :cond_1b

    .line 18
    aget-object v15, v13, v10

    iget-object v3, v15, Lc/c/b/a/c/f;->b:Lc/c/b/a/c/e$b;

    move/from16 v18, v5

    if-eq v3, v9, :cond_11

    const/4 v3, 0x1

    goto :goto_d

    :cond_11
    const/4 v3, 0x0

    :goto_d
    iget v5, v15, Lc/c/b/a/c/f;->c:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v5, v20

    goto :goto_e

    :cond_12
    iget v5, v15, Lc/c/b/a/c/f;->c:F

    invoke-static {v5}, Lc/c/b/a/k/i;->d(F)F

    move-result v5

    :goto_e
    iget-object v15, v15, Lc/c/b/a/c/f;->a:Ljava/lang/String;

    if-nez v12, :cond_13

    const/16 v18, 0x0

    :cond_13
    if-eqz v3, :cond_15

    if-eqz v12, :cond_14

    add-float v18, v18, v6

    :cond_14
    add-float v18, v18, v5

    :cond_15
    move-object/from16 v19, v9

    move/from16 v9, v18

    if-eqz v15, :cond_19

    if-eqz v3, :cond_16

    if-nez v12, :cond_16

    add-float v3, v9, v7

    goto :goto_f

    :cond_16
    if-eqz v12, :cond_17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v3, v4, v11

    add-float/2addr v8, v3

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_f

    :cond_17
    move v3, v9

    .line 19
    :goto_f
    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    add-int/lit8 v5, v14, -0x1

    if-ge v10, v5, :cond_18

    add-float v5, v4, v11

    add-float/2addr v8, v5

    :cond_18
    move v5, v3

    goto :goto_10

    :cond_19
    add-float/2addr v9, v5

    add-int/lit8 v3, v14, -0x1

    if-ge v10, v3, :cond_1a

    add-float/2addr v9, v6

    :cond_1a
    move v5, v9

    const/4 v12, 0x1

    .line 20
    :goto_10
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v19

    const/4 v3, 0x1

    goto :goto_c

    :cond_1b
    iput v0, v1, Lc/c/b/a/c/e;->t:F

    goto/16 :goto_1f

    :cond_1c
    move-object/from16 v19, v9

    .line 21
    sget-object v0, Lc/c/b/a/k/i;->f:Landroid/graphics/Paint$FontMetrics;

    .line 22
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v0

    .line 23
    sget-object v0, Lc/c/b/a/k/i;->f:Landroid/graphics/Paint$FontMetrics;

    .line 24
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v9, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v9

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v5, v0

    add-float/2addr v5, v11

    .line 25
    invoke-virtual {v4}, Lc/c/b/a/k/j;->a()F

    move-result v0

    iget v4, v1, Lc/c/b/a/c/e;->s:F

    mul-float v0, v0, v4

    iget-object v4, v1, Lc/c/b/a/c/e;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v1, Lc/c/b/a/c/e;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v1, Lc/c/b/a/c/e;->z:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, -0x1

    const/16 v26, 0x0

    :goto_11
    if-ge v10, v14, :cond_2c

    aget-object v4, v13, v10

    move/from16 v21, v8

    iget-object v8, v4, Lc/c/b/a/c/f;->b:Lc/c/b/a/c/e$b;

    move-object/from16 v22, v13

    move-object/from16 v13, v19

    if-eq v8, v13, :cond_1d

    const/4 v8, 0x1

    goto :goto_12

    :cond_1d
    const/4 v8, 0x0

    :goto_12
    iget v13, v4, Lc/c/b/a/c/f;->c:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_1e

    move/from16 v13, v20

    goto :goto_13

    :cond_1e
    iget v13, v4, Lc/c/b/a/c/f;->c:F

    invoke-static {v13}, Lc/c/b/a/k/i;->d(F)F

    move-result v13

    :goto_13
    iget-object v4, v4, Lc/c/b/a/c/f;->a:Ljava/lang/String;

    move/from16 v23, v5

    iget-object v5, v1, Lc/c/b/a/c/e;->y:Ljava/util/List;

    move/from16 v24, v11

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, -0x1

    if-ne v15, v5, :cond_1f

    const/4 v5, 0x0

    goto :goto_14

    :cond_1f
    add-float v5, v9, v6

    :goto_14
    iget-object v9, v1, Lc/c/b/a/c/e;->x:Ljava/util/List;

    if-eqz v4, :cond_21

    invoke-static {v2, v4}, Lc/c/b/a/k/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)Lc/c/b/a/k/b;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_20

    add-float v8, v7, v13

    goto :goto_15

    :cond_20
    const/4 v8, 0x0

    :goto_15
    add-float/2addr v5, v8

    iget-object v8, v1, Lc/c/b/a/c/e;->x:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/c/b/a/k/b;

    iget v8, v8, Lc/c/b/a/k/b;->b:F

    add-float/2addr v5, v8

    move-object/from16 v25, v2

    move v9, v5

    goto :goto_17

    :cond_21
    move-object/from16 v25, v2

    const/4 v11, 0x0

    invoke-static {v11, v11}, Lc/c/b/a/k/b;->b(FF)Lc/c/b/a/k/b;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_22

    goto :goto_16

    :cond_22
    const/4 v13, 0x0

    :goto_16
    add-float/2addr v5, v13

    const/4 v2, -0x1

    move v9, v5

    if-ne v15, v2, :cond_23

    move v15, v10

    :cond_23
    :goto_17
    if-nez v4, :cond_25

    add-int/lit8 v2, v14, -0x1

    if-ne v10, v2, :cond_24

    goto :goto_18

    :cond_24
    move/from16 v2, v24

    const/4 v11, 0x0

    goto :goto_1d

    :cond_25
    :goto_18
    move/from16 v2, v26

    const/4 v11, 0x0

    cmpl-float v5, v2, v11

    if-nez v5, :cond_26

    const/4 v5, 0x0

    goto :goto_19

    :cond_26
    move/from16 v5, v21

    :goto_19
    if-eqz v12, :cond_29

    cmpl-float v8, v2, v11

    if-eqz v8, :cond_29

    sub-float v8, v0, v2

    add-float v13, v5, v9

    cmpl-float v8, v8, v13

    if-ltz v8, :cond_27

    goto :goto_1b

    :cond_27
    iget-object v5, v1, Lc/c/b/a/c/e;->z:Ljava/util/List;

    invoke-static {v2, v3}, Lc/c/b/a/k/b;->b(FF)Lc/c/b/a/k/b;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v8, v24

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v5, v1, Lc/c/b/a/c/e;->y:Ljava/util/List;

    const/4 v8, -0x1

    if-le v15, v8, :cond_28

    move v8, v15

    goto :goto_1a

    :cond_28
    move v8, v10

    :goto_1a
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v8, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v5, v9

    goto :goto_1c

    :cond_29
    :goto_1b
    move/from16 v8, v24

    add-float/2addr v5, v9

    add-float/2addr v5, v2

    move v2, v8

    :goto_1c
    add-int/lit8 v8, v14, -0x1

    if-ne v10, v8, :cond_2a

    iget-object v8, v1, Lc/c/b/a/c/e;->z:Ljava/util/List;

    invoke-static {v5, v3}, Lc/c/b/a/k/b;->b(FF)Lc/c/b/a/k/b;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_2a
    move/from16 v26, v5

    :goto_1d
    if-eqz v4, :cond_2b

    const/4 v15, -0x1

    :cond_2b
    add-int/lit8 v10, v10, 0x1

    move v11, v2

    move/from16 v8, v21

    move-object/from16 v13, v22

    move/from16 v5, v23

    move-object/from16 v2, v25

    goto/16 :goto_11

    :cond_2c
    move/from16 v23, v5

    move v8, v11

    iput v8, v1, Lc/c/b/a/c/e;->t:F

    iget-object v0, v1, Lc/c/b/a/c/e;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float v3, v3, v0

    iget-object v0, v1, Lc/c/b/a/c/e;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2d

    const/4 v10, 0x0

    goto :goto_1e

    :cond_2d
    iget-object v0, v1, Lc/c/b/a/c/e;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, -0x1

    add-int/lit8 v10, v0, -0x1

    :goto_1e
    int-to-float v0, v10

    mul-float v5, v23, v0

    add-float v8, v5, v3

    :goto_1f
    iput v8, v1, Lc/c/b/a/c/e;->u:F

    :goto_20
    iget v0, v1, Lc/c/b/a/c/e;->u:F

    iget v2, v1, Lc/c/b/a/c/b;->c:F

    add-float/2addr v0, v2

    iput v0, v1, Lc/c/b/a/c/e;->u:F

    iget v0, v1, Lc/c/b/a/c/e;->t:F

    iget v2, v1, Lc/c/b/a/c/b;->b:F

    add-float/2addr v0, v2

    iput v0, v1, Lc/c/b/a/c/e;->t:F

    return-void
.end method

.method public b(Landroid/graphics/Canvas;FFLc/c/b/a/c/f;Lc/c/b/a/c/e;)V
    .locals 10

    iget v0, p4, Lc/c/b/a/c/f;->f:I

    const v1, 0x112234

    if-eq v0, v1, :cond_8

    const v1, 0x112233

    if-eq v0, v1, :cond_8

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p4, Lc/c/b/a/c/f;->b:Lc/c/b/a/c/e$b;

    sget-object v2, Lc/c/b/a/c/e$b;->e:Lc/c/b/a/c/e$b;

    if-ne v1, v2, :cond_1

    .line 1
    iget-object v1, p5, Lc/c/b/a/c/e;->l:Lc/c/b/a/c/e$b;

    .line 2
    :cond_1
    iget-object v2, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    iget v3, p4, Lc/c/b/a/c/f;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p4, Lc/c/b/a/c/f;->c:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget v2, p5, Lc/c/b/a/c/e;->m:F

    goto :goto_0

    .line 4
    :cond_2
    iget v2, p4, Lc/c/b/a/c/f;->c:F

    :goto_0
    invoke-static {v2}, Lc/c/b/a/k/i;->d(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6

    const/4 v4, 0x4

    if-eq v1, v4, :cond_7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    iget v1, p4, Lc/c/b/a/c/f;->d:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    iget v1, p5, Lc/c/b/a/c/e;->n:F

    goto :goto_1

    .line 6
    :cond_4
    iget v1, p4, Lc/c/b/a/c/f;->d:F

    :goto_1
    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    iget-object p4, p4, Lc/c/b/a/c/f;->e:Landroid/graphics/DashPathEffect;

    if-nez p4, :cond_5

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p4, 0x0

    :cond_5
    iget-object p5, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p5, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p5, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p4, p0, Lc/c/b/a/j/i;->g:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    iget-object p4, p0, Lc/c/b/a/j/i;->g:Landroid/graphics/Path;

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p4, p0, Lc/c/b/a/j/i;->g:Landroid/graphics/Path;

    add-float/2addr p2, v2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lc/c/b/a/j/i;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    iget-object p4, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float v6, p3, v3

    add-float v7, p2, v2

    add-float v8, p3, v3

    iget-object v9, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_7
    iget-object p4, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr p2, v3

    iget-object p4, p0, Lc/c/b/a/j/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 39

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v8, Lc/c/b/a/c/e$b;->c:Lc/c/b/a/c/e$b;

    sget-object v9, Lc/c/b/a/c/e$c;->d:Lc/c/b/a/c/e$c;

    sget-object v0, Lc/c/b/a/c/e$d;->d:Lc/c/b/a/c/e$d;

    sget-object v10, Lc/c/b/a/c/e$a;->c:Lc/c/b/a/c/e$a;

    sget-object v11, Lc/c/b/a/c/e$a;->d:Lc/c/b/a/c/e$a;

    iget-object v1, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 1
    iget-boolean v2, v1, Lc/c/b/a/c/b;->a:Z

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v6, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    .line 3
    iget v1, v1, Lc/c/b/a/c/b;->d:F

    .line 4
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v6, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    iget-object v2, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 5
    iget v2, v2, Lc/c/b/a/c/b;->e:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v6, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    iget-object v2, v6, Lc/c/b/a/j/i;->f:Landroid/graphics/Paint$FontMetrics;

    .line 7
    sget-object v3, Lc/c/b/a/k/i;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v1, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v12, v1, v2

    .line 8
    iget-object v1, v6, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    iget-object v2, v6, Lc/c/b/a/j/i;->f:Landroid/graphics/Paint$FontMetrics;

    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v1, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v3

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v2

    .line 10
    iget-object v2, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 11
    iget v2, v2, Lc/c/b/a/c/e;->p:F

    .line 12
    invoke-static {v2}, Lc/c/b/a/k/i;->d(F)F

    move-result v2

    add-float v13, v2, v1

    iget-object v1, v6, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    const-string v2, "ABC"

    invoke-static {v1, v2}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v1, v14

    sub-float v15, v12, v1

    iget-object v1, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 13
    iget-object v5, v1, Lc/c/b/a/c/e;->f:[Lc/c/b/a/c/f;

    .line 14
    iget v1, v1, Lc/c/b/a/c/e;->q:F

    .line 15
    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v4

    iget-object v1, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 16
    iget v1, v1, Lc/c/b/a/c/e;->o:F

    .line 17
    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v3

    iget-object v1, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 18
    iget-object v2, v1, Lc/c/b/a/c/e;->i:Lc/c/b/a/c/e$d;

    .line 19
    iget-object v14, v1, Lc/c/b/a/c/e;->g:Lc/c/b/a/c/e$c;

    move/from16 v17, v3

    .line 20
    iget-object v3, v1, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 21
    iget-object v7, v1, Lc/c/b/a/c/e;->k:Lc/c/b/a/c/e$a;

    .line 22
    iget v1, v1, Lc/c/b/a/c/e;->m:F

    .line 23
    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v18

    iget-object v1, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 24
    iget v1, v1, Lc/c/b/a/c/e;->r:F

    .line 25
    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    move/from16 v19, v1

    iget-object v1, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    move/from16 v20, v4

    .line 26
    iget v4, v1, Lc/c/b/a/c/b;->c:F

    .line 27
    iget v1, v1, Lc/c/b/a/c/b;->b:F

    move/from16 v21, v13

    .line 28
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    move/from16 v22, v12

    const/16 v23, 0x0

    const/4 v12, 0x1

    if-eqz v13, :cond_9

    if-eq v13, v12, :cond_4

    const/4 v12, 0x2

    if-eq v13, v12, :cond_1

    move/from16 v29, v4

    move-object/from16 v28, v5

    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_1
    if-ne v2, v0, :cond_2

    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 29
    iget v0, v0, Lc/c/b/a/k/j;->c:F

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 31
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    sub-float/2addr v0, v1

    if-ne v7, v10, :cond_3

    .line 32
    iget-object v1, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget v1, v1, Lc/c/b/a/c/e;->t:F

    sub-float/2addr v0, v1

    :cond_3
    move/from16 v29, v4

    move-object/from16 v28, v5

    goto/16 :goto_5

    :cond_4
    if-ne v2, v0, :cond_5

    iget-object v12, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 33
    iget v12, v12, Lc/c/b/a/k/j;->c:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    goto :goto_1

    :cond_5
    const/high16 v13, 0x40000000    # 2.0f

    .line 34
    iget-object v12, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 35
    iget-object v13, v12, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    .line 36
    invoke-virtual {v12}, Lc/c/b/a/k/j;->a()F

    move-result v12

    const/high16 v16, 0x40000000    # 2.0f

    div-float v12, v12, v16

    add-float/2addr v12, v13

    :goto_1
    if-ne v7, v10, :cond_6

    move v13, v1

    goto :goto_2

    :cond_6
    neg-float v13, v1

    :goto_2
    add-float/2addr v12, v13

    if-ne v2, v0, :cond_8

    float-to-double v12, v12

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    if-ne v7, v10, :cond_7

    iget-object v0, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget v0, v0, Lc/c/b/a/c/e;->t:F

    neg-float v0, v0

    move/from16 v29, v4

    move-object/from16 v28, v5

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v4, v26

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v0

    goto :goto_3

    :cond_7
    move/from16 v29, v4

    move-object/from16 v28, v5

    iget-object v0, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget v0, v0, Lc/c/b/a/c/e;->t:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v4, v26

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v0

    :goto_3
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v4

    double-to-float v0, v12

    goto :goto_5

    :cond_8
    move/from16 v29, v4

    move-object/from16 v28, v5

    move v0, v12

    goto :goto_5

    :cond_9
    move/from16 v29, v4

    move-object/from16 v28, v5

    if-ne v2, v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 37
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    :goto_4
    if-ne v7, v11, :cond_b

    .line 38
    iget-object v0, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget v0, v0, Lc/c/b/a/c/e;->t:F

    add-float/2addr v0, v1

    :goto_5
    move v12, v0

    goto :goto_6

    :cond_b
    move v12, v1

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto/16 :goto_20

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_10

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v0, 0x0

    goto :goto_9

    :cond_d
    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    if-ne v14, v9, :cond_e

    .line 39
    iget v0, v0, Lc/c/b/a/k/j;->d:F

    goto :goto_7

    .line 40
    :cond_e
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 41
    :goto_7
    iget-object v1, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget v1, v1, Lc/c/b/a/c/e;->u:F

    add-float v1, v1, v29

    sub-float/2addr v0, v1

    goto :goto_9

    :cond_f
    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 42
    iget v0, v0, Lc/c/b/a/k/j;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 43
    iget-object v2, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget v3, v2, Lc/c/b/a/c/e;->u:F

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    .line 44
    iget v1, v2, Lc/c/b/a/c/b;->c:F

    add-float/2addr v0, v1

    goto :goto_9

    :cond_10
    if-ne v14, v9, :cond_11

    const/4 v0, 0x0

    goto :goto_8

    .line 45
    :cond_11
    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 46
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    :goto_8
    add-float v0, v0, v29

    :goto_9
    move v9, v0

    move-object/from16 v5, v28

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 47
    :goto_a
    array-length v0, v5

    if-ge v4, v0, :cond_31

    aget-object v3, v5, v4

    iget-object v0, v3, Lc/c/b/a/c/f;->b:Lc/c/b/a/c/e$b;

    if-eq v0, v8, :cond_12

    const/16 v17, 0x1

    goto :goto_b

    :cond_12
    const/16 v17, 0x0

    :goto_b
    iget v0, v3, Lc/c/b/a/c/f;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    move/from16 v24, v18

    goto :goto_c

    :cond_13
    iget v0, v3, Lc/c/b/a/c/f;->c:F

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    move/from16 v24, v0

    :goto_c
    if-eqz v17, :cond_16

    if-ne v7, v10, :cond_14

    add-float v0, v12, v16

    goto :goto_d

    :cond_14
    sub-float v0, v24, v16

    sub-float v0, v12, v0

    :goto_d
    move/from16 v26, v0

    add-float v27, v9, v15

    iget-object v2, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    move-object/from16 v0, p0

    move/from16 v13, v19

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move/from16 v2, v26

    move-object/from16 v29, v3

    move/from16 v3, v27

    move/from16 v27, v15

    move/from16 v15, v20

    move/from16 v20, v4

    move-object/from16 v4, v29

    move/from16 v30, v12

    move-object v12, v5

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lc/c/b/a/j/i;->b(Landroid/graphics/Canvas;FFLc/c/b/a/c/f;Lc/c/b/a/c/e;)V

    if-ne v7, v10, :cond_15

    add-float v26, v26, v24

    :cond_15
    move-object/from16 v0, v29

    goto :goto_e

    :cond_16
    move/from16 v30, v12

    move/from16 v27, v15

    move/from16 v13, v19

    move/from16 v15, v20

    move/from16 v20, v4

    move-object v12, v5

    move-object v0, v3

    move/from16 v26, v30

    :goto_e
    iget-object v1, v0, Lc/c/b/a/c/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_1c

    if-eqz v17, :cond_18

    if-nez v14, :cond_18

    if-ne v7, v10, :cond_17

    move v4, v15

    goto :goto_f

    :cond_17
    neg-float v4, v15

    :goto_f
    add-float v26, v26, v4

    goto :goto_10

    :cond_18
    if-eqz v14, :cond_19

    move/from16 v26, v30

    :cond_19
    :goto_10
    if-ne v7, v11, :cond_1a

    iget-object v2, v6, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    invoke-static {v2, v1}, Lc/c/b/a/k/i;->c(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    sub-float v26, v26, v1

    :cond_1a
    move/from16 v1, v26

    if-nez v14, :cond_1b

    goto :goto_11

    :cond_1b
    add-float v2, v22, v21

    add-float/2addr v9, v2

    :goto_11
    add-float v2, v9, v22

    iget-object v0, v0, Lc/c/b/a/c/f;->a:Ljava/lang/String;

    .line 48
    iget-object v3, v6, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    move-object v5, v7

    move-object/from16 v7, p1

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v0, v22, v21

    add-float/2addr v0, v9

    move v9, v0

    const/16 v16, 0x0

    goto :goto_12

    :cond_1c
    move-object v5, v7

    move-object/from16 v7, p1

    add-float v24, v24, v13

    add-float v24, v24, v16

    move/from16 v16, v24

    const/4 v14, 0x1

    :goto_12
    add-int/lit8 v4, v20, 0x1

    move-object v7, v5

    move-object v5, v12

    move/from16 v19, v13

    move/from16 v20, v15

    move/from16 v15, v27

    move/from16 v12, v30

    goto/16 :goto_a

    :cond_1d
    move-object v5, v7

    move/from16 v30, v12

    move/from16 v27, v15

    move/from16 v13, v19

    move/from16 v15, v20

    move-object/from16 v12, v28

    move-object/from16 v7, p1

    .line 49
    iget-object v0, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    .line 50
    iget-object v4, v0, Lc/c/b/a/c/e;->z:Ljava/util/List;

    .line 51
    iget-object v2, v0, Lc/c/b/a/c/e;->x:Ljava/util/List;

    .line 52
    iget-object v1, v0, Lc/c/b/a/c/e;->y:Ljava/util/List;

    .line 53
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1e

    const/4 v0, 0x0

    goto :goto_13

    :cond_1e
    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 54
    iget v0, v0, Lc/c/b/a/k/j;->d:F

    sub-float v0, v0, v29

    .line 55
    iget-object v3, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget v3, v3, Lc/c/b/a/c/e;->u:F

    sub-float/2addr v0, v3

    goto :goto_13

    :cond_1f
    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 56
    iget v0, v0, Lc/c/b/a/k/j;->d:F

    .line 57
    iget-object v3, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    iget v3, v3, Lc/c/b/a/c/e;->u:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float v0, v0, v29

    goto :goto_13

    :cond_20
    move/from16 v0, v29

    :goto_13
    array-length v3, v12

    move-object/from16 v23, v2

    move/from16 v19, v13

    move/from16 v20, v30

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_14
    if-ge v13, v3, :cond_31

    aget-object v7, v12, v13

    move/from16 v24, v3

    iget-object v3, v7, Lc/c/b/a/c/f;->b:Lc/c/b/a/c/e$b;

    if-eq v3, v8, :cond_21

    const/16 v26, 0x1

    goto :goto_15

    :cond_21
    const/16 v26, 0x0

    :goto_15
    iget v3, v7, Lc/c/b/a/c/f;->c:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_22

    move/from16 v29, v18

    goto :goto_16

    :cond_22
    iget v3, v7, Lc/c/b/a/c/f;->c:F

    invoke-static {v3}, Lc/c/b/a/k/i;->d(F)F

    move-result v3

    move/from16 v29, v3

    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_23

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    add-float v3, v22, v21

    add-float/2addr v3, v0

    move/from16 v20, v3

    move/from16 v0, v30

    goto :goto_17

    :cond_23
    move/from16 v38, v20

    move/from16 v20, v0

    move/from16 v0, v38

    :goto_17
    cmpl-float v3, v0, v30

    if-nez v3, :cond_25

    if-ne v14, v9, :cond_25

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/b/a/k/b;

    iget v3, v3, Lc/c/b/a/k/b;->b:F

    if-ne v5, v11, :cond_24

    goto :goto_18

    :cond_24
    neg-float v3, v3

    :goto_18
    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, v3, v16

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_25
    const/high16 v16, 0x40000000    # 2.0f

    :goto_19
    move/from16 v31, v2

    iget-object v2, v7, Lc/c/b/a/c/f;->a:Ljava/lang/String;

    if-nez v2, :cond_26

    const/16 v32, 0x1

    goto :goto_1a

    :cond_26
    const/16 v32, 0x0

    :goto_1a
    if-eqz v26, :cond_29

    if-ne v5, v11, :cond_27

    sub-float v0, v0, v29

    :cond_27
    move/from16 v33, v0

    add-float v3, v20, v27

    iget-object v2, v6, Lc/c/b/a/j/i;->d:Lc/c/b/a/c/e;

    move-object/from16 v0, p0

    move-object/from16 v34, v1

    move-object/from16 v1, p1

    move-object/from16 v35, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v2

    move/from16 v2, v33

    move-object/from16 v36, v9

    move/from16 v9, v17

    move/from16 v17, v24

    const/16 v24, 0x1

    move-object/from16 v25, v4

    move-object v4, v7

    move-object/from16 v37, v12

    move-object v12, v5

    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lc/c/b/a/j/i;->b(Landroid/graphics/Canvas;FFLc/c/b/a/c/f;Lc/c/b/a/c/e;)V

    if-ne v12, v10, :cond_28

    add-float v0, v33, v29

    goto :goto_1b

    :cond_28
    move/from16 v0, v33

    goto :goto_1b

    :cond_29
    move-object/from16 v34, v1

    move-object/from16 v25, v4

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v12

    move/from16 v9, v17

    move-object/from16 v8, v23

    move/from16 v17, v24

    const/16 v24, 0x1

    move-object v12, v5

    :goto_1b
    if-nez v32, :cond_2f

    if-eqz v26, :cond_2b

    if-ne v12, v11, :cond_2a

    neg-float v4, v15

    goto :goto_1c

    :cond_2a
    move v4, v15

    :goto_1c
    add-float/2addr v0, v4

    :cond_2b
    if-ne v12, v11, :cond_2c

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/k/b;

    iget v1, v1, Lc/c/b/a/k/b;->b:F

    sub-float/2addr v0, v1

    :cond_2c
    add-float v1, v20, v22

    iget-object v2, v7, Lc/c/b/a/c/f;->a:Ljava/lang/String;

    .line 58
    iget-object v3, v6, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-ne v12, v10, :cond_2d

    .line 59
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/k/b;

    iget v1, v1, Lc/c/b/a/k/b;->b:F

    add-float/2addr v0, v1

    :cond_2d
    if-ne v12, v11, :cond_2e

    neg-float v3, v9

    goto :goto_1d

    :cond_2e
    move v3, v9

    :goto_1d
    add-float/2addr v0, v3

    move/from16 v1, v19

    goto :goto_1f

    :cond_2f
    move-object/from16 v4, p1

    move/from16 v1, v19

    if-ne v12, v11, :cond_30

    neg-float v2, v1

    goto :goto_1e

    :cond_30
    move v2, v1

    :goto_1e
    add-float/2addr v0, v2

    :goto_1f
    add-int/lit8 v13, v13, 0x1

    move/from16 v19, v1

    move-object v7, v4

    move-object/from16 v23, v8

    move-object v5, v12

    move/from16 v3, v17

    move-object/from16 v4, v25

    move/from16 v2, v31

    move-object/from16 v1, v34

    move-object/from16 v8, v35

    move-object/from16 v12, v37

    move/from16 v17, v9

    move-object/from16 v9, v36

    move/from16 v38, v20

    move/from16 v20, v0

    move/from16 v0, v38

    goto/16 :goto_14

    :cond_31
    :goto_20
    return-void
.end method
