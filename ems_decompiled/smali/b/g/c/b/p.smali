.class public Lb/g/c/b/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lb/g/c/b/p;",
        ">;"
    }
.end annotation


# static fields
.field public static t:[Ljava/lang/String;


# instance fields
.field public c:Lb/g/a/h/a/c;

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:I

.field public n:F

.field public o:Lb/g/c/b/n;

.field public p:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lb/g/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:[D

.field public s:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/g/c/b/p;->t:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/g/c/b/p;->d:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lb/g/c/b/p;->k:F

    const/4 v2, -0x1

    iput v2, p0, Lb/g/c/b/p;->l:I

    iput v2, p0, Lb/g/c/b/p;->m:I

    iput v1, p0, Lb/g/c/b/p;->n:F

    const/4 v1, 0x0

    iput-object v1, p0, Lb/g/c/b/p;->o:Lb/g/c/b/n;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    iput v0, p0, Lb/g/c/b/p;->q:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Lb/g/c/b/p;->r:[D

    new-array v0, v0, [D

    iput-object v0, p0, Lb/g/c/b/p;->s:[D

    return-void
.end method

.method public constructor <init>(IILb/g/c/b/h;Lb/g/c/b/p;Lb/g/c/b/p;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput v4, v0, Lb/g/c/b/p;->d:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    iput v5, v0, Lb/g/c/b/p;->k:F

    const/4 v6, -0x1

    iput v6, v0, Lb/g/c/b/p;->l:I

    iput v6, v0, Lb/g/c/b/p;->m:I

    iput v5, v0, Lb/g/c/b/p;->n:F

    const/4 v5, 0x0

    iput-object v5, v0, Lb/g/c/b/p;->o:Lb/g/c/b/n;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, v0, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    iput v4, v0, Lb/g/c/b/p;->q:I

    const/16 v4, 0x12

    new-array v5, v4, [D

    iput-object v5, v0, Lb/g/c/b/p;->r:[D

    new-array v4, v4, [D

    iput-object v4, v0, Lb/g/c/b/p;->s:[D

    iget v4, v2, Lb/g/c/b/p;->m:I

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    if-eq v4, v6, :cond_9

    .line 1
    iget v4, v1, Lb/g/c/b/d;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    iput v4, v0, Lb/g/c/b/p;->e:F

    iget v6, v1, Lb/g/c/b/h;->i:I

    iput v6, v0, Lb/g/c/b/p;->d:I

    iget v6, v1, Lb/g/c/b/h;->p:I

    iput v6, v0, Lb/g/c/b/p;->q:I

    iget v6, v1, Lb/g/c/b/h;->j:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    iget v6, v1, Lb/g/c/b/h;->j:F

    :goto_0
    iget v8, v1, Lb/g/c/b/h;->k:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    iget v8, v1, Lb/g/c/b/h;->k:F

    :goto_1
    iget v9, v3, Lb/g/c/b/p;->i:F

    iget v10, v2, Lb/g/c/b/p;->i:F

    sub-float/2addr v9, v10

    iget v11, v3, Lb/g/c/b/p;->j:F

    iget v12, v2, Lb/g/c/b/p;->j:F

    sub-float/2addr v11, v12

    iget v13, v0, Lb/g/c/b/p;->e:F

    iput v13, v0, Lb/g/c/b/p;->f:F

    mul-float v9, v9, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v0, Lb/g/c/b/p;->i:F

    mul-float v11, v11, v8

    add-float/2addr v11, v12

    float-to-int v9, v11

    int-to-float v9, v9

    iput v9, v0, Lb/g/c/b/p;->j:F

    iget v9, v1, Lb/g/c/b/h;->p:I

    if-eq v9, v7, :cond_6

    if-eq v9, v5, :cond_3

    iget v5, v1, Lb/g/c/b/h;->l:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    iget v5, v1, Lb/g/c/b/h;->l:F

    :goto_2
    iget v6, v3, Lb/g/c/b/p;->g:F

    iget v7, v2, Lb/g/c/b/p;->g:F

    invoke-static {v6, v7, v5, v7}, Lc/a/a/a/a;->a(FFFF)F

    move-result v5

    iput v5, v0, Lb/g/c/b/p;->g:F

    iget v5, v1, Lb/g/c/b/h;->m:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_3
    iget v5, v1, Lb/g/c/b/h;->l:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v3, Lb/g/c/b/p;->g:F

    iget v6, v2, Lb/g/c/b/p;->g:F

    invoke-static {v5, v6, v4, v6}, Lc/a/a/a/a;->a(FFFF)F

    move-result v5

    goto :goto_3

    :cond_4
    iget v5, v1, Lb/g/c/b/h;->l:F

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v5, v5, v6

    :goto_3
    iput v5, v0, Lb/g/c/b/p;->g:F

    iget v5, v1, Lb/g/c/b/h;->m:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    iget v3, v1, Lb/g/c/b/h;->m:F

    goto :goto_6

    :cond_6
    iget v5, v1, Lb/g/c/b/h;->l:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_4

    :cond_7
    iget v5, v1, Lb/g/c/b/h;->l:F

    :goto_4
    iget v6, v3, Lb/g/c/b/p;->g:F

    iget v7, v2, Lb/g/c/b/p;->g:F

    invoke-static {v6, v7, v5, v7}, Lc/a/a/a/a;->a(FFFF)F

    move-result v5

    iput v5, v0, Lb/g/c/b/p;->g:F

    iget v5, v1, Lb/g/c/b/h;->m:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    iget v4, v1, Lb/g/c/b/h;->m:F

    :goto_5
    iget v3, v3, Lb/g/c/b/p;->h:F

    iget v5, v2, Lb/g/c/b/p;->h:F

    invoke-static {v3, v5, v4, v5}, Lc/a/a/a/a;->a(FFFF)F

    move-result v3

    :goto_6
    iput v3, v0, Lb/g/c/b/p;->h:F

    iget v2, v2, Lb/g/c/b/p;->m:I

    iput v2, v0, Lb/g/c/b/p;->m:I

    iget-object v2, v1, Lb/g/c/b/h;->g:Ljava/lang/String;

    invoke-static {v2}, Lb/g/a/h/a/c;->c(Ljava/lang/String;)Lb/g/a/h/a/c;

    move-result-object v2

    iput-object v2, v0, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    iget v1, v1, Lb/g/c/b/h;->h:I

    iput v1, v0, Lb/g/c/b/p;->l:I

    return-void

    .line 2
    :cond_9
    iget v4, v1, Lb/g/c/b/h;->p:I

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v4, v7, :cond_15

    if-eq v4, v5, :cond_10

    .line 3
    iget v4, v1, Lb/g/c/b/d;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    iput v4, v0, Lb/g/c/b/p;->e:F

    iget v5, v1, Lb/g/c/b/h;->i:I

    iput v5, v0, Lb/g/c/b/p;->d:I

    iget v5, v1, Lb/g/c/b/h;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v4

    goto :goto_7

    :cond_a
    iget v5, v1, Lb/g/c/b/h;->j:F

    :goto_7
    iget v7, v1, Lb/g/c/b/h;->k:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v4

    goto :goto_8

    :cond_b
    iget v7, v1, Lb/g/c/b/h;->k:F

    :goto_8
    iget v8, v3, Lb/g/c/b/p;->i:F

    iget v9, v2, Lb/g/c/b/p;->i:F

    sub-float v10, v8, v9

    iget v11, v3, Lb/g/c/b/p;->j:F

    iget v12, v2, Lb/g/c/b/p;->j:F

    sub-float v13, v11, v12

    iget v14, v0, Lb/g/c/b/p;->e:F

    iput v14, v0, Lb/g/c/b/p;->f:F

    iget v14, v2, Lb/g/c/b/p;->g:F

    div-float v15, v9, v6

    add-float/2addr v15, v14

    iget v1, v2, Lb/g/c/b/p;->h:F

    div-float v16, v12, v6

    add-float v16, v16, v1

    iget v2, v3, Lb/g/c/b/p;->g:F

    div-float/2addr v8, v6

    add-float/2addr v8, v2

    iget v2, v3, Lb/g/c/b/p;->h:F

    div-float/2addr v11, v6

    add-float/2addr v11, v2

    sub-float/2addr v8, v15

    sub-float v11, v11, v16

    mul-float v2, v8, v4

    add-float/2addr v2, v14

    mul-float v10, v10, v5

    div-float v3, v10, v6

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Lb/g/c/b/p;->g:F

    mul-float v2, v11, v4

    add-float/2addr v2, v1

    mul-float v13, v13, v7

    div-float v1, v13, v6

    sub-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Lb/g/c/b/p;->h:F

    add-float/2addr v9, v10

    float-to-int v2, v9

    int-to-float v2, v2

    iput v2, v0, Lb/g/c/b/p;->i:F

    add-float/2addr v12, v13

    float-to-int v2, v12

    int-to-float v2, v2

    iput v2, v0, Lb/g/c/b/p;->j:F

    move-object/from16 v2, p3

    iget v5, v2, Lb/g/c/b/h;->l:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_9

    :cond_c
    iget v5, v2, Lb/g/c/b/h;->l:F

    :goto_9
    iget v6, v2, Lb/g/c/b/h;->o:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_a

    :cond_d
    iget v6, v2, Lb/g/c/b/h;->o:F

    :goto_a
    iget v7, v2, Lb/g/c/b/h;->m:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_b

    :cond_e
    iget v4, v2, Lb/g/c/b/h;->m:F

    :goto_b
    iget v7, v2, Lb/g/c/b/h;->n:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_c

    :cond_f
    iget v9, v2, Lb/g/c/b/h;->n:F

    const/4 v7, 0x0

    :goto_c
    iput v7, v0, Lb/g/c/b/p;->q:I

    move-object/from16 v7, p4

    iget v10, v7, Lb/g/c/b/p;->g:F

    mul-float v5, v5, v8

    add-float/2addr v5, v10

    mul-float v9, v9, v11

    add-float/2addr v9, v5

    sub-float/2addr v9, v3

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v0, Lb/g/c/b/p;->g:F

    iget v3, v7, Lb/g/c/b/p;->h:F

    mul-float v8, v8, v6

    add-float/2addr v8, v3

    mul-float v11, v11, v4

    add-float/2addr v11, v8

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    iput v1, v0, Lb/g/c/b/p;->h:F

    iget-object v1, v2, Lb/g/c/b/h;->g:Ljava/lang/String;

    invoke-static {v1}, Lb/g/a/h/a/c;->c(Ljava/lang/String;)Lb/g/a/h/a/c;

    move-result-object v1

    iput-object v1, v0, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    iget v1, v2, Lb/g/c/b/h;->h:I

    iput v1, v0, Lb/g/c/b/p;->l:I

    return-void

    :cond_10
    move-object v7, v2

    move-object v2, v1

    .line 4
    iget v1, v2, Lb/g/c/b/d;->a:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, v0, Lb/g/c/b/p;->e:F

    iget v4, v2, Lb/g/c/b/h;->i:I

    iput v4, v0, Lb/g/c/b/p;->d:I

    iget v4, v2, Lb/g/c/b/h;->j:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v1

    goto :goto_d

    :cond_11
    iget v4, v2, Lb/g/c/b/h;->j:F

    :goto_d
    iget v5, v2, Lb/g/c/b/h;->k:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v1

    goto :goto_e

    :cond_12
    iget v5, v2, Lb/g/c/b/h;->k:F

    :goto_e
    iget v8, v3, Lb/g/c/b/p;->i:F

    iget v9, v7, Lb/g/c/b/p;->i:F

    sub-float v10, v8, v9

    iget v11, v3, Lb/g/c/b/p;->j:F

    iget v12, v7, Lb/g/c/b/p;->j:F

    sub-float v13, v11, v12

    iget v14, v0, Lb/g/c/b/p;->e:F

    iput v14, v0, Lb/g/c/b/p;->f:F

    iget v14, v7, Lb/g/c/b/p;->g:F

    div-float v15, v9, v6

    add-float/2addr v15, v14

    iget v7, v7, Lb/g/c/b/p;->h:F

    div-float v16, v12, v6

    add-float v16, v16, v7

    iget v2, v3, Lb/g/c/b/p;->g:F

    div-float/2addr v8, v6

    add-float/2addr v8, v2

    iget v2, v3, Lb/g/c/b/p;->h:F

    div-float/2addr v11, v6

    add-float/2addr v11, v2

    sub-float/2addr v8, v15

    sub-float v11, v11, v16

    mul-float v8, v8, v1

    add-float/2addr v8, v14

    mul-float v10, v10, v4

    div-float v2, v10, v6

    sub-float/2addr v8, v2

    float-to-int v2, v8

    int-to-float v2, v2

    iput v2, v0, Lb/g/c/b/p;->g:F

    mul-float v11, v11, v1

    add-float/2addr v11, v7

    mul-float v13, v13, v5

    div-float v1, v13, v6

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    iput v1, v0, Lb/g/c/b/p;->h:F

    add-float/2addr v9, v10

    float-to-int v1, v9

    int-to-float v1, v1

    iput v1, v0, Lb/g/c/b/p;->i:F

    add-float/2addr v12, v13

    float-to-int v1, v12

    int-to-float v1, v1

    iput v1, v0, Lb/g/c/b/p;->j:F

    const/4 v1, 0x2

    iput v1, v0, Lb/g/c/b/p;->q:I

    move-object/from16 v1, p3

    iget v2, v1, Lb/g/c/b/h;->l:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_13

    move/from16 v2, p1

    int-to-float v2, v2

    iget v3, v0, Lb/g/c/b/p;->i:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v1, Lb/g/c/b/h;->l:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Lb/g/c/b/p;->g:F

    :cond_13
    iget v2, v1, Lb/g/c/b/h;->m:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_14

    move/from16 v2, p2

    int-to-float v2, v2

    iget v3, v0, Lb/g/c/b/p;->j:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v1, Lb/g/c/b/h;->m:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Lb/g/c/b/p;->h:F

    :cond_14
    iget v2, v0, Lb/g/c/b/p;->m:I

    iput v2, v0, Lb/g/c/b/p;->m:I

    iget-object v2, v1, Lb/g/c/b/h;->g:Ljava/lang/String;

    invoke-static {v2}, Lb/g/a/h/a/c;->c(Ljava/lang/String;)Lb/g/a/h/a/c;

    move-result-object v2

    iput-object v2, v0, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    iget v1, v1, Lb/g/c/b/h;->h:I

    iput v1, v0, Lb/g/c/b/p;->l:I

    return-void

    :cond_15
    move-object v7, v2

    .line 5
    iget v2, v1, Lb/g/c/b/d;->a:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    iput v2, v0, Lb/g/c/b/p;->e:F

    iget v4, v1, Lb/g/c/b/h;->i:I

    iput v4, v0, Lb/g/c/b/p;->d:I

    iget v4, v1, Lb/g/c/b/h;->j:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v2

    goto :goto_f

    :cond_16
    iget v4, v1, Lb/g/c/b/h;->j:F

    :goto_f
    iget v5, v1, Lb/g/c/b/h;->k:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_17

    move v5, v2

    goto :goto_10

    :cond_17
    iget v5, v1, Lb/g/c/b/h;->k:F

    :goto_10
    iget v8, v3, Lb/g/c/b/p;->i:F

    iget v9, v7, Lb/g/c/b/p;->i:F

    sub-float/2addr v8, v9

    iget v9, v3, Lb/g/c/b/p;->j:F

    iget v10, v7, Lb/g/c/b/p;->j:F

    sub-float/2addr v9, v10

    iget v10, v0, Lb/g/c/b/p;->e:F

    iput v10, v0, Lb/g/c/b/p;->f:F

    iget v10, v1, Lb/g/c/b/h;->l:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_11

    :cond_18
    iget v2, v1, Lb/g/c/b/h;->l:F

    :goto_11
    iget v10, v7, Lb/g/c/b/p;->g:F

    iget v11, v7, Lb/g/c/b/p;->i:F

    div-float v12, v11, v6

    add-float/2addr v12, v10

    iget v13, v7, Lb/g/c/b/p;->h:F

    iget v14, v7, Lb/g/c/b/p;->j:F

    div-float v15, v14, v6

    add-float/2addr v15, v13

    iget v7, v3, Lb/g/c/b/p;->g:F

    iget v1, v3, Lb/g/c/b/p;->i:F

    div-float/2addr v1, v6

    add-float/2addr v1, v7

    iget v7, v3, Lb/g/c/b/p;->h:F

    iget v3, v3, Lb/g/c/b/p;->j:F

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    sub-float/2addr v1, v12

    sub-float/2addr v3, v15

    mul-float v7, v1, v2

    add-float/2addr v10, v7

    mul-float v8, v8, v4

    div-float v4, v8, v6

    sub-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v10, v10

    iput v10, v0, Lb/g/c/b/p;->g:F

    mul-float v2, v2, v3

    add-float/2addr v13, v2

    mul-float v9, v9, v5

    div-float v5, v9, v6

    sub-float/2addr v13, v5

    float-to-int v6, v13

    int-to-float v6, v6

    iput v6, v0, Lb/g/c/b/p;->h:F

    add-float/2addr v11, v8

    float-to-int v6, v11

    int-to-float v6, v6

    iput v6, v0, Lb/g/c/b/p;->i:F

    add-float/2addr v14, v9

    float-to-int v6, v14

    int-to-float v6, v6

    iput v6, v0, Lb/g/c/b/p;->j:F

    move-object/from16 v6, p3

    iget v8, v6, Lb/g/c/b/h;->m:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v8, 0x0

    goto :goto_12

    :cond_19
    iget v8, v6, Lb/g/c/b/h;->m:F

    :goto_12
    neg-float v3, v3

    mul-float v3, v3, v8

    mul-float v1, v1, v8

    const/4 v8, 0x1

    iput v8, v0, Lb/g/c/b/p;->q:I

    move-object/from16 v8, p4

    iget v9, v8, Lb/g/c/b/p;->g:F

    add-float/2addr v9, v7

    sub-float/2addr v9, v4

    float-to-int v4, v9

    int-to-float v4, v4

    iput v4, v0, Lb/g/c/b/p;->g:F

    iget v7, v8, Lb/g/c/b/p;->h:F

    add-float/2addr v7, v2

    sub-float/2addr v7, v5

    float-to-int v2, v7

    int-to-float v2, v2

    iput v2, v0, Lb/g/c/b/p;->h:F

    add-float/2addr v4, v3

    iput v4, v0, Lb/g/c/b/p;->g:F

    add-float/2addr v2, v1

    iput v2, v0, Lb/g/c/b/p;->h:F

    iget v1, v0, Lb/g/c/b/p;->m:I

    iput v1, v0, Lb/g/c/b/p;->m:I

    iget-object v1, v6, Lb/g/c/b/h;->g:Ljava/lang/String;

    invoke-static {v1}, Lb/g/a/h/a/c;->c(Ljava/lang/String;)Lb/g/a/h/a/c;

    move-result-object v1

    iput-object v1, v0, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    iget v1, v6, Lb/g/c/b/h;->h:I

    iput v1, v0, Lb/g/c/b/p;->l:I

    return-void
.end method


# virtual methods
.method public a(Lb/g/d/c$a;)V
    .locals 4

    iget-object v0, p1, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget-object v0, v0, Lb/g/d/c$c;->d:Ljava/lang/String;

    invoke-static {v0}, Lb/g/a/h/a/c;->c(Ljava/lang/String;)Lb/g/a/h/a/c;

    move-result-object v0

    iput-object v0, p0, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    iget-object v0, p1, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v1, v0, Lb/g/d/c$c;->e:I

    iput v1, p0, Lb/g/c/b/p;->l:I

    iget v1, v0, Lb/g/d/c$c;->b:I

    iput v1, p0, Lb/g/c/b/p;->m:I

    iget v1, v0, Lb/g/d/c$c;->i:F

    iput v1, p0, Lb/g/c/b/p;->k:F

    iget v1, v0, Lb/g/d/c$c;->f:I

    iput v1, p0, Lb/g/c/b/p;->d:I

    iget v0, v0, Lb/g/d/c$c;->c:I

    iget-object v0, p1, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v0, v0, Lb/g/d/c$d;->e:F

    iget-object v0, p1, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v0, v0, Lb/g/d/c$b;->B:F

    iput v0, p0, Lb/g/c/b/p;->n:F

    iget-object v0, p1, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/d/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lb/g/d/a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lb/g/c/b/p;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lb/g/c/b/p;

    .line 1
    iget v0, p0, Lb/g/c/b/p;->f:F

    iget p1, p1, Lb/g/c/b/p;->f:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public final d(FF)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x358637bd    # 1.0E-6f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eq p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public e(D[I[D[FI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    iget v2, v0, Lb/g/c/b/p;->g:F

    iget v3, v0, Lb/g/c/b/p;->h:F

    iget v4, v0, Lb/g/c/b/p;->i:F

    iget v5, v0, Lb/g/c/b/p;->j:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v8, v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v8, :cond_4

    aget-wide v11, p4, v7

    double-to-float v8, v11

    aget v11, v1, v7

    if-eq v11, v10, :cond_3

    if-eq v11, v9, :cond_2

    const/4 v9, 0x3

    if-eq v11, v9, :cond_1

    const/4 v9, 0x4

    if-eq v11, v9, :cond_0

    goto :goto_1

    :cond_0
    move v5, v8

    goto :goto_1

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    move v3, v8

    goto :goto_1

    :cond_3
    move v2, v8

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lb/g/c/b/p;->o:Lb/g/c/b/n;

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    new-array v8, v9, [F

    new-array v9, v9, [F

    move-wide/from16 v11, p1

    invoke-virtual {v1, v11, v12, v8, v9}, Lb/g/c/b/n;->b(D[F[F)V

    aget v1, v8, v6

    aget v6, v8, v10

    float-to-double v8, v1

    float-to-double v1, v2

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v8

    div-float v3, v4, v7

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v8

    double-to-float v3, v13

    float-to-double v8, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v11

    div-float v1, v5, v7

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v1

    double-to-float v1, v8

    move v2, v3

    move v3, v1

    :cond_5
    div-float/2addr v4, v7

    add-float/2addr v4, v2

    const/4 v1, 0x0

    add-float/2addr v4, v1

    aput v4, p5, p6

    add-int/lit8 v2, p6, 0x1

    div-float/2addr v5, v7

    add-float/2addr v5, v3

    add-float/2addr v5, v1

    aput v5, p5, v2

    return-void
.end method

.method public g(FFFF)V
    .locals 0

    iput p1, p0, Lb/g/c/b/p;->g:F

    iput p2, p0, Lb/g/c/b/p;->h:F

    iput p3, p0, Lb/g/c/b/p;->i:F

    iput p4, p0, Lb/g/c/b/p;->j:F

    return-void
.end method

.method public j(FF[F[I[D[D)V
    .locals 12

    move-object/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v8, v0

    const/4 v9, 0x1

    if-ge v3, v8, :cond_4

    aget-wide v10, p5, v3

    double-to-float v8, v10

    aget-wide v10, p6, v3

    aget v10, v0, v3

    if-eq v10, v9, :cond_3

    const/4 v9, 0x2

    if-eq v10, v9, :cond_2

    const/4 v9, 0x3

    if-eq v10, v9, :cond_1

    const/4 v9, 0x4

    if-eq v10, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v8

    goto :goto_1

    :cond_1
    move v5, v8

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v4, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    mul-float v0, v2, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    mul-float v0, v2, v7

    div-float/2addr v0, v3

    sub-float/2addr v6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v5, v5, v0

    mul-float v7, v7, v0

    add-float/2addr v5, v4

    add-float/2addr v7, v6

    sub-float v3, v0, p1

    mul-float v3, v3, v4

    mul-float v5, v5, p1

    add-float/2addr v5, v3

    add-float/2addr v5, v2

    aput v5, p3, v1

    sub-float/2addr v0, p2

    mul-float v0, v0, v6

    mul-float v7, v7, p2

    add-float/2addr v7, v0

    add-float/2addr v7, v2

    aput v7, p3, v9

    return-void
.end method

.method public k(Lb/g/c/b/n;Lb/g/c/b/p;)V
    .locals 5

    iget v0, p0, Lb/g/c/b/p;->g:F

    iget v1, p0, Lb/g/c/b/p;->i:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p2, Lb/g/c/b/p;->g:F

    sub-float/2addr v1, v0

    iget v0, p2, Lb/g/c/b/p;->i:F

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-double v0, v1

    iget v3, p0, Lb/g/c/b/p;->h:F

    iget v4, p0, Lb/g/c/b/p;->j:F

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    iget v3, p2, Lb/g/c/b/p;->h:F

    sub-float/2addr v4, v3

    iget p2, p2, Lb/g/c/b/p;->j:F

    div-float/2addr p2, v2

    sub-float/2addr v4, p2

    float-to-double v2, v4

    iput-object p1, p0, Lb/g/c/b/p;->o:Lb/g/c/b/n;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lb/g/c/b/p;->g:F

    iget p1, p0, Lb/g/c/b/p;->n:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lb/g/c/b/p;->n:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    :goto_0
    double-to-float p1, p1

    iput p1, p0, Lb/g/c/b/p;->h:F

    return-void
.end method
