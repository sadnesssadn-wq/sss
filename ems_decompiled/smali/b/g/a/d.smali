.class public Lb/g/a/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/a/d$a;
    }
.end annotation


# static fields
.field public static p:Z = false

.field public static q:I = 0x3e8

.field public static r:J


# instance fields
.field public a:Z

.field public b:I

.field public c:Lb/g/a/d$a;

.field public d:I

.field public e:I

.field public f:[Lb/g/a/b;

.field public g:Z

.field public h:[Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:Lb/g/a/c;

.field public m:[Lb/g/a/g;

.field public n:I

.field public o:Lb/g/a/d$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/a/d;->a:Z

    iput v0, p0, Lb/g/a/d;->b:I

    const/16 v1, 0x20

    iput v1, p0, Lb/g/a/d;->d:I

    iput v1, p0, Lb/g/a/d;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    iput-boolean v0, p0, Lb/g/a/d;->g:Z

    new-array v2, v1, [Z

    iput-object v2, p0, Lb/g/a/d;->h:[Z

    const/4 v2, 0x1

    iput v2, p0, Lb/g/a/d;->i:I

    iput v0, p0, Lb/g/a/d;->j:I

    iput v1, p0, Lb/g/a/d;->k:I

    sget v2, Lb/g/a/d;->q:I

    new-array v2, v2, [Lb/g/a/g;

    iput-object v2, p0, Lb/g/a/d;->m:[Lb/g/a/g;

    iput v0, p0, Lb/g/a/d;->n:I

    new-array v0, v1, [Lb/g/a/b;

    iput-object v0, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    invoke-virtual {p0}, Lb/g/a/d;->t()V

    new-instance v0, Lb/g/a/c;

    invoke-direct {v0}, Lb/g/a/c;-><init>()V

    iput-object v0, p0, Lb/g/a/d;->l:Lb/g/a/c;

    new-instance v1, Lb/g/a/f;

    invoke-direct {v1, v0}, Lb/g/a/f;-><init>(Lb/g/a/c;)V

    iput-object v1, p0, Lb/g/a/d;->c:Lb/g/a/d$a;

    new-instance v1, Lb/g/a/b;

    invoke-direct {v1, v0}, Lb/g/a/b;-><init>(Lb/g/a/c;)V

    iput-object v1, p0, Lb/g/a/d;->o:Lb/g/a/d$a;

    return-void
.end method


# virtual methods
.method public final a(Lb/g/a/g$a;Ljava/lang/String;)Lb/g/a/g;
    .locals 2

    iget-object p2, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object p2, p2, Lb/g/a/c;->c:Lb/g/a/e;

    invoke-virtual {p2}, Lb/g/a/e;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/g/a/g;

    if-nez p2, :cond_0

    new-instance p2, Lb/g/a/g;

    invoke-direct {p2, p1}, Lb/g/a/g;-><init>(Lb/g/a/g$a;)V

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Lb/g/a/g;->e()V

    .line 2
    :goto_0
    iput-object p1, p2, Lb/g/a/g;->k:Lb/g/a/g$a;

    .line 3
    iget p1, p0, Lb/g/a/d;->n:I

    sget v0, Lb/g/a/d;->q:I

    if-lt p1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lb/g/a/d;->q:I

    iget-object p1, p0, Lb/g/a/d;->m:[Lb/g/a/g;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lb/g/a/g;

    iput-object p1, p0, Lb/g/a/d;->m:[Lb/g/a/g;

    :cond_1
    iget-object p1, p0, Lb/g/a/d;->m:[Lb/g/a/g;

    iget v0, p0, Lb/g/a/d;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/g/a/d;->n:I

    aput-object p2, p1, v0

    return-object p2
.end method

.method public b(Lb/g/a/g;Lb/g/a/g;IFLb/g/a/g;Lb/g/a/g;II)V
    .locals 6

    invoke-virtual {p0}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 1
    iget-object p3, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p3, p1, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p6, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    goto/16 :goto_2

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    iget-object p4, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p4, p1, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p2, v3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p5, v3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p6, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p4, p1, v3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p2, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    int-to-float p1, p3

    goto :goto_1

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p6, v3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p5, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    neg-int p1, p7

    :goto_0
    int-to-float p1, p1

    :goto_1
    iput p1, v0, Lb/g/a/b;->b:F

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-interface {v2, p1, v5}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    mul-float v2, v4, v3

    invoke-interface {p1, p2, v2}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    mul-float v3, v3, p4

    invoke-interface {p1, p5, v3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    mul-float v1, v1, p4

    invoke-interface {p1, p6, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p2, p1

    iput p2, v0, Lb/g/a/b;->b:F

    :cond_6
    :goto_2
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    .line 2
    invoke-virtual {v0, p0, p8}, Lb/g/a/b;->c(Lb/g/a/d;I)Lb/g/a/b;

    :cond_7
    invoke-virtual {p0, v0}, Lb/g/a/d;->c(Lb/g/a/b;)V

    return-void
.end method

.method public c(Lb/g/a/b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lb/g/a/g$a;->c:Lb/g/a/g$a;

    iget v3, v0, Lb/g/a/d;->j:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iget v5, v0, Lb/g/a/d;->k:I

    if-ge v3, v5, :cond_0

    iget v3, v0, Lb/g/a/d;->i:I

    add-int/2addr v3, v4

    iget v5, v0, Lb/g/a/d;->e:I

    if-lt v3, v5, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lb/g/a/d;->p()V

    :cond_1
    iget-boolean v3, v1, Lb/g/a/b;->e:Z

    if-nez v3, :cond_1f

    .line 1
    iget-object v3, v0, Lb/g/a/d;->f:[Lb/g/a/b;

    array-length v3, v3

    const/4 v6, -0x1

    if-nez v3, :cond_2

    goto :goto_5

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_8

    iget-object v7, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v7}, Lb/g/a/b$a;->c()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    iget-object v9, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v9, v8}, Lb/g/a/b$a;->h(I)Lb/g/a/g;

    move-result-object v9

    iget v10, v9, Lb/g/a/g;->e:I

    if-ne v10, v6, :cond_3

    iget-boolean v10, v9, Lb/g/a/g;->h:Z

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    iget-object v10, v1, Lb/g/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, v1, Lb/g/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_6

    iget-object v9, v1, Lb/g/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/g/a/g;

    iget-boolean v10, v9, Lb/g/a/g;->h:Z

    if-eqz v10, :cond_5

    invoke-virtual {v1, v0, v9, v4}, Lb/g/a/b;->k(Lb/g/a/d;Lb/g/a/g;Z)V

    goto :goto_4

    :cond_5
    iget-object v10, v0, Lb/g/a/d;->f:[Lb/g/a/b;

    iget v9, v9, Lb/g/a/g;->e:I

    aget-object v9, v10, v9

    invoke-virtual {v1, v0, v9, v4}, Lb/g/a/b;->l(Lb/g/a/d;Lb/g/a/b;Z)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    iget-object v7, v1, Lb/g/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :cond_8
    iget-object v3, v1, Lb/g/a/b;->a:Lb/g/a/g;

    if-eqz v3, :cond_9

    iget-object v3, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v3}, Lb/g/a/b$a;->c()I

    move-result v3

    if-nez v3, :cond_9

    iput-boolean v4, v1, Lb/g/a/b;->e:Z

    iput-boolean v4, v0, Lb/g/a/d;->a:Z

    .line 2
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lb/g/a/b;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    .line 3
    :cond_a
    iget v3, v1, Lb/g/a/b;->b:F

    const/4 v7, 0x0

    cmpg-float v8, v3, v7

    if-gez v8, :cond_b

    const/high16 v8, -0x40800000    # -1.0f

    mul-float v3, v3, v8

    iput v3, v1, Lb/g/a/b;->b:F

    iget-object v3, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v3}, Lb/g/a/b$a;->k()V

    .line 4
    :cond_b
    iget-object v3, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v3}, Lb/g/a/b$a;->c()I

    move-result v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6
    if-ge v9, v3, :cond_12

    iget-object v5, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v5, v9}, Lb/g/a/b$a;->a(I)F

    move-result v5

    iget-object v6, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v6, v9}, Lb/g/a/b$a;->h(I)Lb/g/a/g;

    move-result-object v6

    iget-object v8, v6, Lb/g/a/g;->k:Lb/g/a/g$a;

    if-ne v8, v2, :cond_e

    if-nez v10, :cond_c

    goto :goto_7

    :cond_c
    cmpl-float v8, v12, v5

    if-lez v8, :cond_d

    :goto_7
    invoke-virtual {v1, v6}, Lb/g/a/b;->h(Lb/g/a/g;)Z

    move-result v13

    move v12, v5

    move-object v10, v6

    goto :goto_9

    :cond_d
    if-nez v13, :cond_11

    invoke-virtual {v1, v6}, Lb/g/a/b;->h(Lb/g/a/g;)Z

    move-result v8

    if-eqz v8, :cond_11

    move v12, v5

    move-object v10, v6

    const/4 v13, 0x1

    goto :goto_9

    :cond_e
    if-nez v10, :cond_11

    cmpg-float v8, v5, v7

    if-gez v8, :cond_11

    if-nez v11, :cond_f

    goto :goto_8

    :cond_f
    cmpl-float v8, v14, v5

    if-lez v8, :cond_10

    :goto_8
    invoke-virtual {v1, v6}, Lb/g/a/b;->h(Lb/g/a/g;)Z

    move-result v15

    move v14, v5

    move-object v11, v6

    goto :goto_9

    :cond_10
    if-nez v15, :cond_11

    invoke-virtual {v1, v6}, Lb/g/a/b;->h(Lb/g/a/g;)Z

    move-result v8

    if-eqz v8, :cond_11

    move v14, v5

    move-object v11, v6

    const/4 v15, 0x1

    :cond_11
    :goto_9
    add-int/lit8 v9, v9, 0x1

    const/4 v6, -0x1

    goto :goto_6

    :cond_12
    if-eqz v10, :cond_13

    goto :goto_a

    :cond_13
    move-object v10, v11

    :goto_a
    if-nez v10, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    .line 5
    :cond_14
    invoke-virtual {v1, v10}, Lb/g/a/b;->j(Lb/g/a/g;)V

    const/4 v3, 0x0

    :goto_b
    iget-object v5, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v5}, Lb/g/a/b$a;->c()I

    move-result v5

    if-nez v5, :cond_15

    iput-boolean v4, v1, Lb/g/a/b;->e:Z

    :cond_15
    if-eqz v3, :cond_1b

    .line 6
    iget v3, v0, Lb/g/a/d;->i:I

    add-int/2addr v3, v4

    iget v5, v0, Lb/g/a/d;->e:I

    if-lt v3, v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lb/g/a/d;->p()V

    :cond_16
    sget-object v3, Lb/g/a/g$a;->e:Lb/g/a/g$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lb/g/a/d;->a(Lb/g/a/g$a;Ljava/lang/String;)Lb/g/a/g;

    move-result-object v3

    iget v5, v0, Lb/g/a/d;->b:I

    add-int/2addr v5, v4

    iput v5, v0, Lb/g/a/d;->b:I

    iget v6, v0, Lb/g/a/d;->i:I

    add-int/2addr v6, v4

    iput v6, v0, Lb/g/a/d;->i:I

    iput v5, v3, Lb/g/a/g;->d:I

    iget-object v6, v0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v6, v6, Lb/g/a/c;->d:[Lb/g/a/g;

    aput-object v3, v6, v5

    .line 7
    iput-object v3, v1, Lb/g/a/b;->a:Lb/g/a/g;

    iget v5, v0, Lb/g/a/d;->j:I

    invoke-virtual/range {p0 .. p1}, Lb/g/a/d;->i(Lb/g/a/b;)V

    iget v6, v0, Lb/g/a/d;->j:I

    add-int/2addr v5, v4

    if-ne v6, v5, :cond_1b

    iget-object v5, v0, Lb/g/a/d;->o:Lb/g/a/d$a;

    check-cast v5, Lb/g/a/b;

    .line 8
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v5, Lb/g/a/b;->a:Lb/g/a/g;

    iget-object v6, v5, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v6}, Lb/g/a/b$a;->clear()V

    const/4 v6, 0x0

    :goto_c
    iget-object v8, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v8}, Lb/g/a/b$a;->c()I

    move-result v8

    if-ge v6, v8, :cond_17

    iget-object v8, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v8, v6}, Lb/g/a/b$a;->h(I)Lb/g/a/g;

    move-result-object v8

    iget-object v9, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v9, v6}, Lb/g/a/b$a;->a(I)F

    move-result v9

    iget-object v10, v5, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v10, v8, v9, v4}, Lb/g/a/b$a;->i(Lb/g/a/g;FZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 9
    :cond_17
    iget-object v5, v0, Lb/g/a/d;->o:Lb/g/a/d$a;

    invoke-virtual {v0, v5}, Lb/g/a/d;->s(Lb/g/a/d$a;)I

    iget v5, v3, Lb/g/a/g;->e:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1a

    iget-object v5, v1, Lb/g/a/b;->a:Lb/g/a/g;

    if-ne v5, v3, :cond_18

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v1, v5, v3}, Lb/g/a/b;->i([ZLb/g/a/g;)Lb/g/a/g;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 11
    invoke-virtual {v1, v3}, Lb/g/a/b;->j(Lb/g/a/g;)V

    :cond_18
    iget-boolean v3, v1, Lb/g/a/b;->e:Z

    if-nez v3, :cond_19

    iget-object v3, v1, Lb/g/a/b;->a:Lb/g/a/g;

    invoke-virtual {v3, v0, v1}, Lb/g/a/g;->j(Lb/g/a/d;Lb/g/a/b;)V

    :cond_19
    iget-object v3, v0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v3, v3, Lb/g/a/c;->b:Lb/g/a/e;

    invoke-virtual {v3, v1}, Lb/g/a/e;->b(Ljava/lang/Object;)Z

    iget v3, v0, Lb/g/a/d;->j:I

    sub-int/2addr v3, v4

    iput v3, v0, Lb/g/a/d;->j:I

    :cond_1a
    const/4 v3, 0x1

    goto :goto_d

    :cond_1b
    const/4 v3, 0x0

    .line 12
    :goto_d
    iget-object v5, v1, Lb/g/a/b;->a:Lb/g/a/g;

    if-eqz v5, :cond_1c

    iget-object v5, v5, Lb/g/a/g;->k:Lb/g/a/g$a;

    if-eq v5, v2, :cond_1d

    iget v2, v1, Lb/g/a/b;->b:F

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v4, 0x0

    :cond_1d
    :goto_e
    if-nez v4, :cond_1e

    return-void

    :cond_1e
    move v5, v3

    goto :goto_f

    :cond_1f
    const/4 v5, 0x0

    :goto_f
    if-nez v5, :cond_20

    .line 13
    invoke-virtual/range {p0 .. p1}, Lb/g/a/d;->i(Lb/g/a/b;)V

    :cond_20
    return-void
.end method

.method public d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, Lb/g/a/g;->h:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lb/g/a/g;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, Lb/g/a/g;->g:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lb/g/a/g;->g(Lb/g/a/d;F)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    .line 1
    iput p3, v1, Lb/g/a/b;->b:F

    :cond_2
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    iget-object v2, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v2, p1, p3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p2, v3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v2, p1, v3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, v1, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p2, p3}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    .line 2
    invoke-virtual {v1, p0, p4}, Lb/g/a/b;->c(Lb/g/a/d;I)Lb/g/a/b;

    :cond_4
    invoke-virtual {p0, v1}, Lb/g/a/d;->c(Lb/g/a/b;)V

    return-object v1
.end method

.method public e(Lb/g/a/g;I)V
    .locals 4

    iget v0, p1, Lb/g/a/g;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Lb/g/a/g;->g(Lb/g/a/d;F)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lb/g/a/d;->b:I

    add-int/2addr p2, v2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object p2, p2, Lb/g/a/c;->d:[Lb/g/a/g;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v1, :cond_5

    iget-object v3, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v0, v3, v0

    iget-boolean v3, v0, Lb/g/a/b;->e:Z

    if-eqz v3, :cond_2

    :goto_1
    int-to-float p1, p2

    iput p1, v0, Lb/g/a/b;->b:F

    goto :goto_4

    :cond_2
    iget-object v3, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v3}, Lb/g/a/b$a;->c()I

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v2, v0, Lb/g/a/b;->e:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v0

    if-gez p2, :cond_4

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 1
    iput p2, v0, Lb/g/a/b;->b:F

    iget-object p2, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    int-to-float p2, p2

    iput p2, v0, Lb/g/a/b;->b:F

    iget-object p2, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    :goto_2
    invoke-interface {p2, p1, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    goto :goto_3

    .line 2
    :cond_5
    invoke-virtual {p0}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v0

    .line 3
    iput-object p1, v0, Lb/g/a/b;->a:Lb/g/a/g;

    int-to-float p2, p2

    iput p2, p1, Lb/g/a/g;->g:F

    iput p2, v0, Lb/g/a/b;->b:F

    iput-boolean v2, v0, Lb/g/a/b;->e:Z

    .line 4
    :goto_3
    invoke-virtual {p0, v0}, Lb/g/a/d;->c(Lb/g/a/b;)V

    :goto_4
    return-void
.end method

.method public f(Lb/g/a/g;Lb/g/a/g;II)V
    .locals 3

    invoke-virtual {p0}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lb/g/a/d;->n()Lb/g/a/g;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lb/g/a/g;->f:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lb/g/a/b;->e(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;I)Lb/g/a/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, v1}, Lb/g/a/b$a;->d(Lb/g/a/g;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p4, p2}, Lb/g/a/d;->k(ILjava/lang/String;)Lb/g/a/g;

    move-result-object p2

    .line 2
    iget-object p3, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lb/g/a/d;->c(Lb/g/a/b;)V

    return-void
.end method

.method public g(Lb/g/a/g;Lb/g/a/g;II)V
    .locals 3

    invoke-virtual {p0}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lb/g/a/d;->n()Lb/g/a/g;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lb/g/a/g;->f:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lb/g/a/b;->f(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;I)Lb/g/a/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, v1}, Lb/g/a/b$a;->d(Lb/g/a/g;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p4, p2}, Lb/g/a/d;->k(ILjava/lang/String;)Lb/g/a/g;

    move-result-object p2

    .line 2
    iget-object p3, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lb/g/a/d;->c(Lb/g/a/b;)V

    return-void
.end method

.method public h(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;FI)V
    .locals 7

    invoke-virtual {p0}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lb/g/a/b;->d(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;F)Lb/g/a/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    invoke-virtual {v6, p0, p6}, Lb/g/a/b;->c(Lb/g/a/d;I)Lb/g/a/b;

    :cond_0
    invoke-virtual {p0, v6}, Lb/g/a/d;->c(Lb/g/a/b;)V

    return-void
.end method

.method public final i(Lb/g/a/b;)V
    .locals 7

    iget-boolean v0, p1, Lb/g/a/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lb/g/a/b;->a:Lb/g/a/g;

    iget p1, p1, Lb/g/a/b;->b:F

    invoke-virtual {v0, p0, p1}, Lb/g/a/g;->g(Lb/g/a/d;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    iget v1, p0, Lb/g/a/d;->j:I

    aput-object p1, v0, v1

    iget-object v0, p1, Lb/g/a/b;->a:Lb/g/a/g;

    iput v1, v0, Lb/g/a/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/g/a/d;->j:I

    invoke-virtual {v0, p0, p1}, Lb/g/a/g;->j(Lb/g/a/d;Lb/g/a/b;)V

    :goto_0
    iget-boolean p1, p0, Lb/g/a/d;->a:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lb/g/a/d;->j:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v2, v1, v0

    if-eqz v2, :cond_5

    aget-object v2, v1, v0

    iget-boolean v2, v2, Lb/g/a/b;->e:Z

    if-eqz v2, :cond_5

    aget-object v1, v1, v0

    iget-object v2, v1, Lb/g/a/b;->a:Lb/g/a/g;

    iget v3, v1, Lb/g/a/b;->b:F

    invoke-virtual {v2, p0, v3}, Lb/g/a/g;->g(Lb/g/a/d;F)V

    iget-object v2, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v2, v2, Lb/g/a/c;->b:Lb/g/a/e;

    invoke-virtual {v2, v1}, Lb/g/a/e;->b(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Lb/g/a/d;->j:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    aget-object v5, v3, v4

    iget-object v5, v5, Lb/g/a/b;->a:Lb/g/a/g;

    iget v5, v5, Lb/g/a/g;->e:I

    if-ne v5, v1, :cond_2

    aget-object v3, v3, v4

    iget-object v3, v3, Lb/g/a/b;->a:Lb/g/a/g;

    iput v4, v3, Lb/g/a/g;->e:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lb/g/a/d;->j:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, Lb/g/a/d;->a:Z

    :cond_7
    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lb/g/a/d;->j:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v1, v1, v0

    iget-object v2, v1, Lb/g/a/b;->a:Lb/g/a/g;

    iget v1, v1, Lb/g/a/b;->b:F

    iput v1, v2, Lb/g/a/g;->g:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(ILjava/lang/String;)Lb/g/a/g;
    .locals 2

    iget v0, p0, Lb/g/a/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lb/g/a/d;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lb/g/a/d;->p()V

    :cond_0
    sget-object v0, Lb/g/a/g$a;->f:Lb/g/a/g$a;

    invoke-virtual {p0, v0, p2}, Lb/g/a/d;->a(Lb/g/a/g$a;Ljava/lang/String;)Lb/g/a/g;

    move-result-object p2

    iget v0, p0, Lb/g/a/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/g/a/d;->b:I

    iget v1, p0, Lb/g/a/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/g/a/d;->i:I

    iput v0, p2, Lb/g/a/g;->d:I

    iput p1, p2, Lb/g/a/g;->f:I

    iget-object p1, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object p1, p1, Lb/g/a/c;->d:[Lb/g/a/g;

    aput-object p2, p1, v0

    iget-object p1, p0, Lb/g/a/d;->c:Lb/g/a/d$a;

    invoke-interface {p1, p2}, Lb/g/a/d$a;->b(Lb/g/a/g;)V

    return-object p2
.end method

.method public l(Ljava/lang/Object;)Lb/g/a/g;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lb/g/a/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lb/g/a/d;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lb/g/a/d;->p()V

    :cond_1
    instance-of v1, p1, Lb/g/a/i/c;

    if-eqz v1, :cond_5

    check-cast p1, Lb/g/a/i/c;

    .line 1
    iget-object v0, p1, Lb/g/a/i/c;->i:Lb/g/a/g;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lb/g/a/i/c;->l()V

    .line 3
    iget-object p1, p1, Lb/g/a/i/c;->i:Lb/g/a/g;

    move-object v0, p1

    .line 4
    :cond_2
    iget p1, v0, Lb/g/a/g;->d:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, Lb/g/a/d;->b:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v2, v2, Lb/g/a/c;->d:[Lb/g/a/g;

    aget-object v2, v2, p1

    if-nez v2, :cond_5

    :cond_3
    if-eq p1, v1, :cond_4

    invoke-virtual {v0}, Lb/g/a/g;->e()V

    :cond_4
    iget p1, p0, Lb/g/a/d;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/g/a/d;->b:I

    iget v1, p0, Lb/g/a/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/g/a/d;->i:I

    iput p1, v0, Lb/g/a/g;->d:I

    sget-object v1, Lb/g/a/g$a;->c:Lb/g/a/g$a;

    iput-object v1, v0, Lb/g/a/g;->k:Lb/g/a/g$a;

    iget-object v1, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v1, v1, Lb/g/a/c;->d:[Lb/g/a/g;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public m()Lb/g/a/b;
    .locals 5

    iget-object v0, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v0, v0, Lb/g/a/c;->b:Lb/g/a/e;

    invoke-virtual {v0}, Lb/g/a/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lb/g/a/b;

    iget-object v1, p0, Lb/g/a/d;->l:Lb/g/a/c;

    invoke-direct {v0, v1}, Lb/g/a/b;-><init>(Lb/g/a/c;)V

    sget-wide v1, Lb/g/a/d;->r:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lb/g/a/d;->r:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lb/g/a/b;->a:Lb/g/a/g;

    iget-object v1, v0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v1}, Lb/g/a/b$a;->clear()V

    const/4 v1, 0x0

    iput v1, v0, Lb/g/a/b;->b:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/g/a/b;->e:Z

    .line 2
    :goto_0
    sget v1, Lb/g/a/g;->p:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lb/g/a/g;->p:I

    return-object v0
.end method

.method public n()Lb/g/a/g;
    .locals 3

    iget v0, p0, Lb/g/a/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lb/g/a/d;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lb/g/a/d;->p()V

    :cond_0
    sget-object v0, Lb/g/a/g$a;->e:Lb/g/a/g$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lb/g/a/d;->a(Lb/g/a/g$a;Ljava/lang/String;)Lb/g/a/g;

    move-result-object v0

    iget v1, p0, Lb/g/a/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/g/a/d;->b:I

    iget v2, p0, Lb/g/a/d;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/g/a/d;->i:I

    iput v1, v0, Lb/g/a/g;->d:I

    iget-object v2, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v2, v2, Lb/g/a/c;->d:[Lb/g/a/g;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public o(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lb/g/a/i/c;

    .line 1
    iget-object p1, p1, Lb/g/a/i/c;->i:Lb/g/a/g;

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Lb/g/a/g;->g:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p()V
    .locals 3

    iget v0, p0, Lb/g/a/d;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb/g/a/d;->d:I

    iget-object v1, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/a/b;

    iput-object v0, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    iget-object v0, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v1, v0, Lb/g/a/c;->d:[Lb/g/a/g;

    iget v2, p0, Lb/g/a/d;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb/g/a/g;

    iput-object v1, v0, Lb/g/a/c;->d:[Lb/g/a/g;

    iget v0, p0, Lb/g/a/d;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lb/g/a/d;->h:[Z

    iput v0, p0, Lb/g/a/d;->e:I

    iput v0, p0, Lb/g/a/d;->k:I

    return-void
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lb/g/a/d;->c:Lb/g/a/d$a;

    invoke-interface {v0}, Lb/g/a/d$a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/g/a/d;->j()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lb/g/a/d;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/g/a/d;->j:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lb/g/a/b;->e:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lb/g/a/d;->j()V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Lb/g/a/d;->c:Lb/g/a/d$a;

    invoke-virtual {p0, v0}, Lb/g/a/d;->r(Lb/g/a/d$a;)V

    :goto_3
    return-void
.end method

.method public r(Lb/g/a/d$a;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lb/g/a/g$a;->c:Lb/g/a/g$a;

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lb/g/a/d;->j:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v7, v4, v3

    iget-object v7, v7, Lb/g/a/b;->a:Lb/g/a/g;

    iget-object v7, v7, Lb/g/a/g;->k:Lb/g/a/g$a;

    if-ne v7, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v4, v3

    iget v4, v4, Lb/g/a/b;->b:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-nez v3, :cond_e

    add-int/2addr v4, v6

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_4
    iget v13, v0, Lb/g/a/d;->j:I

    if-ge v9, v13, :cond_b

    iget-object v13, v0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v13, v13, v9

    iget-object v14, v13, Lb/g/a/b;->a:Lb/g/a/g;

    iget-object v14, v14, Lb/g/a/g;->k:Lb/g/a/g$a;

    if-ne v14, v1, :cond_3

    goto :goto_8

    :cond_3
    iget-boolean v14, v13, Lb/g/a/b;->e:Z

    if-eqz v14, :cond_4

    goto :goto_8

    :cond_4
    iget v14, v13, Lb/g/a/b;->b:F

    cmpg-float v14, v14, v5

    if-gez v14, :cond_a

    iget-object v14, v13, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v14}, Lb/g/a/b$a;->c()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_a

    iget-object v2, v13, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v2, v15}, Lb/g/a/b$a;->h(I)Lb/g/a/g;

    move-result-object v2

    iget-object v6, v13, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v6, v2}, Lb/g/a/b$a;->d(Lb/g/a/g;)F

    move-result v6

    cmpg-float v16, v6, v5

    if-gtz v16, :cond_5

    goto :goto_7

    :cond_5
    const/4 v5, 0x0

    :goto_6
    const/16 v8, 0x9

    if-ge v5, v8, :cond_9

    iget-object v8, v2, Lb/g/a/g;->i:[F

    aget v8, v8, v5

    div-float/2addr v8, v6

    cmpg-float v17, v8, v7

    if-gez v17, :cond_6

    if-eq v5, v12, :cond_7

    :cond_6
    if-le v5, v12, :cond_8

    :cond_7
    iget v11, v2, Lb/g/a/g;->d:I

    move v12, v5

    move v7, v8

    move v10, v9

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, -0x1

    if-eq v10, v2, :cond_c

    iget-object v5, v0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v5, v5, v10

    iget-object v6, v5, Lb/g/a/b;->a:Lb/g/a/g;

    iput v2, v6, Lb/g/a/g;->e:I

    iget-object v2, v0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v2, v2, Lb/g/a/c;->d:[Lb/g/a/g;

    aget-object v2, v2, v11

    invoke-virtual {v5, v2}, Lb/g/a/b;->j(Lb/g/a/g;)V

    iget-object v2, v5, Lb/g/a/b;->a:Lb/g/a/g;

    iput v10, v2, Lb/g/a/g;->e:I

    invoke-virtual {v2, v0, v5}, Lb/g/a/g;->j(Lb/g/a/d;Lb/g/a/b;)V

    goto :goto_9

    :cond_c
    const/4 v3, 0x1

    :goto_9
    iget v2, v0, Lb/g/a/d;->i:I

    div-int/lit8 v2, v2, 0x2

    if-le v4, v2, :cond_d

    const/4 v3, 0x1

    :cond_d
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 2
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lb/g/a/d;->s(Lb/g/a/d$a;)I

    invoke-virtual/range {p0 .. p0}, Lb/g/a/d;->j()V

    return-void
.end method

.method public final s(Lb/g/a/d$a;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/g/a/d;->i:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lb/g/a/d;->h:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-nez v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lb/g/a/d;->i:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2

    return v3

    :cond_2
    move-object v4, p1

    check-cast v4, Lb/g/a/b;

    .line 1
    iget-object v4, v4, Lb/g/a/b;->a:Lb/g/a/g;

    if-eqz v4, :cond_3

    .line 2
    iget-object v5, p0, Lb/g/a/d;->h:[Z

    iget v4, v4, Lb/g/a/g;->d:I

    aput-boolean v1, v5, v4

    :cond_3
    iget-object v4, p0, Lb/g/a/d;->h:[Z

    invoke-interface {p1, p0, v4}, Lb/g/a/d$a;->a(Lb/g/a/d;[Z)Lb/g/a/g;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lb/g/a/d;->h:[Z

    iget v6, v4, Lb/g/a/g;->d:I

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_4

    return v3

    :cond_4
    aput-boolean v1, v5, v6

    :cond_5
    if-eqz v4, :cond_a

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_2
    iget v9, p0, Lb/g/a/d;->j:I

    if-ge v7, v9, :cond_9

    iget-object v9, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v9, v9, v7

    iget-object v10, v9, Lb/g/a/b;->a:Lb/g/a/g;

    iget-object v10, v10, Lb/g/a/g;->k:Lb/g/a/g$a;

    sget-object v11, Lb/g/a/g$a;->c:Lb/g/a/g$a;

    if-ne v10, v11, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v10, v9, Lb/g/a/b;->e:Z

    if-eqz v10, :cond_7

    goto :goto_3

    .line 3
    :cond_7
    iget-object v10, v9, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v10, v4}, Lb/g/a/b$a;->e(Lb/g/a/g;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4
    iget-object v10, v9, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v10, v4}, Lb/g/a/b$a;->d(Lb/g/a/g;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8

    iget v9, v9, Lb/g/a/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_8

    move v8, v7

    move v5, v9

    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    if-le v8, v6, :cond_1

    iget-object v5, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v5, v5, v8

    iget-object v7, v5, Lb/g/a/b;->a:Lb/g/a/g;

    iput v6, v7, Lb/g/a/g;->e:I

    invoke-virtual {v5, v4}, Lb/g/a/b;->j(Lb/g/a/g;)V

    iget-object v4, v5, Lb/g/a/b;->a:Lb/g/a/g;

    iput v8, v4, Lb/g/a/g;->e:I

    invoke-virtual {v4, p0, v5}, Lb/g/a/g;->j(Lb/g/a/d;Lb/g/a/b;)V

    goto :goto_1

    :cond_a
    const/4 v2, 0x1

    goto :goto_1

    :cond_b
    return v3
.end method

.method public final t()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lb/g/a/d;->j:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v2, v2, Lb/g/a/c;->b:Lb/g/a/e;

    invoke-virtual {v2, v1}, Lb/g/a/e;->b(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public u()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v3, v2, Lb/g/a/c;->d:[Lb/g/a/g;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lb/g/a/g;->e()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lb/g/a/c;->c:Lb/g/a/e;

    iget-object v2, p0, Lb/g/a/d;->m:[Lb/g/a/g;

    iget v3, p0, Lb/g/a/d;->n:I

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v4, v2

    if-le v3, v4, :cond_2

    array-length v3, v2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    iget v6, v1, Lb/g/a/e;->b:I

    iget-object v7, v1, Lb/g/a/e;->a:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v6, v8, :cond_3

    aput-object v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lb/g/a/e;->b:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2
    :cond_4
    iput v0, p0, Lb/g/a/d;->n:I

    iget-object v1, p0, Lb/g/a/d;->l:Lb/g/a/c;

    iget-object v1, v1, Lb/g/a/c;->d:[Lb/g/a/g;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Lb/g/a/d;->b:I

    iget-object v1, p0, Lb/g/a/d;->c:Lb/g/a/d$a;

    invoke-interface {v1}, Lb/g/a/d$a;->clear()V

    const/4 v1, 0x1

    iput v1, p0, Lb/g/a/d;->i:I

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lb/g/a/d;->j:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lb/g/a/d;->f:[Lb/g/a/b;

    aget-object v3, v2, v1

    if-eqz v3, :cond_5

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lb/g/a/d;->t()V

    iput v0, p0, Lb/g/a/d;->j:I

    new-instance v0, Lb/g/a/b;

    iget-object v1, p0, Lb/g/a/d;->l:Lb/g/a/c;

    invoke-direct {v0, v1}, Lb/g/a/b;-><init>(Lb/g/a/c;)V

    iput-object v0, p0, Lb/g/a/d;->o:Lb/g/a/d$a;

    return-void
.end method
