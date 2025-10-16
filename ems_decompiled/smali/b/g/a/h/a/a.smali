.class public Lb/g/a/h/a/a;
.super Lb/g/a/h/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/a/h/a/a$a;
    }
.end annotation


# instance fields
.field public final a:[D

.field public b:[Lb/g/a/h/a/a$a;


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lb/g/a/h/a/b;-><init>()V

    iput-object v1, v0, Lb/g/a/h/a/a;->a:[D

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Lb/g/a/h/a/a$a;

    iput-object v2, v0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    iget-object v7, v0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    array-length v8, v7

    if-ge v4, v8, :cond_5

    aget v8, p1, v4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v8, :cond_4

    if-eq v8, v3, :cond_3

    if-eq v8, v10, :cond_2

    if-eq v8, v9, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v3, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x2

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    :goto_2
    new-instance v22, Lb/g/a/h/a/a$a;

    aget-wide v10, v1, v4

    add-int/lit8 v23, v4, 0x1

    aget-wide v12, v1, v23

    aget-object v8, p3, v4

    aget-wide v14, v8, v2

    aget-object v8, p3, v4

    aget-wide v16, v8, v3

    aget-object v8, p3, v23

    aget-wide v18, v8, v2

    aget-object v8, p3, v23

    aget-wide v20, v8, v3

    move-object/from16 v8, v22

    move v9, v6

    invoke-direct/range {v8 .. v21}, Lb/g/a/h/a/a$a;-><init>(IDDDDDD)V

    aput-object v22, v7, v4

    move/from16 v4, v23

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public b(DI)D
    .locals 6

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_3

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->c:D

    aget-object v4, v0, v1

    iget-wide v4, v4, Lb/g/a/h/a/a$a;->c:D

    sub-double/2addr p1, v4

    aget-object v4, v0, v1

    iget-boolean v4, v4, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v4, :cond_1

    if-nez p3, :cond_0

    aget-object p3, v0, v1

    invoke-virtual {p3, v2, v3}, Lb/g/a/h/a/a$a;->c(D)D

    move-result-wide v2

    iget-object p3, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p3, p3, v1

    .line 1
    iget-wide v0, p3, Lb/g/a/h/a/a$a;->l:D

    mul-double p1, p1, v0

    add-double/2addr p1, v2

    return-wide p1

    .line 2
    :cond_0
    aget-object p3, v0, v1

    invoke-virtual {p3, v2, v3}, Lb/g/a/h/a/a$a;->d(D)D

    move-result-wide v2

    iget-object p3, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p3, p3, v1

    .line 3
    iget-wide v0, p3, Lb/g/a/h/a/a$a;->m:D

    mul-double p1, p1, v0

    add-double/2addr p1, v2

    return-wide p1

    .line 4
    :cond_1
    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lb/g/a/h/a/a$a;->g(D)V

    if-nez p3, :cond_2

    iget-object p3, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p3, p3, v1

    invoke-virtual {p3}, Lb/g/a/h/a/a$a;->e()D

    move-result-wide v2

    iget-object p3, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p3, p3, v1

    invoke-virtual {p3}, Lb/g/a/h/a/a$a;->a()D

    move-result-wide v0

    :goto_0
    mul-double v0, v0, p1

    add-double/2addr v0, v2

    return-wide v0

    :cond_2
    iget-object p3, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p3, p3, v1

    invoke-virtual {p3}, Lb/g/a/h/a/a$a;->f()D

    move-result-wide v2

    iget-object p3, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p3, p3, v1

    invoke-virtual {p3}, Lb/g/a/h/a/a$a;->b()D

    move-result-wide v0

    goto :goto_0

    :cond_3
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->d:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_5

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iget-wide v1, v1, Lb/g/a/h/a/a$a;->d:D

    sub-double/2addr p1, v1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-nez p3, :cond_4

    aget-object p3, v0, v3

    invoke-virtual {p3, v1, v2}, Lb/g/a/h/a/a$a;->c(D)D

    move-result-wide v0

    iget-object p3, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p3, p3, v3

    .line 5
    iget-wide v2, p3, Lb/g/a/h/a/a$a;->l:D

    mul-double p1, p1, v2

    add-double/2addr p1, v0

    return-wide p1

    .line 6
    :cond_4
    aget-object p3, v0, v3

    invoke-virtual {p3, v1, v2}, Lb/g/a/h/a/a$a;->d(D)D

    move-result-wide v0

    iget-object p3, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p3, p3, v3

    .line 7
    iget-wide v2, p3, Lb/g/a/h/a/a$a;->m:D

    mul-double p1, p1, v2

    add-double/2addr p1, v0

    return-wide p1

    .line 8
    :cond_5
    :goto_1
    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    array-length v2, v0

    if-ge v1, v2, :cond_a

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->d:D

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_9

    aget-object v2, v0, v1

    iget-boolean v2, v2, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v2, :cond_7

    if-nez p3, :cond_6

    aget-object p3, v0, v1

    invoke-virtual {p3, p1, p2}, Lb/g/a/h/a/a$a;->c(D)D

    move-result-wide p1

    return-wide p1

    :cond_6
    aget-object p3, v0, v1

    invoke-virtual {p3, p1, p2}, Lb/g/a/h/a/a$a;->d(D)D

    move-result-wide p1

    return-wide p1

    :cond_7
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lb/g/a/h/a/a$a;->g(D)V

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    if-nez p3, :cond_8

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->e()D

    move-result-wide p1

    return-wide p1

    :cond_8
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->f()D

    move-result-wide p1

    return-wide p1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public c(D[D)V
    .locals 10

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->c:D

    const/4 v4, 0x1

    cmpg-double v5, p1, v2

    if-gez v5, :cond_1

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->c:D

    aget-object v5, v0, v1

    iget-wide v5, v5, Lb/g/a/h/a/a$a;->c:D

    sub-double/2addr p1, v5

    aget-object v5, v0, v1

    iget-boolean v5, v5, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v5, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lb/g/a/h/a/a$a;->c(D)D

    move-result-wide v5

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v7, v0, v1

    .line 1
    iget-wide v7, v7, Lb/g/a/h/a/a$a;->l:D

    mul-double v7, v7, p1

    add-double/2addr v7, v5

    .line 2
    aput-wide v7, p3, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lb/g/a/h/a/a$a;->d(D)D

    move-result-wide v2

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    .line 3
    iget-wide v0, v0, Lb/g/a/h/a/a$a;->m:D

    mul-double p1, p1, v0

    add-double/2addr p1, v2

    .line 4
    aput-wide p1, p3, v4

    goto :goto_0

    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lb/g/a/h/a/a$a;->g(D)V

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->e()D

    move-result-wide v2

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->a()D

    move-result-wide v5

    mul-double v5, v5, p1

    add-double/2addr v5, v2

    aput-wide v5, p3, v1

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->f()D

    move-result-wide v2

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->b()D

    move-result-wide v0

    mul-double v0, v0, p1

    add-double/2addr v0, v2

    aput-wide v0, p3, v4

    :goto_0
    return-void

    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v4

    aget-object v2, v0, v2

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->d:D

    cmpl-double v5, p1, v2

    if-lez v5, :cond_3

    array-length v2, v0

    sub-int/2addr v2, v4

    aget-object v2, v0, v2

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->d:D

    sub-double v5, p1, v2

    array-length v7, v0

    sub-int/2addr v7, v4

    aget-object v8, v0, v7

    iget-boolean v8, v8, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v8, :cond_2

    aget-object p1, v0, v7

    invoke-virtual {p1, v2, v3}, Lb/g/a/h/a/a$a;->c(D)D

    move-result-wide p1

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v8, v0, v7

    .line 5
    iget-wide v8, v8, Lb/g/a/h/a/a$a;->l:D

    mul-double v8, v8, v5

    add-double/2addr v8, p1

    .line 6
    aput-wide v8, p3, v1

    aget-object p1, v0, v7

    invoke-virtual {p1, v2, v3}, Lb/g/a/h/a/a$a;->d(D)D

    move-result-wide p1

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v7

    .line 7
    iget-wide v0, v0, Lb/g/a/h/a/a$a;->m:D

    mul-double v5, v5, v0

    add-double/2addr v5, p1

    .line 8
    aput-wide v5, p3, v4

    goto :goto_1

    :cond_2
    aget-object v0, v0, v7

    invoke-virtual {v0, p1, p2}, Lb/g/a/h/a/a$a;->g(D)V

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v7

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->e()D

    move-result-wide p1

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->a()D

    move-result-wide v2

    mul-double v2, v2, v5

    add-double/2addr v2, p1

    aput-wide v2, p3, v1

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v7

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->f()D

    move-result-wide p1

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->b()D

    move-result-wide v0

    mul-double v0, v0, v5

    add-double/2addr v0, p1

    aput-wide v0, p3, v4

    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v3, v2, v0

    iget-wide v5, v3, Lb/g/a/h/a/a$a;->d:D

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_5

    aget-object v3, v2, v0

    iget-boolean v3, v3, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v3, :cond_4

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lb/g/a/h/a/a$a;->c(D)D

    move-result-wide v2

    aput-wide v2, p3, v1

    iget-object v1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Lb/g/a/h/a/a$a;->d(D)D

    move-result-wide p1

    aput-wide p1, p3, v4

    return-void

    :cond_4
    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lb/g/a/h/a/a$a;->g(D)V

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->e()D

    move-result-wide p1

    aput-wide p1, p3, v1

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->f()D

    move-result-wide p1

    aput-wide p1, p3, v4

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public d(D[F)V
    .locals 10

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->c:D

    const/4 v4, 0x1

    cmpg-double v5, p1, v2

    if-gez v5, :cond_1

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->c:D

    aget-object v5, v0, v1

    iget-wide v5, v5, Lb/g/a/h/a/a$a;->c:D

    sub-double/2addr p1, v5

    aget-object v5, v0, v1

    iget-boolean v5, v5, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v5, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lb/g/a/h/a/a$a;->c(D)D

    move-result-wide v5

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v7, v0, v1

    .line 1
    iget-wide v7, v7, Lb/g/a/h/a/a$a;->l:D

    mul-double v7, v7, p1

    add-double/2addr v7, v5

    double-to-float v5, v7

    .line 2
    aput v5, p3, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lb/g/a/h/a/a$a;->d(D)D

    move-result-wide v2

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    .line 3
    iget-wide v0, v0, Lb/g/a/h/a/a$a;->m:D

    mul-double p1, p1, v0

    add-double/2addr p1, v2

    double-to-float p1, p1

    .line 4
    aput p1, p3, v4

    goto :goto_0

    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lb/g/a/h/a/a$a;->g(D)V

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->e()D

    move-result-wide v2

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->a()D

    move-result-wide v5

    mul-double v5, v5, p1

    add-double/2addr v5, v2

    double-to-float v0, v5

    aput v0, p3, v1

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->f()D

    move-result-wide v2

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/g/a/h/a/a$a;->b()D

    move-result-wide v0

    mul-double v0, v0, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    aput p1, p3, v4

    :goto_0
    return-void

    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v4

    aget-object v2, v0, v2

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->d:D

    cmpl-double v5, p1, v2

    if-lez v5, :cond_3

    array-length v2, v0

    sub-int/2addr v2, v4

    aget-object v2, v0, v2

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->d:D

    sub-double v5, p1, v2

    array-length v7, v0

    sub-int/2addr v7, v4

    aget-object v8, v0, v7

    iget-boolean v8, v8, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v8, :cond_2

    aget-object p1, v0, v7

    invoke-virtual {p1, v2, v3}, Lb/g/a/h/a/a$a;->c(D)D

    move-result-wide p1

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v8, v0, v7

    .line 5
    iget-wide v8, v8, Lb/g/a/h/a/a$a;->l:D

    mul-double v8, v8, v5

    add-double/2addr v8, p1

    double-to-float p1, v8

    .line 6
    aput p1, p3, v1

    aget-object p1, v0, v7

    invoke-virtual {p1, v2, v3}, Lb/g/a/h/a/a$a;->d(D)D

    move-result-wide p1

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v0, v7

    .line 7
    iget-wide v0, v0, Lb/g/a/h/a/a$a;->m:D

    mul-double v5, v5, v0

    add-double/2addr v5, p1

    double-to-float p1, v5

    .line 8
    aput p1, p3, v4

    goto :goto_1

    :cond_2
    aget-object v0, v0, v7

    invoke-virtual {v0, p1, p2}, Lb/g/a/h/a/a$a;->g(D)V

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v7

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->e()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v1

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v7

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->f()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v4

    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v3, v2, v0

    iget-wide v5, v3, Lb/g/a/h/a/a$a;->d:D

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_5

    aget-object v3, v2, v0

    iget-boolean v3, v3, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v3, :cond_4

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lb/g/a/h/a/a$a;->c(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v1

    iget-object v1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Lb/g/a/h/a/a$a;->d(D)D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v4

    return-void

    :cond_4
    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lb/g/a/h/a/a$a;->g(D)V

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->e()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v1

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->f()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v4

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public e(DI)D
    .locals 5

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    aget-object p1, v0, v1

    iget-wide p1, p1, Lb/g/a/h/a/a$a;->c:D

    :cond_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->d:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    iget-wide p1, p1, Lb/g/a/h/a/a$a;->d:D

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    array-length v2, v0

    if-ge v1, v2, :cond_6

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->d:D

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_5

    aget-object v2, v0, v1

    iget-boolean v2, v2, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v2, :cond_3

    if-nez p3, :cond_2

    aget-object p1, v0, v1

    .line 1
    iget-wide p1, p1, Lb/g/a/h/a/a$a;->l:D

    return-wide p1

    .line 2
    :cond_2
    aget-object p1, v0, v1

    .line 3
    iget-wide p1, p1, Lb/g/a/h/a/a$a;->m:D

    return-wide p1

    .line 4
    :cond_3
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lb/g/a/h/a/a$a;->g(D)V

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    if-nez p3, :cond_4

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->a()D

    move-result-wide p1

    return-wide p1

    :cond_4
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->b()D

    move-result-wide p1

    return-wide p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public f(D[D)V
    .locals 7

    iget-object v0, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->c:D

    const/4 v4, 0x1

    cmpg-double v5, p1, v2

    if-gez v5, :cond_0

    aget-object p1, v0, v1

    iget-wide p1, p1, Lb/g/a/h/a/a$a;->c:D

    goto :goto_0

    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v4

    aget-object v2, v0, v2

    iget-wide v2, v2, Lb/g/a/h/a/a$a;->d:D

    cmpl-double v5, p1, v2

    if-lez v5, :cond_1

    array-length p1, v0

    sub-int/2addr p1, v4

    aget-object p1, v0, p1

    iget-wide p1, p1, Lb/g/a/h/a/a$a;->d:D

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    iget-wide v5, v3, Lb/g/a/h/a/a$a;->d:D

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_3

    aget-object v3, v2, v0

    iget-boolean v3, v3, Lb/g/a/h/a/a$a;->r:Z

    if-eqz v3, :cond_2

    aget-object p1, v2, v0

    .line 1
    iget-wide p1, p1, Lb/g/a/h/a/a$a;->l:D

    .line 2
    aput-wide p1, p3, v1

    aget-object p1, v2, v0

    .line 3
    iget-wide p1, p1, Lb/g/a/h/a/a$a;->m:D

    .line 4
    aput-wide p1, p3, v4

    return-void

    :cond_2
    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lb/g/a/h/a/a$a;->g(D)V

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->a()D

    move-result-wide p1

    aput-wide p1, p3, v1

    iget-object p1, p0, Lb/g/a/h/a/a;->b:[Lb/g/a/h/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lb/g/a/h/a/a$a;->b()D

    move-result-wide p1

    aput-wide p1, p3, v4

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public g()[D
    .locals 1

    iget-object v0, p0, Lb/g/a/h/a/a;->a:[D

    return-object v0
.end method
