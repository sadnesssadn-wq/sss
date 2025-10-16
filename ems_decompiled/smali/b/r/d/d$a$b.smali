.class public Lb/r/d/d$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/r/d/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/r/d/h$c;

.field public final synthetic d:Lb/r/d/d$a;


# direct methods
.method public constructor <init>(Lb/r/d/d$a;Lb/r/d/h$c;)V
    .locals 0

    iput-object p1, p0, Lb/r/d/d$a$b;->d:Lb/r/d/d$a;

    iput-object p2, p0, Lb/r/d/d$a$b;->c:Lb/r/d/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lb/r/d/d$a$b;->d:Lb/r/d/d$a;

    iget-object v2, v1, Lb/r/d/d$a;->g:Lb/r/d/d;

    iget v3, v2, Lb/r/d/d;->g:I

    iget v4, v1, Lb/r/d/d$a;->e:I

    if-ne v3, v4, :cond_10

    iget-object v3, v1, Lb/r/d/d$a;->d:Ljava/util/List;

    iget-object v4, v0, Lb/r/d/d$a$b;->c:Lb/r/d/h$c;

    iget-object v1, v1, Lb/r/d/d$a;->f:Ljava/lang/Runnable;

    .line 1
    iget-object v5, v2, Lb/r/d/d;->f:Ljava/util/List;

    iput-object v3, v2, Lb/r/d/d;->e:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lb/r/d/d;->f:Ljava/util/List;

    iget-object v3, v2, Lb/r/d/d;->a:Lb/r/d/n;

    .line 2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v6, v3, Lb/r/d/e;

    if-eqz v6, :cond_0

    check-cast v3, Lb/r/d/e;

    goto :goto_0

    :cond_0
    new-instance v6, Lb/r/d/e;

    invoke-direct {v6, v3}, Lb/r/d/e;-><init>(Lb/r/d/n;)V

    move-object v3, v6

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v7, v4, Lb/r/d/h$c;->e:I

    iget v8, v4, Lb/r/d/h$c;->f:I

    iget-object v9, v4, Lb/r/d/h$c;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_1
    if-ltz v9, :cond_f

    iget-object v11, v4, Lb/r/d/h$c;->a:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/r/d/h$g;

    iget v12, v11, Lb/r/d/h$g;->c:I

    iget v13, v11, Lb/r/d/h$g;->a:I

    add-int/2addr v13, v12

    iget v14, v11, Lb/r/d/h$g;->b:I

    add-int/2addr v14, v12

    const-string v15, " "

    const-string v10, "unknown flag for pos "

    if-ge v13, v7, :cond_6

    sub-int/2addr v7, v13

    .line 3
    iget-boolean v0, v4, Lb/r/d/h$c;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {v3, v13, v7}, Lb/r/d/e;->a(II)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_6

    iget-object v0, v4, Lb/r/d/h$c;->b:[I

    move-object/from16 v16, v1

    add-int v1, v13, v7

    aget v17, v0, v1

    move-object/from16 v18, v2

    and-int/lit8 v2, v17, 0x1f

    move-object/from16 v17, v5

    if-eqz v2, :cond_4

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    const/16 v5, 0x8

    if-eq v2, v5, :cond_3

    const/16 v5, 0x10

    if-ne v2, v5, :cond_2

    new-instance v0, Lb/r/d/h$e;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lb/r/d/h$e;-><init>(IIZ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v19, v9

    move-object/from16 v20, v11

    goto :goto_4

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x5

    move/from16 v19, v9

    const/4 v5, 0x0

    invoke-static {v6, v0, v5}, Lb/r/d/h$c;->b(Ljava/util/List;IZ)Lb/r/d/h$e;

    move-result-object v9

    iget v5, v9, Lb/r/d/h$e;->b:I

    move-object/from16 v20, v11

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    invoke-virtual {v3, v1, v5}, Lb/r/d/e;->b(II)V

    const/4 v5, 0x4

    if-ne v2, v5, :cond_5

    iget v2, v9, Lb/r/d/h$e;->b:I

    sub-int/2addr v2, v11

    iget-object v5, v4, Lb/r/d/h$c;->d:Lb/r/d/h$b;

    invoke-virtual {v5, v1, v0}, Lb/r/d/h$b;->c(II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v11, v0}, Lb/r/d/e;->d(IILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    move/from16 v19, v9

    move-object/from16 v20, v11

    const/4 v11, 0x1

    invoke-virtual {v3, v1, v11}, Lb/r/d/e;->a(II)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/r/d/h$e;

    iget v2, v1, Lb/r/d/h$e;->b:I

    sub-int/2addr v2, v11

    iput v2, v1, Lb/r/d/h$e;->b:I

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v1, v16

    move-object/from16 v5, v17

    move-object/from16 v2, v18

    move/from16 v9, v19

    move-object/from16 v11, v20

    goto/16 :goto_2

    :cond_6
    :goto_5
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v17, v5

    move/from16 v19, v9

    move-object/from16 v20, v11

    if-ge v14, v8, :cond_c

    sub-int/2addr v8, v14

    .line 4
    iget-boolean v0, v4, Lb/r/d/h$c;->g:Z

    if-nez v0, :cond_7

    invoke-virtual {v3, v13, v8}, Lb/r/d/e;->c(II)V

    goto/16 :goto_8

    :cond_7
    :goto_6
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_c

    iget-object v0, v4, Lb/r/d/h$c;->c:[I

    add-int v1, v14, v8

    aget v2, v0, v1

    and-int/lit8 v2, v2, 0x1f

    const/4 v5, 0x4

    if-eqz v2, :cond_b

    if-eq v2, v5, :cond_9

    const/16 v5, 0x8

    const/16 v7, 0x10

    if-eq v2, v5, :cond_a

    if-ne v2, v7, :cond_8

    new-instance v0, Lb/r/d/h$e;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v13, v9}, Lb/r/d/h$e;-><init>(IIZ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/16 v5, 0x8

    const/16 v7, 0x10

    :cond_a
    const/4 v9, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x5

    const/4 v11, 0x1

    invoke-static {v6, v0, v11}, Lb/r/d/h$c;->b(Ljava/util/List;IZ)Lb/r/d/h$e;

    move-result-object v5

    iget v5, v5, Lb/r/d/h$e;->b:I

    invoke-virtual {v3, v5, v13}, Lb/r/d/e;->b(II)V

    const/4 v5, 0x4

    if-ne v2, v5, :cond_7

    iget-object v2, v4, Lb/r/d/h$c;->d:Lb/r/d/h$b;

    invoke-virtual {v2, v0, v1}, Lb/r/d/h$b;->c(II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v13, v11, v0}, Lb/r/d/e;->d(IILjava/lang/Object;)V

    goto :goto_6

    :cond_b
    const/16 v7, 0x10

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {v3, v13, v11}, Lb/r/d/e;->c(II)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/r/d/h$e;

    iget v2, v1, Lb/r/d/h$e;->b:I

    add-int/2addr v2, v11

    iput v2, v1, Lb/r/d/h$e;->b:I

    const/4 v11, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    add-int/lit8 v12, v12, -0x1

    :goto_9
    if-ltz v12, :cond_e

    .line 5
    iget-object v0, v4, Lb/r/d/h$c;->b:[I

    move-object/from16 v11, v20

    iget v1, v11, Lb/r/d/h$g;->a:I

    add-int/2addr v1, v12

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    iget-object v0, v4, Lb/r/d/h$c;->d:Lb/r/d/h$b;

    iget v2, v11, Lb/r/d/h$g;->b:I

    add-int/2addr v2, v12

    invoke-virtual {v0, v1, v2}, Lb/r/d/h$b;->c(II)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lb/r/d/e;->d(IILjava/lang/Object;)V

    goto :goto_a

    :cond_d
    const/4 v2, 0x1

    :goto_a
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v20, v11

    goto :goto_9

    :cond_e
    move-object/from16 v11, v20

    const/4 v2, 0x1

    iget v7, v11, Lb/r/d/h$g;->a:I

    iget v8, v11, Lb/r/d/h$g;->b:I

    add-int/lit8 v9, v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v5, v17

    move-object/from16 v2, v18

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_f
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v17, v5

    invoke-virtual {v3}, Lb/r/d/e;->e()V

    move-object/from16 v2, v17

    move-object/from16 v0, v18

    .line 6
    invoke-virtual {v0, v2, v1}, Lb/r/d/d;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method
