.class public final Lc/d/d/w/d/h;
.super Lc/d/d/w/d/g;
.source ""


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Lc/d/d/w/d/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/d/w/d/g;-><init>(Lc/d/d/w/d/c;)V

    iput-boolean p2, p0, Lc/d/d/w/d/h;->c:Z

    return-void
.end method


# virtual methods
.method public c()Lc/d/d/w/d/a;
    .locals 12

    .line 1
    iget-object v0, p0, Lc/d/d/w/d/g;->b:[Lc/d/d/w/d/d;

    .line 2
    new-instance v1, Lc/d/d/w/d/b;

    invoke-direct {v1}, Lc/d/d/w/d/b;-><init>()V

    new-instance v2, Lc/d/d/w/d/b;

    invoke-direct {v2}, Lc/d/d/w/d/b;-><init>()V

    new-instance v3, Lc/d/d/w/d/b;

    invoke-direct {v3}, Lc/d/d/w/d/b;-><init>()V

    new-instance v4, Lc/d/d/w/d/b;

    invoke-direct {v4}, Lc/d/d/w/d/b;-><init>()V

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x3

    if-ge v7, v5, :cond_5

    aget-object v9, v0, v7

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lc/d/d/w/d/d;->b()V

    .line 3
    iget v10, v9, Lc/d/d/w/d/d;->d:I

    .line 4
    rem-int/lit8 v10, v10, 0x1e

    .line 5
    iget v9, v9, Lc/d/d/w/d/d;->e:I

    .line 6
    iget-boolean v11, p0, Lc/d/d/w/d/h;->c:Z

    if-nez v11, :cond_0

    add-int/lit8 v9, v9, 0x2

    :cond_0
    rem-int/2addr v9, v8

    const/4 v8, 0x1

    if-eqz v9, :cond_3

    if-eq v9, v8, :cond_2

    const/4 v8, 0x2

    if-eq v9, v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v10}, Lc/d/d/w/d/b;->b(I)V

    goto :goto_1

    :cond_2
    div-int/lit8 v8, v10, 0x3

    invoke-virtual {v4, v8}, Lc/d/d/w/d/b;->b(I)V

    rem-int/lit8 v10, v10, 0x3

    invoke-virtual {v3, v10}, Lc/d/d/w/d/b;->b(I)V

    goto :goto_1

    :cond_3
    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v8

    invoke-virtual {v2, v10}, Lc/d/d/w/d/b;->b(I)V

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lc/d/d/w/d/b;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Lc/d/d/w/d/b;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lc/d/d/w/d/b;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lc/d/d/w/d/b;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lc/d/d/w/d/b;->a()[I

    move-result-object v5

    aget v5, v5, v6

    if-lez v5, :cond_7

    invoke-virtual {v2}, Lc/d/d/w/d/b;->a()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lc/d/d/w/d/b;->a()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    if-lt v5, v8, :cond_7

    invoke-virtual {v2}, Lc/d/d/w/d/b;->a()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lc/d/d/w/d/b;->a()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    const/16 v7, 0x5a

    if-le v5, v7, :cond_6

    goto :goto_2

    :cond_6
    new-instance v5, Lc/d/d/w/d/a;

    invoke-virtual {v1}, Lc/d/d/w/d/b;->a()[I

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v2}, Lc/d/d/w/d/b;->a()[I

    move-result-object v2

    aget v2, v2, v6

    invoke-virtual {v3}, Lc/d/d/w/d/b;->a()[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v4}, Lc/d/d/w/d/b;->a()[I

    move-result-object v4

    aget v4, v4, v6

    invoke-direct {v5, v1, v2, v3, v4}, Lc/d/d/w/d/a;-><init>(IIII)V

    invoke-virtual {p0, v0, v5}, Lc/d/d/w/d/h;->d([Lc/d/d/w/d/d;Lc/d/d/w/d/a;)V

    return-object v5

    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d([Lc/d/d/w/d/d;Lc/d/d/w/d/a;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_7

    aget-object v1, p1, v0

    aget-object v2, p1, v0

    if-eqz v2, :cond_6

    .line 1
    iget v2, v1, Lc/d/d/w/d/d;->d:I

    .line 2
    rem-int/lit8 v2, v2, 0x1e

    .line 3
    iget v1, v1, Lc/d/d/w/d/d;->e:I

    .line 4
    iget v3, p2, Lc/d/d/w/d/a;->e:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    .line 5
    aput-object v4, p1, v0

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lc/d/d/w/d/h;->c:Z

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x2

    :cond_1
    rem-int/lit8 v1, v1, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 6
    iget v1, p2, Lc/d/d/w/d/a;->a:I

    if-eq v2, v1, :cond_6

    .line 7
    aput-object v4, p1, v0

    goto :goto_1

    :cond_3
    div-int/lit8 v1, v2, 0x3

    .line 8
    iget v3, p2, Lc/d/d/w/d/a;->b:I

    if-ne v1, v3, :cond_4

    .line 9
    rem-int/lit8 v2, v2, 0x3

    .line 10
    iget v1, p2, Lc/d/d/w/d/a;->d:I

    if-eq v2, v1, :cond_6

    .line 11
    :cond_4
    aput-object v4, p1, v0

    goto :goto_1

    :cond_5
    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    .line 12
    iget v1, p2, Lc/d/d/w/d/a;->c:I

    if-eq v2, v1, :cond_6

    .line 13
    aput-object v4, p1, v0

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsLeft: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc/d/d/w/d/h;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lc/d/d/w/d/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
