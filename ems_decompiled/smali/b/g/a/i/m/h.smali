.class public Lb/g/a/i/m/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lb/g/a/i/m/b$a;

.field public static b:I

.field public static c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/g/a/i/m/b$a;

    invoke-direct {v0}, Lb/g/a/i/m/b$a;-><init>()V

    sput-object v0, Lb/g/a/i/m/h;->a:Lb/g/a/i/m/b$a;

    return-void
.end method

.method public static a(Lb/g/a/i/d;)Z
    .locals 9

    sget-object v0, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    sget-object v1, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    sget-object v2, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    invoke-virtual {p0}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v3

    invoke-virtual {p0}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v4

    .line 1
    iget-object v5, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v5, :cond_0

    .line 2
    check-cast v5, Lb/g/a/i/e;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v6

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v5

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v2, :cond_5

    invoke-virtual {p0}, Lb/g/a/i/d;->F()Z

    move-result v8

    if-nez v8, :cond_5

    if-eq v3, v1, :cond_5

    if-ne v3, v0, :cond_3

    iget v8, p0, Lb/g/a/i/d;->q:I

    if-nez v8, :cond_3

    iget v8, p0, Lb/g/a/i/d;->Z:F

    cmpl-float v8, v8, v5

    if-nez v8, :cond_3

    invoke-virtual {p0, v6}, Lb/g/a/i/d;->z(I)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    if-ne v3, v0, :cond_4

    iget v8, p0, Lb/g/a/i/d;->q:I

    if-ne v8, v7, :cond_4

    invoke-virtual {p0}, Lb/g/a/i/d;->w()I

    move-result v8

    invoke-virtual {p0, v6, v8}, Lb/g/a/i/d;->A(II)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eq v4, v2, :cond_8

    invoke-virtual {p0}, Lb/g/a/i/d;->G()Z

    move-result v2

    if-nez v2, :cond_8

    if-eq v4, v1, :cond_8

    if-ne v4, v0, :cond_6

    iget v1, p0, Lb/g/a/i/d;->r:I

    if-nez v1, :cond_6

    iget v1, p0, Lb/g/a/i/d;->Z:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_6

    invoke-virtual {p0, v7}, Lb/g/a/i/d;->z(I)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    if-ne v3, v0, :cond_7

    iget v0, p0, Lb/g/a/i/d;->r:I

    if-ne v0, v7, :cond_7

    invoke-virtual {p0}, Lb/g/a/i/d;->q()I

    move-result v0

    invoke-virtual {p0, v7, v0}, Lb/g/a/i/d;->A(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iget p0, p0, Lb/g/a/i/d;->Z:F

    cmpl-float p0, p0, v5

    if-lez p0, :cond_a

    if-nez v8, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v7

    :cond_a
    if-eqz v8, :cond_b

    if-eqz v0, :cond_b

    const/4 v6, 0x1

    :cond_b
    return v6
.end method

.method public static b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1
    sget-object v3, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    iget-boolean v4, v0, Lb/g/a/i/d;->l:Z

    if-eqz v4, :cond_0

    return-void

    .line 2
    :cond_0
    sget v4, Lb/g/a/i/m/h;->b:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    sput v4, Lb/g/a/i/m/h;->b:I

    instance-of v4, v0, Lb/g/a/i/e;

    const/4 v6, 0x0

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->E()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p1 .. p1}, Lb/g/a/i/m/h;->a(Lb/g/a/i/d;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lb/g/a/i/m/b$a;

    invoke-direct {v4}, Lb/g/a/i/m/b$a;-><init>()V

    invoke-static {v0, v1, v4, v6}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    :cond_1
    sget-object v4, Lb/g/a/i/c$a;->d:Lb/g/a/i/c$a;

    invoke-virtual {v0, v4}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v4

    sget-object v7, Lb/g/a/i/c$a;->f:Lb/g/a/i/c$a;

    invoke-virtual {v0, v7}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v7

    invoke-virtual {v4}, Lb/g/a/i/c;->d()I

    move-result v8

    invoke-virtual {v7}, Lb/g/a/i/c;->d()I

    move-result v9

    .line 3
    iget-object v10, v4, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eqz v10, :cond_d

    .line 4
    iget-boolean v4, v4, Lb/g/a/i/c;->c:Z

    if-eqz v4, :cond_d

    .line 5
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/g/a/i/c;

    iget-object v13, v10, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    add-int/lit8 v14, p0, 0x1

    invoke-static {v13}, Lb/g/a/i/m/h;->a(Lb/g/a/i/d;)Z

    move-result v15

    invoke-virtual {v13}, Lb/g/a/i/d;->E()Z

    move-result v16

    if-eqz v16, :cond_2

    if-eqz v15, :cond_2

    new-instance v5, Lb/g/a/i/m/b$a;

    invoke-direct {v5}, Lb/g/a/i/m/b$a;-><init>()V

    invoke-static {v13, v1, v5, v6}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    :cond_2
    invoke-virtual {v13}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v5

    if-ne v5, v3, :cond_8

    if-eqz v15, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v13}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v5

    if-ne v5, v3, :cond_c

    iget v5, v13, Lb/g/a/i/d;->u:I

    if-ltz v5, :cond_c

    iget v5, v13, Lb/g/a/i/d;->t:I

    if-ltz v5, :cond_c

    .line 6
    iget v5, v13, Lb/g/a/i/d;->o0:I

    if-eq v5, v11, :cond_4

    .line 7
    iget v5, v13, Lb/g/a/i/d;->q:I

    if-nez v5, :cond_c

    .line 8
    iget v5, v13, Lb/g/a/i/d;->Z:F

    cmpl-float v5, v5, v12

    if-nez v5, :cond_c

    .line 9
    :cond_4
    invoke-virtual {v13}, Lb/g/a/i/d;->C()Z

    move-result v5

    if-nez v5, :cond_c

    .line 10
    iget-boolean v5, v13, Lb/g/a/i/d;->H:Z

    if-nez v5, :cond_c

    .line 11
    iget-object v5, v13, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    if-ne v10, v5, :cond_5

    iget-object v15, v13, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v15, v15, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v15, :cond_5

    .line 12
    iget-boolean v15, v15, Lb/g/a/i/c;->c:Z

    if-nez v15, :cond_6

    .line 13
    :cond_5
    iget-object v15, v13, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    if-ne v10, v15, :cond_7

    iget-object v5, v5, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v5, :cond_7

    .line 14
    iget-boolean v5, v5, Lb/g/a/i/c;->c:Z

    if-eqz v5, :cond_7

    :cond_6
    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_c

    .line 15
    invoke-virtual {v13}, Lb/g/a/i/d;->C()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v14, v0, v1, v13, v2}, Lb/g/a/i/m/h;->d(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/d;Z)V

    goto :goto_4

    :cond_8
    :goto_2
    invoke-virtual {v13}, Lb/g/a/i/d;->E()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v5, v13, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    if-ne v10, v5, :cond_a

    iget-object v15, v13, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v15, v15, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v15, :cond_a

    invoke-virtual {v5}, Lb/g/a/i/c;->e()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v13}, Lb/g/a/i/d;->w()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v13, v5, v10}, Lb/g/a/i/d;->M(II)V

    goto :goto_3

    :cond_a
    iget-object v15, v13, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    if-ne v10, v15, :cond_b

    iget-object v12, v5, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v12, :cond_b

    invoke-virtual {v15}, Lb/g/a/i/c;->e()I

    move-result v5

    sub-int v5, v8, v5

    invoke-virtual {v13}, Lb/g/a/i/d;->w()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual {v13, v10, v5}, Lb/g/a/i/d;->M(II)V

    :goto_3
    invoke-static {v14, v13, v1, v2}, Lb/g/a/i/m/h;->b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V

    goto :goto_4

    :cond_b
    if-ne v10, v5, :cond_c

    iget-object v5, v15, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v5, :cond_c

    .line 16
    iget-boolean v5, v5, Lb/g/a/i/c;->c:Z

    if-eqz v5, :cond_c

    .line 17
    invoke-virtual {v13}, Lb/g/a/i/d;->C()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v14, v1, v13, v2}, Lb/g/a/i/m/h;->c(ILb/g/a/i/m/b$b;Lb/g/a/i/d;Z)V

    :cond_c
    :goto_4
    const/4 v5, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_d
    instance-of v4, v0, Lb/g/a/i/g;

    if-eqz v4, :cond_e

    return-void

    .line 18
    :cond_e
    iget-object v4, v7, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_1b

    .line 19
    iget-boolean v5, v7, Lb/g/a/i/c;->c:Z

    if-eqz v5, :cond_1b

    .line 20
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/a/i/c;

    iget-object v7, v5, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v8, 0x1

    add-int/lit8 v10, p0, 0x1

    invoke-static {v7}, Lb/g/a/i/m/h;->a(Lb/g/a/i/d;)Z

    move-result v8

    invoke-virtual {v7}, Lb/g/a/i/d;->E()Z

    move-result v12

    if-eqz v12, :cond_10

    if-eqz v8, :cond_10

    new-instance v12, Lb/g/a/i/m/b$a;

    invoke-direct {v12}, Lb/g/a/i/m/b$a;-><init>()V

    invoke-static {v7, v1, v12, v6}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    :cond_10
    iget-object v12, v7, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    if-ne v5, v12, :cond_11

    iget-object v13, v7, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v13, v13, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v13, :cond_11

    .line 21
    iget-boolean v13, v13, Lb/g/a/i/c;->c:Z

    if-nez v13, :cond_12

    .line 22
    :cond_11
    iget-object v13, v7, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    if-ne v5, v13, :cond_13

    iget-object v12, v12, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v12, :cond_13

    .line 23
    iget-boolean v12, v12, Lb/g/a/i/c;->c:Z

    if-eqz v12, :cond_13

    :cond_12
    const/4 v12, 0x1

    goto :goto_6

    :cond_13
    const/4 v12, 0x0

    .line 24
    :goto_6
    invoke-virtual {v7}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v13

    if-ne v13, v3, :cond_17

    if-eqz v8, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v7}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v5

    if-ne v5, v3, :cond_16

    iget v5, v7, Lb/g/a/i/d;->u:I

    if-ltz v5, :cond_16

    iget v5, v7, Lb/g/a/i/d;->t:I

    if-ltz v5, :cond_16

    .line 25
    iget v5, v7, Lb/g/a/i/d;->o0:I

    if-eq v5, v11, :cond_15

    .line 26
    iget v5, v7, Lb/g/a/i/d;->q:I

    if-nez v5, :cond_16

    .line 27
    iget v5, v7, Lb/g/a/i/d;->Z:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-nez v5, :cond_f

    goto :goto_7

    :cond_15
    const/4 v8, 0x0

    .line 28
    :goto_7
    invoke-virtual {v7}, Lb/g/a/i/d;->C()Z

    move-result v5

    if-nez v5, :cond_f

    .line 29
    iget-boolean v5, v7, Lb/g/a/i/d;->H:Z

    if-nez v5, :cond_f

    if-eqz v12, :cond_f

    .line 30
    invoke-virtual {v7}, Lb/g/a/i/d;->C()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {v10, v0, v1, v7, v2}, Lb/g/a/i/m/h;->d(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/d;Z)V

    goto :goto_5

    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_17
    :goto_8
    const/4 v8, 0x0

    invoke-virtual {v7}, Lb/g/a/i/d;->E()Z

    move-result v13

    if-eqz v13, :cond_18

    goto/16 :goto_5

    :cond_18
    iget-object v13, v7, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    if-ne v5, v13, :cond_19

    iget-object v14, v7, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v14, v14, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v14, :cond_19

    invoke-virtual {v13}, Lb/g/a/i/c;->e()I

    move-result v5

    add-int/2addr v5, v9

    invoke-virtual {v7}, Lb/g/a/i/d;->w()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v7, v5, v12}, Lb/g/a/i/d;->M(II)V

    goto :goto_9

    :cond_19
    iget-object v14, v7, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    if-ne v5, v14, :cond_1a

    iget-object v5, v13, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v5, :cond_1a

    invoke-virtual {v14}, Lb/g/a/i/c;->e()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v7}, Lb/g/a/i/d;->w()I

    move-result v12

    sub-int v12, v5, v12

    invoke-virtual {v7, v12, v5}, Lb/g/a/i/d;->M(II)V

    :goto_9
    invoke-static {v10, v7, v1, v2}, Lb/g/a/i/m/h;->b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V

    goto/16 :goto_5

    :cond_1a
    if-eqz v12, :cond_f

    invoke-virtual {v7}, Lb/g/a/i/d;->C()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {v10, v1, v7, v2}, Lb/g/a/i/m/h;->c(ILb/g/a/i/m/b$b;Lb/g/a/i/d;Z)V

    goto/16 :goto_5

    :cond_1b
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lb/g/a/i/d;->l:Z

    return-void
.end method

.method public static c(ILb/g/a/i/m/b$b;Lb/g/a/i/d;Z)V
    .locals 6

    .line 1
    iget v0, p2, Lb/g/a/i/d;->k0:F

    .line 2
    iget-object v1, p2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    iget-object v2, p2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v2, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->d()I

    move-result v2

    iget-object v3, p2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v4}, Lb/g/a/i/c;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    :goto_0
    invoke-virtual {p2}, Lb/g/a/i/d;->w()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    if-lez v4, :cond_2

    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    int-to-float v4, v4

    mul-float v0, v0, v4

    :goto_1
    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_3

    sub-int v4, v0, v3

    :cond_3
    invoke-virtual {p2, v0, v4}, Lb/g/a/i/d;->M(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p1, p3}, Lb/g/a/i/m/h;->b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V

    return-void
.end method

.method public static d(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/d;Z)V
    .locals 7

    .line 1
    iget v0, p3, Lb/g/a/i/d;->k0:F

    .line 2
    iget-object v1, p3, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    iget-object v2, p3, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p3, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    iget-object v3, p3, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_4

    invoke-virtual {p3}, Lb/g/a/i/d;->w()I

    move-result v3

    .line 3
    iget v4, p3, Lb/g/a/i/d;->o0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 4
    iget v4, p3, Lb/g/a/i/d;->q:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v3, p1, Lb/g/a/i/e;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    .line 6
    :goto_0
    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result p1

    .line 7
    iget v3, p3, Lb/g/a/i/d;->k0:F

    mul-float v3, v3, v6

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v1, v2

    .line 8
    :cond_2
    :goto_1
    iget p1, p3, Lb/g/a/i/d;->t:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p3, Lb/g/a/i/d;->u:I

    if-lez p1, :cond_3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p1, v1

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v2, p1

    add-int/2addr v3, v2

    invoke-virtual {p3, v2, v3}, Lb/g/a/i/d;->M(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p3, p2, p4}, Lb/g/a/i/m/h;->b(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Z)V

    :cond_4
    return-void
.end method

.method public static e(ILb/g/a/i/m/b$b;Lb/g/a/i/d;)V
    .locals 6

    .line 1
    iget v0, p2, Lb/g/a/i/d;->l0:F

    .line 2
    iget-object v1, p2, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    iget-object v2, p2, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v2, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->d()I

    move-result v2

    iget-object v3, p2, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p2, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v4}, Lb/g/a/i/c;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    :goto_0
    invoke-virtual {p2}, Lb/g/a/i/d;->q()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    if-lez v4, :cond_2

    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    int-to-float v4, v4

    mul-float v0, v0, v4

    :goto_1
    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_3

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    :cond_3
    invoke-virtual {p2, v4, v5}, Lb/g/a/i/d;->N(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p1}, Lb/g/a/i/m/h;->g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V

    return-void
.end method

.method public static f(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/d;)V
    .locals 7

    .line 1
    iget v0, p3, Lb/g/a/i/d;->l0:F

    .line 2
    iget-object v1, p3, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    iget-object v2, p3, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p3, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v1, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    invoke-virtual {v1}, Lb/g/a/i/c;->d()I

    move-result v1

    iget-object v3, p3, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_4

    invoke-virtual {p3}, Lb/g/a/i/d;->q()I

    move-result v3

    .line 3
    iget v4, p3, Lb/g/a/i/d;->o0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 4
    iget v4, p3, Lb/g/a/i/d;->r:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v3, p1, Lb/g/a/i/e;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    .line 6
    :goto_0
    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result p1

    mul-float v3, v0, v6

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v1, v2

    :cond_2
    :goto_1
    iget p1, p3, Lb/g/a/i/d;->w:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p3, Lb/g/a/i/d;->x:I

    if-lez p1, :cond_3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p1, v1

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v2, p1

    add-int/2addr v3, v2

    invoke-virtual {p3, v2, v3}, Lb/g/a/i/d;->N(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p3, p2}, Lb/g/a/i/m/h;->g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V

    :cond_4
    return-void
.end method

.method public static g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v2, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    iget-boolean v3, v0, Lb/g/a/i/d;->m:Z

    if-eqz v3, :cond_0

    return-void

    .line 2
    :cond_0
    sget v3, Lb/g/a/i/m/h;->c:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lb/g/a/i/m/h;->c:I

    instance-of v3, v0, Lb/g/a/i/e;

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->E()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p1 .. p1}, Lb/g/a/i/m/h;->a(Lb/g/a/i/d;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lb/g/a/i/m/b$a;

    invoke-direct {v3}, Lb/g/a/i/m/b$a;-><init>()V

    invoke-static {v0, v1, v3, v5}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    :cond_1
    sget-object v3, Lb/g/a/i/c$a;->e:Lb/g/a/i/c$a;

    invoke-virtual {v0, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v3

    sget-object v6, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    invoke-virtual {v0, v6}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v6

    invoke-virtual {v3}, Lb/g/a/i/c;->d()I

    move-result v7

    invoke-virtual {v6}, Lb/g/a/i/c;->d()I

    move-result v8

    .line 3
    iget-object v9, v3, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-eqz v9, :cond_d

    .line 4
    iget-boolean v3, v3, Lb/g/a/i/c;->c:Z

    if-eqz v3, :cond_d

    .line 5
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/g/a/i/c;

    iget-object v12, v9, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    add-int/lit8 v13, p0, 0x1

    invoke-static {v12}, Lb/g/a/i/m/h;->a(Lb/g/a/i/d;)Z

    move-result v14

    invoke-virtual {v12}, Lb/g/a/i/d;->E()Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    new-instance v15, Lb/g/a/i/m/b$a;

    invoke-direct {v15}, Lb/g/a/i/m/b$a;-><init>()V

    invoke-static {v12, v1, v15, v5}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    :cond_2
    invoke-virtual {v12}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v15

    if-ne v15, v2, :cond_8

    if-eqz v14, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v14

    if-ne v14, v2, :cond_c

    iget v14, v12, Lb/g/a/i/d;->x:I

    if-ltz v14, :cond_c

    iget v14, v12, Lb/g/a/i/d;->w:I

    if-ltz v14, :cond_c

    .line 6
    iget v14, v12, Lb/g/a/i/d;->o0:I

    if-eq v14, v11, :cond_4

    .line 7
    iget v14, v12, Lb/g/a/i/d;->r:I

    if-nez v14, :cond_c

    .line 8
    iget v14, v12, Lb/g/a/i/d;->Z:F

    cmpl-float v14, v14, v10

    if-nez v14, :cond_c

    .line 9
    :cond_4
    invoke-virtual {v12}, Lb/g/a/i/d;->D()Z

    move-result v14

    if-nez v14, :cond_c

    .line 10
    iget-boolean v14, v12, Lb/g/a/i/d;->H:Z

    if-nez v14, :cond_c

    .line 11
    iget-object v14, v12, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    if-ne v9, v14, :cond_5

    iget-object v15, v12, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v15, v15, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v15, :cond_5

    .line 12
    iget-boolean v15, v15, Lb/g/a/i/c;->c:Z

    if-nez v15, :cond_6

    .line 13
    :cond_5
    iget-object v15, v12, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    if-ne v9, v15, :cond_7

    iget-object v9, v14, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v9, :cond_7

    .line 14
    iget-boolean v9, v9, Lb/g/a/i/c;->c:Z

    if-eqz v9, :cond_7

    :cond_6
    const/4 v9, 0x1

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_c

    .line 15
    invoke-virtual {v12}, Lb/g/a/i/d;->D()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {v13, v0, v1, v12}, Lb/g/a/i/m/h;->f(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/d;)V

    goto :goto_4

    :cond_8
    :goto_2
    invoke-virtual {v12}, Lb/g/a/i/d;->E()Z

    move-result v14

    if-eqz v14, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v14, v12, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    if-ne v9, v14, :cond_a

    iget-object v15, v12, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v15, v15, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v15, :cond_a

    invoke-virtual {v14}, Lb/g/a/i/c;->e()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v12}, Lb/g/a/i/d;->q()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v12, v9, v14}, Lb/g/a/i/d;->N(II)V

    goto :goto_3

    :cond_a
    iget-object v15, v12, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    if-ne v9, v15, :cond_b

    iget-object v4, v15, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v4, :cond_b

    invoke-virtual {v15}, Lb/g/a/i/c;->e()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v12}, Lb/g/a/i/d;->q()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {v12, v9, v4}, Lb/g/a/i/d;->N(II)V

    :goto_3
    invoke-static {v13, v12, v1}, Lb/g/a/i/m/h;->g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V

    goto :goto_4

    :cond_b
    if-ne v9, v14, :cond_c

    iget-object v4, v15, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v4, :cond_c

    .line 16
    iget-boolean v4, v4, Lb/g/a/i/c;->c:Z

    if-eqz v4, :cond_c

    .line 17
    invoke-static {v13, v1, v12}, Lb/g/a/i/m/h;->e(ILb/g/a/i/m/b$b;Lb/g/a/i/d;)V

    :cond_c
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    instance-of v3, v0, Lb/g/a/i/g;

    if-eqz v3, :cond_e

    return-void

    .line 18
    :cond_e
    iget-object v3, v6, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1a

    .line 19
    iget-boolean v4, v6, Lb/g/a/i/c;->c:Z

    if-eqz v4, :cond_1a

    .line 20
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/a/i/c;

    iget-object v6, v4, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    add-int/lit8 v7, p0, 0x1

    invoke-static {v6}, Lb/g/a/i/m/h;->a(Lb/g/a/i/d;)Z

    move-result v9

    invoke-virtual {v6}, Lb/g/a/i/d;->E()Z

    move-result v12

    if-eqz v12, :cond_10

    if-eqz v9, :cond_10

    new-instance v12, Lb/g/a/i/m/b$a;

    invoke-direct {v12}, Lb/g/a/i/m/b$a;-><init>()V

    invoke-static {v6, v1, v12, v5}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    :cond_10
    iget-object v12, v6, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    if-ne v4, v12, :cond_11

    iget-object v13, v6, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v13, v13, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v13, :cond_11

    .line 21
    iget-boolean v13, v13, Lb/g/a/i/c;->c:Z

    if-nez v13, :cond_12

    .line 22
    :cond_11
    iget-object v13, v6, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    if-ne v4, v13, :cond_13

    iget-object v12, v12, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v12, :cond_13

    .line 23
    iget-boolean v12, v12, Lb/g/a/i/c;->c:Z

    if-eqz v12, :cond_13

    :cond_12
    const/4 v12, 0x1

    goto :goto_6

    :cond_13
    const/4 v12, 0x0

    .line 24
    :goto_6
    invoke-virtual {v6}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v13

    if-ne v13, v2, :cond_16

    if-eqz v9, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {v6}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v4

    if-ne v4, v2, :cond_f

    iget v4, v6, Lb/g/a/i/d;->x:I

    if-ltz v4, :cond_f

    iget v4, v6, Lb/g/a/i/d;->w:I

    if-ltz v4, :cond_f

    .line 25
    iget v4, v6, Lb/g/a/i/d;->o0:I

    if-eq v4, v11, :cond_15

    .line 26
    iget v4, v6, Lb/g/a/i/d;->r:I

    if-nez v4, :cond_f

    .line 27
    iget v4, v6, Lb/g/a/i/d;->Z:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_f

    .line 28
    :cond_15
    invoke-virtual {v6}, Lb/g/a/i/d;->D()Z

    move-result v4

    if-nez v4, :cond_f

    .line 29
    iget-boolean v4, v6, Lb/g/a/i/d;->H:Z

    if-nez v4, :cond_f

    if-eqz v12, :cond_f

    .line 30
    invoke-virtual {v6}, Lb/g/a/i/d;->D()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v7, v0, v1, v6}, Lb/g/a/i/m/h;->f(ILb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/d;)V

    goto :goto_5

    :cond_16
    :goto_7
    invoke-virtual {v6}, Lb/g/a/i/d;->E()Z

    move-result v9

    if-eqz v9, :cond_17

    goto/16 :goto_5

    :cond_17
    iget-object v9, v6, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    if-ne v4, v9, :cond_18

    iget-object v13, v6, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    iget-object v13, v13, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v13, :cond_18

    invoke-virtual {v9}, Lb/g/a/i/c;->e()I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual {v6}, Lb/g/a/i/d;->q()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v6, v4, v9}, Lb/g/a/i/d;->N(II)V

    goto :goto_8

    :cond_18
    iget-object v13, v6, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    if-ne v4, v13, :cond_19

    iget-object v4, v9, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-nez v4, :cond_19

    invoke-virtual {v13}, Lb/g/a/i/c;->e()I

    move-result v4

    sub-int v4, v8, v4

    invoke-virtual {v6}, Lb/g/a/i/d;->q()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {v6, v9, v4}, Lb/g/a/i/d;->N(II)V

    :goto_8
    invoke-static {v7, v6, v1}, Lb/g/a/i/m/h;->g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V

    goto/16 :goto_5

    :cond_19
    if-eqz v12, :cond_f

    invoke-virtual {v6}, Lb/g/a/i/d;->D()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v7, v1, v6}, Lb/g/a/i/m/h;->e(ILb/g/a/i/m/b$b;Lb/g/a/i/d;)V

    goto/16 :goto_5

    :cond_1a
    sget-object v3, Lb/g/a/i/c$a;->h:Lb/g/a/i/c$a;

    invoke-virtual {v0, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v3

    .line 31
    iget-object v4, v3, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_20

    .line 32
    iget-boolean v4, v3, Lb/g/a/i/c;->c:Z

    if-eqz v4, :cond_20

    .line 33
    invoke-virtual {v3}, Lb/g/a/i/c;->d()I

    move-result v4

    .line 34
    iget-object v3, v3, Lb/g/a/i/c;->a:Ljava/util/HashSet;

    .line 35
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/a/i/c;

    iget-object v7, v6, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    const/4 v8, 0x1

    add-int/lit8 v9, p0, 0x1

    invoke-static {v7}, Lb/g/a/i/m/h;->a(Lb/g/a/i/d;)Z

    move-result v8

    invoke-virtual {v7}, Lb/g/a/i/d;->E()Z

    move-result v10

    if-eqz v10, :cond_1c

    if-eqz v8, :cond_1c

    new-instance v10, Lb/g/a/i/m/b$a;

    invoke-direct {v10}, Lb/g/a/i/m/b$a;-><init>()V

    invoke-static {v7, v1, v10, v5}, Lb/g/a/i/e;->f0(Lb/g/a/i/d;Lb/g/a/i/m/b$b;Lb/g/a/i/m/b$a;I)Z

    :cond_1c
    invoke-virtual {v7}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v10

    if-ne v10, v2, :cond_1d

    if-eqz v8, :cond_1b

    :cond_1d
    invoke-virtual {v7}, Lb/g/a/i/d;->E()Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_9

    :cond_1e
    iget-object v8, v7, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    if-ne v6, v8, :cond_1b

    invoke-virtual {v6}, Lb/g/a/i/c;->e()I

    move-result v6

    add-int/2addr v6, v4

    .line 36
    iget-boolean v8, v7, Lb/g/a/i/d;->F:Z

    if-nez v8, :cond_1f

    goto :goto_a

    :cond_1f
    iget v8, v7, Lb/g/a/i/d;->h0:I

    sub-int v8, v6, v8

    iget v10, v7, Lb/g/a/i/d;->Y:I

    add-int/2addr v10, v8

    iput v8, v7, Lb/g/a/i/d;->c0:I

    iget-object v11, v7, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v11, v8}, Lb/g/a/i/c;->m(I)V

    iget-object v8, v7, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {v8, v10}, Lb/g/a/i/c;->m(I)V

    iget-object v8, v7, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    .line 37
    iput v6, v8, Lb/g/a/i/c;->b:I

    const/4 v6, 0x1

    iput-boolean v6, v8, Lb/g/a/i/c;->c:Z

    .line 38
    iput-boolean v6, v7, Lb/g/a/i/d;->k:Z

    .line 39
    :goto_a
    :try_start_0
    invoke-static {v9, v7, v1}, Lb/g/a/i/m/h;->g(ILb/g/a/i/d;Lb/g/a/i/m/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_20
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, v0, Lb/g/a/i/d;->m:Z

    return-void
.end method
