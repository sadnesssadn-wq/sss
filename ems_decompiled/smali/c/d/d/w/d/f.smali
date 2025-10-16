.class public final Lc/d/d/w/d/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/d/w/d/a;

.field public final b:[Lc/d/d/w/d/g;

.field public c:Lc/d/d/w/d/c;

.field public final d:I


# direct methods
.method public constructor <init>(Lc/d/d/w/d/a;Lc/d/d/w/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/d/w/d/f;->a:Lc/d/d/w/d/a;

    .line 1
    iget p1, p1, Lc/d/d/w/d/a;->a:I

    .line 2
    iput p1, p0, Lc/d/d/w/d/f;->d:I

    iput-object p2, p0, Lc/d/d/w/d/f;->c:Lc/d/d/w/d/c;

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lc/d/d/w/d/g;

    iput-object p1, p0, Lc/d/d/w/d/f;->b:[Lc/d/d/w/d/g;

    return-void
.end method

.method public static b(IILc/d/d/w/d/d;)I
    .locals 3

    invoke-virtual {p2}, Lc/d/d/w/d/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 1
    iget v0, p2, Lc/d/d/w/d/d;->c:I

    rem-int/lit8 v2, p0, 0x3

    mul-int/lit8 v2, v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput p0, p2, Lc/d/d/w/d/d;->e:I

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    :goto_1
    return p1
.end method


# virtual methods
.method public final a(Lc/d/d/w/d/g;)V
    .locals 13

    if-eqz p1, :cond_e

    check-cast p1, Lc/d/d/w/d/h;

    iget-object v0, p0, Lc/d/d/w/d/f;->a:Lc/d/d/w/d/a;

    .line 1
    iget-object v1, p1, Lc/d/d/w/d/g;->b:[Lc/d/d/w/d/d;

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lc/d/d/w/d/d;->b()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1, v1, v0}, Lc/d/d/w/d/h;->d([Lc/d/d/w/d/d;Lc/d/d/w/d/a;)V

    .line 4
    iget-object v2, p1, Lc/d/d/w/d/g;->a:Lc/d/d/w/d/c;

    .line 5
    iget-boolean v4, p1, Lc/d/d/w/d/h;->c:Z

    if-eqz v4, :cond_2

    .line 6
    iget-object v5, v2, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    goto :goto_1

    .line 7
    :cond_2
    iget-object v5, v2, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    :goto_1
    if-eqz v4, :cond_3

    .line 8
    iget-object v2, v2, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    goto :goto_2

    .line 9
    :cond_3
    iget-object v2, v2, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    .line 10
    :goto_2
    iget v4, v5, Lc/d/d/p;->b:F

    float-to-int v4, v4

    .line 11
    invoke-virtual {p1, v4}, Lc/d/d/w/d/g;->b(I)I

    move-result v4

    .line 12
    iget v2, v2, Lc/d/d/p;->b:F

    float-to-int v2, v2

    .line 13
    invoke-virtual {p1, v2}, Lc/d/d/w/d/g;->b(I)I

    move-result p1

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_3
    if-ge v4, p1, :cond_e

    aget-object v8, v1, v4

    if-eqz v8, :cond_d

    aget-object v8, v1, v4

    .line 14
    iget v9, v8, Lc/d/d/w/d/d;->e:I

    sub-int v10, v9, v2

    if-nez v10, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_4
    if-ne v10, v5, :cond_5

    .line 15
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v7, v2

    goto :goto_7

    :cond_5
    const/4 v11, 0x0

    if-ltz v10, :cond_c

    .line 16
    iget v12, v0, Lc/d/d/w/d/a;->e:I

    if-ge v9, v12, :cond_c

    if-le v10, v4, :cond_6

    goto :goto_8

    :cond_6
    const/4 v9, 0x2

    if-le v7, v9, :cond_7

    add-int/lit8 v9, v7, -0x2

    mul-int v10, v10, v9

    :cond_7
    if-lt v10, v4, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    const/4 v12, 0x1

    :goto_5
    if-gt v12, v10, :cond_a

    if-nez v9, :cond_a

    sub-int v9, v4, v12

    .line 17
    aget-object v9, v1, v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    if-eqz v9, :cond_b

    aput-object v11, v1, v4

    goto :goto_9

    .line 18
    :cond_b
    :goto_7
    iget v2, v8, Lc/d/d/w/d/d;->e:I

    const/4 v6, 0x1

    goto :goto_9

    .line 19
    :cond_c
    :goto_8
    aput-object v11, v1, v4

    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lc/d/d/w/d/f;->b:[Lc/d/d/w/d/g;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lc/d/d/w/d/f;->d:I

    add-int/2addr v2, v3

    aget-object v2, v0, v2

    :cond_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v4, 0x0

    .line 1
    :goto_0
    iget-object v5, v2, Lc/d/d/w/d/g;->b:[Lc/d/d/w/d/d;

    .line 2
    array-length v5, v5

    if-ge v4, v5, :cond_4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "CW %3d:"

    invoke-virtual {v0, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lc/d/d/w/d/f;->d:I

    const/4 v7, 0x2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lc/d/d/w/d/f;->b:[Lc/d/d/w/d/g;

    aget-object v8, v6, v5

    const-string v9, "    |   "

    if-nez v8, :cond_1

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_1
    aget-object v6, v6, v5

    .line 3
    iget-object v6, v6, Lc/d/d/w/d/g;->b:[Lc/d/d/w/d/d;

    .line 4
    aget-object v6, v6, v4

    if-nez v6, :cond_2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_2
    new-array v7, v7, [Ljava/lang/Object;

    .line 5
    iget v8, v6, Lc/d/d/w/d/d;->e:I

    .line 6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 7
    iget v6, v6, Lc/d/d/w/d/d;->d:I

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    const-string v6, " %3d|%3d"

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "%n"

    invoke-virtual {v0, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1
.end method
