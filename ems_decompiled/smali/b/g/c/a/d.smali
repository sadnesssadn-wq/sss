.class public abstract Lb/g/c/a/d;
.super Lb/g/a/h/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/c/a/d$e;,
        Lb/g/c/a/d$b;,
        Lb/g/c/a/d$m;,
        Lb/g/c/a/d$l;,
        Lb/g/c/a/d$k;,
        Lb/g/c/a/d$j;,
        Lb/g/c/a/d$i;,
        Lb/g/c/a/d$d;,
        Lb/g/c/a/d$h;,
        Lb/g/c/a/d$g;,
        Lb/g/c/a/d$f;,
        Lb/g/c/a/d$a;,
        Lb/g/c/a/d$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/g/a/h/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public d(FJLandroid/view/View;Lb/g/a/h/a/d;)F
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Lb/g/a/h/a/o;->a:Lb/g/a/h/a/b;

    move/from16 v6, p1

    float-to-double v6, v6

    iget-object v8, v0, Lb/g/a/h/a/o;->g:[F

    invoke-virtual {v5, v6, v7, v8}, Lb/g/a/h/a/b;->d(D[F)V

    iget-object v5, v0, Lb/g/a/h/a/o;->g:[F

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmpl-float v11, v7, v9

    if-nez v11, :cond_0

    iput-boolean v10, v0, Lb/g/a/h/a/o;->h:Z

    aget v1, v5, v8

    return v1

    :cond_0
    iget v5, v0, Lb/g/a/h/a/o;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lb/g/a/h/a/o;->f:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v10}, Lb/g/a/h/a/d;->a(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v5

    iput v5, v0, Lb/g/a/h/a/o;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v9, v0, Lb/g/a/h/a/o;->j:F

    :cond_1
    iget-wide v11, v0, Lb/g/a/h/a/o;->i:J

    sub-long v11, v1, v11

    iget v5, v0, Lb/g/a/h/a/o;->j:F

    float-to-double v13, v5

    long-to-double v11, v11

    const-wide v15, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v15

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v13

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v11, v8

    double-to-float v8, v11

    iput v8, v0, Lb/g/a/h/a/o;->j:F

    iget-object v9, v0, Lb/g/a/h/a/o;->f:Ljava/lang/String;

    .line 1
    iget-object v11, v4, Lb/g/a/h/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-array v12, v6, [F

    aput v8, v12, v10

    invoke-virtual {v11, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v11, v4, Lb/g/a/h/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    if-nez v11, :cond_3

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    :cond_3
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    new-array v12, v6, [F

    aput v8, v12, v10

    invoke-virtual {v11, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v4, v4, Lb/g/a/h/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    if-nez v3, :cond_5

    new-array v3, v10, [F

    :cond_5
    array-length v4, v3

    if-gtz v4, :cond_6

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    :cond_6
    aput v8, v3, v10

    invoke-virtual {v11, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_1
    iput-wide v1, v0, Lb/g/a/h/a/o;->i:J

    iget-object v1, v0, Lb/g/a/h/a/o;->g:[F

    aget v1, v1, v10

    iget v2, v0, Lb/g/a/h/a/o;->j:F

    invoke-virtual {v0, v2}, Lb/g/a/h/a/o;->a(F)F

    move-result v2

    iget-object v3, v0, Lb/g/a/h/a/o;->g:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_8

    cmpl-float v1, v7, v3

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :cond_8
    :goto_2
    iput-boolean v6, v0, Lb/g/a/h/a/o;->h:Z

    return v2
.end method

.method public abstract e(Landroid/view/View;FJLb/g/a/h/a/d;)Z
.end method
