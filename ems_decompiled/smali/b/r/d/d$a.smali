.class public Lb/r/d/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/r/d/d;->b(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Runnable;

.field public final synthetic g:Lb/r/d/d;


# direct methods
.method public constructor <init>(Lb/r/d/d;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lb/r/d/d$a;->g:Lb/r/d/d;

    iput-object p2, p0, Lb/r/d/d$a;->c:Ljava/util/List;

    iput-object p3, p0, Lb/r/d/d$a;->d:Ljava/util/List;

    iput p4, p0, Lb/r/d/d$a;->e:I

    iput-object p5, p0, Lb/r/d/d$a;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    move-object/from16 v0, p0

    new-instance v2, Lb/r/d/d$a$a;

    invoke-direct {v2, v0}, Lb/r/d/d$a$a;-><init>(Lb/r/d/d$a;)V

    .line 1
    iget-object v1, v0, Lb/r/d/d$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2
    iget-object v3, v2, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v3, v3, Lb/r/d/d$a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lb/r/d/h$f;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1, v7, v3}, Lb/r/d/h$f;-><init>(IIII)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v6, v1, v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v6

    mul-int/lit8 v3, v1, 0x2

    new-array v6, v3, [I

    new-array v8, v3, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/r/d/h$f;

    iget v11, v9, Lb/r/d/h$f;->a:I

    iget v12, v9, Lb/r/d/h$f;->b:I

    iget v13, v9, Lb/r/d/h$f;->c:I

    iget v14, v9, Lb/r/d/h$f;->d:I

    sub-int/2addr v12, v11

    sub-int/2addr v14, v13

    if-lt v12, v10, :cond_11

    if-ge v14, v10, :cond_0

    goto/16 :goto_c

    :cond_0
    sub-int v15, v12, v14

    add-int v16, v12, v14

    add-int/lit8 v16, v16, 0x1

    .line 4
    div-int/lit8 v7, v16, 0x2

    sub-int v16, v1, v7

    add-int/lit8 v0, v16, -0x1

    add-int v16, v1, v7

    move-object/from16 v17, v5

    add-int/lit8 v5, v16, 0x1

    const/4 v10, 0x0

    invoke-static {v6, v0, v5, v10}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v0, v15

    add-int/2addr v5, v15

    invoke-static {v8, v0, v5, v12}, Ljava/util/Arrays;->fill([IIII)V

    rem-int/lit8 v0, v15, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-gt v5, v7, :cond_10

    neg-int v10, v5

    move/from16 v18, v7

    move v7, v10

    :goto_3
    if-gt v7, v5, :cond_8

    if-eq v7, v10, :cond_4

    if-eq v7, v5, :cond_2

    add-int v19, v1, v7

    add-int/lit8 v20, v19, -0x1

    move-object/from16 v21, v3

    aget v3, v6, v20

    const/16 v16, 0x1

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v20, v9

    aget v9, v6, v19

    if-ge v3, v9, :cond_3

    goto :goto_4

    :cond_2
    move-object/from16 v21, v3

    move-object/from16 v20, v9

    const/16 v16, 0x1

    :cond_3
    add-int v3, v1, v7

    add-int/lit8 v3, v3, -0x1

    aget v3, v6, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v21, v3

    move-object/from16 v20, v9

    const/16 v16, 0x1

    :goto_4
    add-int v3, v1, v7

    add-int/lit8 v3, v3, 0x1

    aget v3, v6, v3

    const/4 v9, 0x0

    :goto_5
    sub-int v19, v3, v7

    move/from16 v26, v19

    move-object/from16 v19, v4

    move/from16 v4, v26

    :goto_6
    if-ge v3, v12, :cond_5

    if-ge v4, v14, :cond_5

    move/from16 v22, v12

    add-int v12, v11, v3

    move/from16 v23, v14

    add-int v14, v13, v4

    invoke-virtual {v2, v12, v14}, Lb/r/d/d$a$a;->b(II)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v22

    move/from16 v14, v23

    goto :goto_6

    :cond_5
    move/from16 v22, v12

    move/from16 v23, v14

    :cond_6
    add-int v4, v1, v7

    aput v3, v6, v4

    if-eqz v0, :cond_7

    sub-int v3, v15, v5

    const/4 v12, 0x1

    add-int/2addr v3, v12

    if-lt v7, v3, :cond_7

    add-int v3, v15, v5

    sub-int/2addr v3, v12

    if-gt v7, v3, :cond_7

    aget v3, v6, v4

    aget v12, v8, v4

    if-lt v3, v12, :cond_7

    new-instance v0, Lb/r/d/h$g;

    invoke-direct {v0}, Lb/r/d/h$g;-><init>()V

    aget v3, v8, v4

    iput v3, v0, Lb/r/d/h$g;->a:I

    sub-int/2addr v3, v7

    iput v3, v0, Lb/r/d/h$g;->b:I

    aget v3, v6, v4

    aget v4, v8, v4

    sub-int/2addr v3, v4

    iput v3, v0, Lb/r/d/h$g;->c:I

    iput-boolean v9, v0, Lb/r/d/h$g;->d:Z

    const/4 v3, 0x0

    goto/16 :goto_b

    :cond_7
    add-int/lit8 v7, v7, 0x2

    move-object/from16 v4, v19

    move-object/from16 v9, v20

    move-object/from16 v3, v21

    move/from16 v12, v22

    move/from16 v14, v23

    goto/16 :goto_3

    :cond_8
    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    move/from16 v22, v12

    move/from16 v23, v14

    move v3, v10

    :goto_7
    if-gt v3, v5, :cond_f

    add-int v4, v3, v15

    add-int v7, v5, v15

    if-eq v4, v7, :cond_b

    add-int v7, v10, v15

    if-eq v4, v7, :cond_9

    add-int v7, v1, v4

    add-int/lit8 v9, v7, -0x1

    aget v9, v8, v9

    const/4 v12, 0x1

    add-int/2addr v7, v12

    aget v7, v8, v7

    if-ge v9, v7, :cond_a

    goto :goto_8

    :cond_9
    const/4 v12, 0x1

    :cond_a
    add-int v7, v1, v4

    add-int/2addr v7, v12

    aget v7, v8, v7

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x1

    goto :goto_9

    :cond_b
    :goto_8
    add-int v7, v1, v4

    add-int/lit8 v7, v7, -0x1

    aget v7, v8, v7

    const/4 v9, 0x0

    :goto_9
    sub-int v12, v7, v4

    :goto_a
    if-lez v7, :cond_c

    if-lez v12, :cond_c

    add-int v14, v11, v7

    add-int/lit8 v14, v14, -0x1

    add-int v24, v13, v12

    move/from16 v25, v11

    add-int/lit8 v11, v24, -0x1

    invoke-virtual {v2, v14, v11}, Lb/r/d/d$a$a;->b(II)Z

    move-result v11

    if-eqz v11, :cond_d

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v11, v25

    goto :goto_a

    :cond_c
    move/from16 v25, v11

    :cond_d
    add-int v11, v1, v4

    aput v7, v8, v11

    if-nez v0, :cond_e

    if-lt v4, v10, :cond_e

    if-gt v4, v5, :cond_e

    aget v7, v6, v11

    aget v12, v8, v11

    if-lt v7, v12, :cond_e

    new-instance v0, Lb/r/d/h$g;

    invoke-direct {v0}, Lb/r/d/h$g;-><init>()V

    aget v3, v8, v11

    iput v3, v0, Lb/r/d/h$g;->a:I

    sub-int/2addr v3, v4

    iput v3, v0, Lb/r/d/h$g;->b:I

    aget v3, v6, v11

    aget v4, v8, v11

    sub-int/2addr v3, v4

    iput v3, v0, Lb/r/d/h$g;->c:I

    iput-boolean v9, v0, Lb/r/d/h$g;->d:Z

    const/4 v3, 0x1

    :goto_b
    iput-boolean v3, v0, Lb/r/d/h$g;->e:Z

    goto :goto_d

    :cond_e
    add-int/lit8 v3, v3, 0x2

    move/from16 v11, v25

    goto :goto_7

    :cond_f
    move/from16 v25, v11

    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v18

    move-object/from16 v4, v19

    move-object/from16 v9, v20

    move-object/from16 v3, v21

    move/from16 v12, v22

    move/from16 v14, v23

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_c
    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move-object/from16 v20, v9

    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_18

    .line 5
    iget v3, v0, Lb/r/d/h$g;->c:I

    if-lez v3, :cond_12

    move-object/from16 v3, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_12
    move-object/from16 v3, v19

    :goto_e
    iget v4, v0, Lb/r/d/h$g;->a:I

    move-object/from16 v9, v20

    iget v5, v9, Lb/r/d/h$f;->a:I

    add-int/2addr v4, v5

    iput v4, v0, Lb/r/d/h$g;->a:I

    iget v4, v0, Lb/r/d/h$g;->b:I

    iget v5, v9, Lb/r/d/h$f;->c:I

    add-int/2addr v4, v5

    iput v4, v0, Lb/r/d/h$g;->b:I

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v4, Lb/r/d/h$f;

    invoke-direct {v4}, Lb/r/d/h$f;-><init>()V

    move-object/from16 v5, v21

    goto :goto_f

    :cond_13
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v5, v21

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/r/d/h$f;

    :goto_f
    iget v7, v9, Lb/r/d/h$f;->a:I

    iput v7, v4, Lb/r/d/h$f;->a:I

    iget v7, v9, Lb/r/d/h$f;->c:I

    iput v7, v4, Lb/r/d/h$f;->c:I

    iget-boolean v7, v0, Lb/r/d/h$g;->e:Z

    if-eqz v7, :cond_14

    iget v7, v0, Lb/r/d/h$g;->a:I

    const/4 v10, 0x1

    goto :goto_10

    :cond_14
    iget-boolean v7, v0, Lb/r/d/h$g;->d:Z

    if-eqz v7, :cond_15

    iget v7, v0, Lb/r/d/h$g;->a:I

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    :goto_10
    iput v7, v4, Lb/r/d/h$f;->b:I

    iget v7, v0, Lb/r/d/h$g;->b:I

    goto :goto_11

    :cond_15
    const/4 v10, 0x1

    iget v7, v0, Lb/r/d/h$g;->a:I

    iput v7, v4, Lb/r/d/h$f;->b:I

    iget v7, v0, Lb/r/d/h$g;->b:I

    sub-int/2addr v7, v10

    :goto_11
    iput v7, v4, Lb/r/d/h$f;->d:I

    move-object/from16 v7, v17

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v0, Lb/r/d/h$g;->e:Z

    if-eqz v4, :cond_17

    iget-boolean v4, v0, Lb/r/d/h$g;->d:Z

    if-eqz v4, :cond_16

    iget v4, v0, Lb/r/d/h$g;->a:I

    iget v10, v0, Lb/r/d/h$g;->c:I

    add-int/2addr v4, v10

    const/4 v11, 0x1

    add-int/2addr v4, v11

    goto :goto_12

    :cond_16
    const/4 v11, 0x1

    iget v4, v0, Lb/r/d/h$g;->a:I

    iget v10, v0, Lb/r/d/h$g;->c:I

    add-int/2addr v4, v10

    iput v4, v9, Lb/r/d/h$f;->a:I

    iget v0, v0, Lb/r/d/h$g;->b:I

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    goto :goto_13

    :cond_17
    iget v4, v0, Lb/r/d/h$g;->a:I

    iget v10, v0, Lb/r/d/h$g;->c:I

    add-int/2addr v4, v10

    :goto_12
    iput v4, v9, Lb/r/d/h$f;->a:I

    iget v0, v0, Lb/r/d/h$g;->b:I

    add-int/2addr v0, v10

    :goto_13
    iput v0, v9, Lb/r/d/h$f;->c:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_18
    move-object/from16 v7, v17

    move-object/from16 v3, v19

    move-object/from16 v9, v20

    move-object/from16 v5, v21

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    move-object/from16 v0, p0

    move-object v4, v3

    move-object v3, v5

    move-object v5, v7

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_19
    move-object v3, v4

    sget-object v0, Lb/r/d/h;->a:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lb/r/d/h$c;

    const/4 v7, 0x1

    move-object v1, v0

    move-object v4, v6

    move-object v5, v8

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lb/r/d/h$c;-><init>(Lb/r/d/h$b;Ljava/util/List;[I[IZ)V

    move-object/from16 v1, p0

    .line 6
    iget-object v2, v1, Lb/r/d/d$a;->g:Lb/r/d/d;

    iget-object v2, v2, Lb/r/d/d;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lb/r/d/d$a$b;

    invoke-direct {v3, v1, v0}, Lb/r/d/d$a$b;-><init>(Lb/r/d/d$a;Lb/r/d/h$c;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
