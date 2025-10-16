.class public abstract Lc/d/d/v/p;
.super Lc/d/d/v/k;
.source ""


# static fields
.field public static final d:[I

.field public static final e:[I

.field public static final f:[[I

.field public static final g:[[I


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:Lc/d/d/v/o;

.field public final c:Lc/d/d/v/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lc/d/d/v/p;->d:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lc/d/d/v/p;->e:[I

    const/16 v2, 0xa

    new-array v3, v2, [[I

    const/4 v4, 0x4

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x1

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x2

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    aput-object v5, v3, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    aput-object v0, v3, v4

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_8

    const/4 v1, 0x6

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_9

    const/4 v1, 0x7

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_a

    const/16 v1, 0x8

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_b

    const/16 v1, 0x9

    aput-object v0, v3, v1

    sput-object v3, Lc/d/d/v/p;->f:[[I

    const/16 v0, 0x14

    new-array v1, v0, [[I

    sput-object v1, Lc/d/d/v/p;->g:[[I

    invoke-static {v3, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v1, Lc/d/d/v/p;->f:[[I

    add-int/lit8 v3, v2, -0xa

    aget-object v1, v1, v3

    array-length v3, v1

    new-array v3, v3, [I

    const/4 v4, 0x0

    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    array-length v5, v1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v7

    aget v5, v1, v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    sget-object v1, Lc/d/d/v/p;->g:[[I

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lc/d/d/v/k;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lc/d/d/v/p;->a:Ljava/lang/StringBuilder;

    new-instance v0, Lc/d/d/v/o;

    invoke-direct {v0}, Lc/d/d/v/o;-><init>()V

    iput-object v0, p0, Lc/d/d/v/p;->b:Lc/d/d/v/o;

    new-instance v0, Lc/d/d/v/g;

    invoke-direct {v0}, Lc/d/d/v/g;-><init>()V

    iput-object v0, p0, Lc/d/d/v/p;->c:Lc/d/d/v/g;

    return-void
.end method

.method public static i(Lc/d/d/s/a;[II[[I)I
    .locals 4

    invoke-static {p0, p2, p1}, Lc/d/d/v/k;->f(Lc/d/d/s/a;I[I)V

    array-length p0, p3

    const p2, 0x3ef5c28f    # 0.48f

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p3, v1

    const v3, 0x3f333333    # 0.7f

    invoke-static {p1, v2, v3}, Lc/d/d/v/k;->e([I[IF)F

    move-result v2

    cmpg-float v3, v2, p2

    if-gez v3, :cond_0

    move v0, v1

    move p2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    return v0

    .line 1
    :cond_2
    sget-object p0, Lc/d/d/j;->e:Lc/d/d/j;

    .line 2
    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static m(Lc/d/d/s/a;IZ[I[I)[I
    .locals 10

    .line 1
    iget v0, p0, Lc/d/d/s/a;->d:I

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lc/d/d/s/a;->c(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lc/d/d/s/a;->b(I)I

    move-result p1

    :goto_0
    array-length v1, p3

    const/4 v2, 0x0

    move v3, p2

    const/4 v4, 0x0

    move p2, p1

    :goto_1
    if-ge p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lc/d/d/s/a;->a(I)Z

    move-result v5

    xor-int/2addr v5, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    aget v5, p4, v4

    add-int/2addr v5, v6

    aput v5, p4, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_3

    const v7, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v7}, Lc/d/d/v/k;->e([I[IF)F

    move-result v7

    const v8, 0x3ef5c28f    # 0.48f

    const/4 v9, 0x2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    new-array p0, v9, [I

    aput p2, p0, v2

    aput p1, p0, v6

    return-object p0

    :cond_2
    aget v7, p4, v2

    aget v8, p4, v6

    add-int/2addr v7, v8

    add-int/2addr p2, v7

    add-int/lit8 v7, v1, -0x2

    invoke-static {p4, v9, p4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v2, p4, v7

    aput v2, p4, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :goto_2
    aput v6, p4, v4

    xor-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 3
    :cond_4
    sget-object p0, Lc/d/d/j;->e:Lc/d/d/j;

    .line 4
    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static n(Lc/d/d/s/a;)[I
    .locals 8

    sget-object v0, Lc/d/d/v/p;->d:[I

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-nez v4, :cond_1

    array-length v3, v0

    invoke-static {v1, v2, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    invoke-static {p0, v5, v2, v0, v1}, Lc/d/d/v/p;->m(Lc/d/d/s/a;IZ[I[I)[I

    move-result-object v3

    aget v5, v3, v2

    const/4 v6, 0x1

    aget v6, v3, v6

    sub-int v7, v6, v5

    sub-int v7, v5, v7

    if-ltz v7, :cond_0

    invoke-virtual {p0, v7, v5, v2}, Lc/d/d/s/a;->d(IIZ)Z

    move-result v4

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public c(ILc/d/d/s/a;Ljava/util/Map;)Lc/d/d/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/d/d/s/a;",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/n;"
        }
    .end annotation

    invoke-static {p2}, Lc/d/d/v/p;->n(Lc/d/d/s/a;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lc/d/d/v/p;->l(ILc/d/d/s/a;[ILjava/util/Map;)Lc/d/d/n;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v0, -0x2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x9

    if-ltz v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_1

    if-gt v5, v4, :cond_1

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_1
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object p1

    throw p1

    :cond_2
    mul-int/lit8 v3, v3, 0x3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_3

    if-gt v5, v4, :cond_3

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_3
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object p1

    throw p1

    :cond_4
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1
.end method

.method public j(Lc/d/d/s/a;I)[I
    .locals 3

    sget-object v0, Lc/d/d/v/p;->d:[I

    .line 1
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Lc/d/d/v/p;->m(Lc/d/d/s/a;IZ[I[I)[I

    move-result-object p1

    return-object p1
.end method

.method public abstract k(Lc/d/d/s/a;[ILjava/lang/StringBuilder;)I
.end method

.method public l(ILc/d/d/s/a;[ILjava/util/Map;)Lc/d/d/n;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/d/d/s/a;",
            "[I",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/n;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lc/d/d/e;->l:Lc/d/d/e;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/d/q;

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    new-instance v5, Lc/d/d/p;

    aget v6, p3, v4

    aget v7, p3, v3

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v2

    int-to-float v7, p1

    invoke-direct {v5, v6, v7}, Lc/d/d/p;-><init>(FF)V

    invoke-interface {v1, v5}, Lc/d/d/q;->a(Lc/d/d/p;)V

    :cond_1
    iget-object v5, p0, Lc/d/d/v/p;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0, p2, p3, v5}, Lc/d/d/v/p;->k(Lc/d/d/s/a;[ILjava/lang/StringBuilder;)I

    move-result v6

    if-eqz v1, :cond_2

    new-instance v7, Lc/d/d/p;

    int-to-float v8, v6

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lc/d/d/p;-><init>(FF)V

    invoke-interface {v1, v7}, Lc/d/d/q;->a(Lc/d/d/p;)V

    :cond_2
    invoke-virtual {p0, p2, v6}, Lc/d/d/v/p;->j(Lc/d/d/s/a;I)[I

    move-result-object v6

    if-eqz v1, :cond_3

    new-instance v7, Lc/d/d/p;

    aget v8, v6, v4

    aget v9, v6, v3

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v2

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lc/d/d/p;-><init>(FF)V

    invoke-interface {v1, v7}, Lc/d/d/q;->a(Lc/d/d/p;)V

    :cond_3
    aget v1, v6, v3

    aget v7, v6, v4

    sub-int v7, v1, v7

    add-int/2addr v7, v1

    .line 1
    iget v8, p2, Lc/d/d/s/a;->d:I

    if-ge v7, v8, :cond_13

    .line 2
    invoke-virtual {p2, v1, v7, v4}, Lc/d/d/s/a;->d(IIZ)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x8

    if-lt v5, v7, :cond_12

    invoke-virtual {p0, v1}, Lc/d/d/v/p;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    aget v5, p3, v3

    aget p3, p3, v4

    add-int/2addr v5, p3

    int-to-float p3, v5

    div-float/2addr p3, v2

    aget v5, v6, v3

    aget v7, v6, v4

    add-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {p0}, Lc/d/d/v/p;->o()Lc/d/d/a;

    move-result-object v2

    new-instance v7, Lc/d/d/n;

    const/4 v8, 0x2

    new-array v8, v8, [Lc/d/d/p;

    new-instance v9, Lc/d/d/p;

    int-to-float v10, p1

    invoke-direct {v9, p3, v10}, Lc/d/d/p;-><init>(FF)V

    aput-object v9, v8, v4

    new-instance p3, Lc/d/d/p;

    invoke-direct {p3, v5, v10}, Lc/d/d/p;-><init>(FF)V

    aput-object p3, v8, v3

    invoke-direct {v7, v1, v0, v8, v2}, Lc/d/d/n;-><init>(Ljava/lang/String;[B[Lc/d/d/p;Lc/d/d/a;)V

    :try_start_0
    iget-object p3, p0, Lc/d/d/v/p;->b:Lc/d/d/v/o;

    aget v5, v6, v3

    invoke-virtual {p3, p1, p2, v5}, Lc/d/d/v/o;->a(ILc/d/d/s/a;I)Lc/d/d/n;

    move-result-object p1

    sget-object p2, Lc/d/d/o;->j:Lc/d/d/o;

    .line 3
    iget-object p3, p1, Lc/d/d/n;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v7, p2, p3}, Lc/d/d/n;->b(Lc/d/d/o;Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Lc/d/d/n;->e:Ljava/util/Map;

    .line 6
    invoke-virtual {v7, p2}, Lc/d/d/n;->a(Ljava/util/Map;)V

    .line 7
    iget-object p2, p1, Lc/d/d/n;->c:[Lc/d/d/p;

    .line 8
    iget-object p3, v7, Lc/d/d/n;->c:[Lc/d/d/p;

    if-nez p3, :cond_4

    iput-object p2, v7, Lc/d/d/n;->c:[Lc/d/d/p;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    array-length v5, p2

    if-lez v5, :cond_5

    array-length v5, p3

    array-length v6, p2

    add-int/2addr v5, v6

    new-array v5, v5, [Lc/d/d/p;

    array-length v6, p3

    invoke-static {p3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    array-length v6, p2

    invoke-static {p2, v4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v7, Lc/d/d/n;->c:[Lc/d/d/p;

    .line 9
    :cond_5
    :goto_1
    iget-object p1, p1, Lc/d/d/n;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Lc/d/d/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    :goto_2
    if-nez p4, :cond_6

    move-object p2, v0

    goto :goto_3

    :cond_6
    sget-object p2, Lc/d/d/e;->m:Lc/d/d/e;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    :goto_3
    if-eqz p2, :cond_a

    array-length p3, p2

    const/4 p4, 0x0

    :goto_4
    if-ge p4, p3, :cond_8

    aget v5, p2, p4

    if-ne p1, v5, :cond_7

    const/4 p1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_9

    goto :goto_6

    .line 11
    :cond_9
    sget-object p1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 12
    throw p1

    :cond_a
    :goto_6
    sget-object p1, Lc/d/d/a;->j:Lc/d/d/a;

    if-eq v2, p1, :cond_b

    sget-object p1, Lc/d/d/a;->q:Lc/d/d/a;

    if-ne v2, p1, :cond_10

    :cond_b
    iget-object p1, p0, Lc/d/d/v/p;->c:Lc/d/d/v/g;

    .line 13
    invoke-virtual {p1}, Lc/d/d/v/g;->b()V

    const/4 p2, 0x3

    invoke-virtual {v1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object p3, p1, Lc/d/d/v/g;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_7
    if-ge p4, p3, :cond_f

    iget-object v1, p1, Lc/d/d/v/g;->a:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v2, v1, v4

    if-ge p2, v2, :cond_c

    goto :goto_9

    :cond_c
    array-length v5, v1

    if-ne v5, v3, :cond_d

    goto :goto_8

    :cond_d
    aget v2, v1, v3

    :goto_8
    if-gt p2, v2, :cond_e

    iget-object p1, p1, Lc/d/d/v/g;->b:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_9

    :cond_e
    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_f
    :goto_9
    if-eqz v0, :cond_10

    .line 14
    sget-object p1, Lc/d/d/o;->i:Lc/d/d/o;

    invoke-virtual {v7, p1, v0}, Lc/d/d/n;->b(Lc/d/d/o;Ljava/lang/Object;)V

    :cond_10
    return-object v7

    :cond_11
    invoke-static {}, Lc/d/d/d;->a()Lc/d/d/d;

    move-result-object p1

    throw p1

    :cond_12
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object p1

    throw p1

    .line 15
    :cond_13
    sget-object p1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 16
    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method public abstract o()Lc/d/d/a;
.end method
