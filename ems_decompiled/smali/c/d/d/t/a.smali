.class public final Lc/d/d/t/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/d/l;


# static fields
.field public static final b:[Lc/d/d/p;


# instance fields
.field public final a:Lc/d/d/t/b/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lc/d/d/p;

    sput-object v0, Lc/d/d/t/a;->b:[Lc/d/d/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/d/t/b/d;

    invoke-direct {v0}, Lc/d/d/t/b/d;-><init>()V

    iput-object v0, p0, Lc/d/d/t/a;->a:Lc/d/d/t/b/d;

    return-void
.end method


# virtual methods
.method public a(Lc/d/d/c;Ljava/util/Map;)Lc/d/d/n;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/d/c;",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/n;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    sget-object v4, Lc/d/d/e;->d:Lc/d/d/e;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lc/d/d/c;->a()Lc/d/d/s/b;

    move-result-object v1

    .line 1
    invoke-virtual {v1}, Lc/d/d/s/b;->e()[I

    move-result-object v4

    invoke-virtual {v1}, Lc/d/d/s/b;->c()[I

    move-result-object v5

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 2
    iget v6, v1, Lc/d/d/s/b;->c:I

    .line 3
    aget v7, v4, v2

    aget v8, v4, v3

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {v1, v7, v8}, Lc/d/d/s/b;->b(II)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-eq v7, v6, :cond_6

    aget v6, v4, v2

    sub-int/2addr v7, v6

    if-eqz v7, :cond_5

    .line 4
    aget v6, v4, v3

    aget v8, v5, v3

    aget v4, v4, v2

    aget v5, v5, v2

    sub-int/2addr v5, v4

    add-int/2addr v5, v3

    div-int/2addr v5, v7

    sub-int/2addr v8, v6

    add-int/2addr v8, v3

    div-int/2addr v8, v7

    if-lez v5, :cond_4

    if-lez v8, :cond_4

    div-int/lit8 v3, v7, 0x2

    add-int/2addr v6, v3

    add-int/2addr v4, v3

    new-instance v3, Lc/d/d/s/b;

    invoke-direct {v3, v5, v8}, Lc/d/d/s/b;-><init>(II)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    mul-int v10, v9, v7

    add-int/2addr v10, v6

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v5, :cond_2

    mul-int v12, v11, v7

    add-int/2addr v12, v4

    invoke-virtual {v1, v12, v10}, Lc/d/d/s/b;->b(II)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v3, v11, v9}, Lc/d/d/s/b;->g(II)V

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5
    :cond_3
    iget-object v1, v0, Lc/d/d/t/a;->a:Lc/d/d/t/b/d;

    invoke-virtual {v1, v3}, Lc/d/d/t/b/d;->a(Lc/d/d/s/b;)Lc/d/d/s/e;

    move-result-object v1

    sget-object v2, Lc/d/d/t/a;->b:[Lc/d/d/p;

    goto/16 :goto_e

    .line 6
    :cond_4
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 7
    throw v1

    .line 8
    :cond_5
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 9
    throw v1

    .line 10
    :cond_6
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 11
    throw v1

    .line 12
    :cond_7
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 13
    throw v1

    .line 14
    :cond_8
    new-instance v1, Lc/d/d/t/c/a;

    invoke-virtual/range {p1 .. p1}, Lc/d/d/c;->a()Lc/d/d/s/b;

    move-result-object v4

    invoke-direct {v1, v4}, Lc/d/d/t/c/a;-><init>(Lc/d/d/s/b;)V

    .line 15
    iget-object v4, v1, Lc/d/d/t/c/a;->b:Lc/d/d/s/k/a;

    invoke-virtual {v4}, Lc/d/d/s/k/a;->b()[Lc/d/d/p;

    move-result-object v4

    aget-object v5, v4, v2

    aget-object v6, v4, v3

    const/4 v7, 0x2

    aget-object v8, v4, v7

    const/4 v9, 0x3

    aget-object v4, v4, v9

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v5, v6}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5, v8}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6, v4}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8, v4}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lc/d/d/t/c/a$c;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lc/d/d/t/c/a$c;-><init>(Lc/d/d/t/c/a$a;)V

    invoke-static {v10, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc/d/d/t/c/a$b;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/d/d/t/c/a$b;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 16
    iget-object v15, v12, Lc/d/d/t/c/a$b;->a:Lc/d/d/p;

    .line 17
    invoke-static {v14, v15}, Lc/d/d/t/c/a;->b(Ljava/util/Map;Lc/d/d/p;)V

    .line 18
    iget-object v12, v12, Lc/d/d/t/c/a$b;->b:Lc/d/d/p;

    .line 19
    invoke-static {v14, v12}, Lc/d/d/t/c/a;->b(Ljava/util/Map;Lc/d/d/p;)V

    .line 20
    iget-object v12, v10, Lc/d/d/t/c/a$b;->a:Lc/d/d/p;

    .line 21
    invoke-static {v14, v12}, Lc/d/d/t/c/a;->b(Ljava/util/Map;Lc/d/d/p;)V

    .line 22
    iget-object v10, v10, Lc/d/d/t/c/a$b;->b:Lc/d/d/p;

    .line 23
    invoke-static {v14, v10}, Lc/d/d/t/c/a;->b(Ljava/util/Map;Lc/d/d/p;)V

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v12, v13

    move-object v15, v12

    move-object/from16 v16, v15

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lc/d/d/p;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v7, :cond_9

    move-object/from16 v15, v18

    goto :goto_4

    :cond_9
    if-nez v12, :cond_a

    move-object/from16 v12, v18

    goto :goto_4

    :cond_a
    move-object/from16 v16, v18

    :goto_4
    const/4 v13, 0x0

    goto :goto_3

    :cond_b
    if-eqz v12, :cond_22

    if-eqz v15, :cond_22

    if-eqz v16, :cond_22

    new-array v10, v9, [Lc/d/d/p;

    aput-object v12, v10, v2

    aput-object v15, v10, v3

    aput-object v16, v10, v7

    invoke-static {v10}, Lc/d/d/p;->b([Lc/d/d/p;)V

    aget-object v12, v10, v2

    aget-object v13, v10, v3

    aget-object v10, v10, v7

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v14, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object v5, v6

    goto :goto_5

    :cond_d
    invoke-virtual {v14, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    move-object v5, v8

    goto :goto_5

    :cond_e
    move-object v5, v4

    :goto_5
    invoke-virtual {v1, v10, v5}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v4

    .line 24
    iget v4, v4, Lc/d/d/t/c/a$b;->c:I

    .line 25
    invoke-virtual {v1, v12, v5}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v6

    .line 26
    iget v6, v6, Lc/d/d/t/c/a$b;->c:I

    and-int/lit8 v8, v4, 0x1

    if-ne v8, v3, :cond_f

    add-int/lit8 v4, v4, 0x1

    :cond_f
    add-int/2addr v4, v7

    and-int/lit8 v8, v6, 0x1

    if-ne v8, v3, :cond_10

    add-int/lit8 v6, v6, 0x1

    :cond_10
    add-int/2addr v6, v7

    mul-int/lit8 v8, v4, 0x4

    mul-int/lit8 v14, v6, 0x7

    if-ge v8, v14, :cond_18

    mul-int/lit8 v8, v6, 0x4

    mul-int/lit8 v14, v4, 0x7

    if-lt v8, v14, :cond_11

    goto/16 :goto_9

    .line 27
    :cond_11
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 28
    invoke-static {v13, v12}, Lc/d/d/t/c/a;->a(Lc/d/d/p;Lc/d/d/p;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    invoke-static {v10, v5}, Lc/d/d/t/c/a;->a(Lc/d/d/p;Lc/d/d/p;)I

    move-result v8

    .line 29
    iget v14, v5, Lc/d/d/p;->a:F

    iget v15, v10, Lc/d/d/p;->a:F

    sub-float v15, v14, v15

    int-to-float v8, v8

    div-float/2addr v15, v8

    .line 30
    iget v9, v5, Lc/d/d/p;->b:F

    iget v7, v10, Lc/d/d/p;->b:F

    sub-float v7, v9, v7

    div-float/2addr v7, v8

    .line 31
    new-instance v8, Lc/d/d/p;

    mul-float v15, v15, v6

    add-float/2addr v15, v14

    mul-float v6, v6, v7

    add-float/2addr v6, v9

    invoke-direct {v8, v15, v6}, Lc/d/d/p;-><init>(FF)V

    invoke-static {v13, v10}, Lc/d/d/t/c/a;->a(Lc/d/d/p;Lc/d/d/p;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-static {v12, v5}, Lc/d/d/t/c/a;->a(Lc/d/d/p;Lc/d/d/p;)I

    move-result v4

    .line 32
    iget v7, v5, Lc/d/d/p;->a:F

    iget v9, v12, Lc/d/d/p;->a:F

    sub-float v9, v7, v9

    int-to-float v4, v4

    div-float/2addr v9, v4

    .line 33
    iget v14, v5, Lc/d/d/p;->b:F

    iget v15, v12, Lc/d/d/p;->b:F

    sub-float v15, v14, v15

    div-float/2addr v15, v4

    .line 34
    new-instance v4, Lc/d/d/p;

    mul-float v9, v9, v6

    add-float/2addr v9, v7

    mul-float v6, v6, v15

    add-float/2addr v6, v14

    invoke-direct {v4, v9, v6}, Lc/d/d/p;-><init>(FF)V

    invoke-virtual {v1, v8}, Lc/d/d/t/c/a;->c(Lc/d/d/p;)Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v1, v4}, Lc/d/d/t/c/a;->c(Lc/d/d/p;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    goto :goto_7

    :cond_13
    invoke-virtual {v1, v4}, Lc/d/d/t/c/a;->c(Lc/d/d/p;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {v1, v10, v8}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v6

    .line 35
    iget v6, v6, Lc/d/d/t/c/a$b;->c:I

    .line 36
    invoke-virtual {v1, v12, v8}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v7

    .line 37
    iget v7, v7, Lc/d/d/t/c/a$b;->c:I

    sub-int/2addr v6, v7

    .line 38
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v1, v10, v4}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v7

    .line 39
    iget v7, v7, Lc/d/d/t/c/a$b;->c:I

    .line 40
    invoke-virtual {v1, v12, v4}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v9

    .line 41
    iget v9, v9, Lc/d/d/t/c/a$b;->c:I

    sub-int/2addr v7, v9

    .line 42
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v6, v7, :cond_15

    :goto_6
    move-object v4, v8

    :cond_15
    :goto_7
    if-nez v4, :cond_16

    goto :goto_8

    :cond_16
    move-object v5, v4

    .line 43
    :goto_8
    invoke-virtual {v1, v10, v5}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v4

    .line 44
    iget v4, v4, Lc/d/d/t/c/a$b;->c:I

    .line 45
    invoke-virtual {v1, v12, v5}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v6

    .line 46
    iget v6, v6, Lc/d/d/t/c/a$b;->c:I

    .line 47
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v3

    and-int/lit8 v6, v4, 0x1

    if-ne v6, v3, :cond_17

    add-int/lit8 v4, v4, 0x1

    :cond_17
    iget-object v1, v1, Lc/d/d/t/c/a;->a:Lc/d/d/s/b;

    move-object/from16 v17, v1

    move/from16 v22, v4

    move/from16 v23, v22

    goto/16 :goto_d

    .line 48
    :cond_18
    :goto_9
    invoke-static {v13, v12}, Lc/d/d/t/c/a;->a(Lc/d/d/p;Lc/d/d/p;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v10, v5}, Lc/d/d/t/c/a;->a(Lc/d/d/p;Lc/d/d/p;)I

    move-result v8

    .line 49
    iget v9, v5, Lc/d/d/p;->a:F

    iget v14, v10, Lc/d/d/p;->a:F

    sub-float v14, v9, v14

    int-to-float v8, v8

    div-float/2addr v14, v8

    .line 50
    iget v15, v5, Lc/d/d/p;->b:F

    iget v2, v10, Lc/d/d/p;->b:F

    sub-float v2, v15, v2

    div-float/2addr v2, v8

    .line 51
    new-instance v8, Lc/d/d/p;

    mul-float v14, v14, v7

    add-float/2addr v14, v9

    mul-float v7, v7, v2

    add-float/2addr v7, v15

    invoke-direct {v8, v14, v7}, Lc/d/d/p;-><init>(FF)V

    invoke-static {v13, v10}, Lc/d/d/t/c/a;->a(Lc/d/d/p;Lc/d/d/p;)I

    move-result v2

    int-to-float v2, v2

    int-to-float v7, v6

    div-float/2addr v2, v7

    invoke-static {v12, v5}, Lc/d/d/t/c/a;->a(Lc/d/d/p;Lc/d/d/p;)I

    move-result v7

    .line 52
    iget v9, v5, Lc/d/d/p;->a:F

    iget v14, v12, Lc/d/d/p;->a:F

    sub-float v14, v9, v14

    int-to-float v7, v7

    div-float/2addr v14, v7

    .line 53
    iget v15, v5, Lc/d/d/p;->b:F

    iget v11, v12, Lc/d/d/p;->b:F

    sub-float v11, v15, v11

    div-float/2addr v11, v7

    .line 54
    new-instance v7, Lc/d/d/p;

    mul-float v14, v14, v2

    add-float/2addr v14, v9

    mul-float v2, v2, v11

    add-float/2addr v2, v15

    invoke-direct {v7, v14, v2}, Lc/d/d/p;-><init>(FF)V

    invoke-virtual {v1, v8}, Lc/d/d/t/c/a;->c(Lc/d/d/p;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1, v7}, Lc/d/d/t/c/a;->c(Lc/d/d/p;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_b

    :cond_19
    const/4 v7, 0x0

    goto :goto_b

    :cond_1a
    invoke-virtual {v1, v7}, Lc/d/d/t/c/a;->c(Lc/d/d/p;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_a

    :cond_1b
    invoke-virtual {v1, v10, v8}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v2

    .line 55
    iget v2, v2, Lc/d/d/t/c/a$b;->c:I

    sub-int v2, v4, v2

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v12, v8}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v9

    .line 57
    iget v9, v9, Lc/d/d/t/c/a$b;->c:I

    sub-int v9, v6, v9

    .line 58
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v1, v10, v7}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v2

    .line 59
    iget v2, v2, Lc/d/d/t/c/a$b;->c:I

    sub-int/2addr v4, v2

    .line 60
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v12, v7}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v4

    .line 61
    iget v4, v4, Lc/d/d/t/c/a$b;->c:I

    sub-int/2addr v6, v4

    .line 62
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v2

    if-gt v9, v4, :cond_1c

    :goto_a
    move-object v7, v8

    :cond_1c
    :goto_b
    if-nez v7, :cond_1d

    goto :goto_c

    :cond_1d
    move-object v5, v7

    .line 63
    :goto_c
    invoke-virtual {v1, v10, v5}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v2

    .line 64
    iget v2, v2, Lc/d/d/t/c/a$b;->c:I

    .line 65
    invoke-virtual {v1, v12, v5}, Lc/d/d/t/c/a;->e(Lc/d/d/p;Lc/d/d/p;)Lc/d/d/t/c/a$b;

    move-result-object v4

    .line 66
    iget v4, v4, Lc/d/d/t/c/a$b;->c:I

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v3, :cond_1e

    add-int/lit8 v2, v2, 0x1

    :cond_1e
    and-int/lit8 v6, v4, 0x1

    if-ne v6, v3, :cond_1f

    add-int/lit8 v4, v4, 0x1

    .line 67
    :cond_1f
    iget-object v1, v1, Lc/d/d/t/c/a;->a:Lc/d/d/s/b;

    move-object/from16 v17, v1

    move/from16 v22, v2

    move/from16 v23, v4

    :goto_d
    move-object/from16 v18, v10

    move-object/from16 v19, v13

    move-object/from16 v20, v12

    move-object/from16 v21, v5

    invoke-static/range {v17 .. v23}, Lc/d/d/t/c/a;->d(Lc/d/d/s/b;Lc/d/d/p;Lc/d/d/p;Lc/d/d/p;Lc/d/d/p;II)Lc/d/d/s/b;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Lc/d/d/p;

    const/4 v4, 0x0

    aput-object v10, v2, v4

    aput-object v13, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    const/4 v3, 0x3

    aput-object v5, v2, v3

    .line 68
    iget-object v3, v0, Lc/d/d/t/a;->a:Lc/d/d/t/b/d;

    invoke-virtual {v3, v1}, Lc/d/d/t/b/d;->a(Lc/d/d/s/b;)Lc/d/d/s/e;

    move-result-object v1

    :goto_e
    new-instance v3, Lc/d/d/n;

    .line 69
    iget-object v4, v1, Lc/d/d/s/e;->c:Ljava/lang/String;

    .line 70
    iget-object v5, v1, Lc/d/d/s/e;->a:[B

    .line 71
    sget-object v6, Lc/d/d/a;->h:Lc/d/d/a;

    invoke-direct {v3, v4, v5, v2, v6}, Lc/d/d/n;-><init>(Ljava/lang/String;[B[Lc/d/d/p;Lc/d/d/a;)V

    .line 72
    iget-object v2, v1, Lc/d/d/s/e;->d:Ljava/util/List;

    if-eqz v2, :cond_20

    .line 73
    sget-object v4, Lc/d/d/o;->e:Lc/d/d/o;

    invoke-virtual {v3, v4, v2}, Lc/d/d/n;->b(Lc/d/d/o;Ljava/lang/Object;)V

    .line 74
    :cond_20
    iget-object v1, v1, Lc/d/d/s/e;->e:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 75
    sget-object v2, Lc/d/d/o;->f:Lc/d/d/o;

    invoke-virtual {v3, v2, v1}, Lc/d/d/n;->b(Lc/d/d/o;Ljava/lang/Object;)V

    :cond_21
    return-object v3

    .line 76
    :cond_22
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 77
    goto :goto_10

    :goto_f
    throw v1

    :goto_10
    goto :goto_f
.end method

.method public b()V
    .locals 0

    return-void
.end method
