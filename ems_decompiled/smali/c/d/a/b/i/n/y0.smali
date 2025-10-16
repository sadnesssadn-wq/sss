.class public Lc/d/a/b/i/n/y0;
.super Lc/d/a/b/i/n/t0;
.source ""


# instance fields
.field public final f:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/b/i/n/t0;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/d/a/b/i/n/y0;->f:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/d/a/b/i/n/t0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->k()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lc/d/a/b/i/n/t0;

    invoke-virtual {v3}, Lc/d/a/b/i/n/t0;->k()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->k()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v1, p1, Lc/d/a/b/i/n/y0;

    if-eqz v1, :cond_9

    check-cast p1, Lc/d/a/b/i/n/y0;

    .line 1
    iget v1, p0, Lc/d/a/b/i/n/t0;->c:I

    iget v3, p1, Lc/d/a/b/i/n/t0;->c:I

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    return v2

    .line 2
    :cond_4
    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->k()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lc/d/a/b/i/n/y0;->k()I

    move-result v2

    if-gt v1, v2, :cond_8

    invoke-virtual {p1}, Lc/d/a/b/i/n/y0;->k()I

    move-result v2

    if-gt v1, v2, :cond_7

    iget-object v2, p0, Lc/d/a/b/i/n/y0;->f:[B

    iget-object v3, p1, Lc/d/a/b/i/n/y0;->f:[B

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->s()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->s()I

    move-result v1

    invoke-virtual {p1}, Lc/d/a/b/i/n/y0;->s()I

    move-result p1

    :goto_0
    if-ge v1, v4, :cond_6

    aget-byte v5, v2, v1

    aget-byte v6, v3, p1

    if-eq v5, v6, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lc/d/a/b/i/n/y0;->k()I

    move-result p1

    const/16 v2, 0x3b

    const-string v3, "Ran off end of other: 0, "

    const-string v4, ", "

    invoke-static {v2, v3, v1, v4, p1}, Lc/a/a/a/a;->J(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->k()I

    move-result v0

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length too large: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(I)B
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/y0;->f:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/y0;->f:[B

    array-length v0, v0

    return v0
.end method

.method public final l(III)I
    .locals 3

    iget-object p2, p0, Lc/d/a/b/i/n/y0;->f:[B

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->s()I

    move-result v0

    .line 1
    sget-object v1, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    move v1, v0

    :goto_0
    add-int v2, v0, p3

    if-ge v1, v2, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    aget-byte v2, p2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final m(II)Lc/d/a/b/i/n/t0;
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->k()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lc/d/a/b/i/n/t0;->r(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lc/d/a/b/i/n/t0;->d:Lc/d/a/b/i/n/t0;

    return-object p1

    :cond_0
    new-instance p2, Lc/d/a/b/i/n/u0;

    iget-object v0, p0, Lc/d/a/b/i/n/y0;->f:[B

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->s()I

    move-result v1

    invoke-direct {p2, v0, v1, p1}, Lc/d/a/b/i/n/u0;-><init>([BII)V

    return-object p2
.end method

.method public final o(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/i/n/y0;->f:[B

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->s()I

    move-result v2

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->k()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final p(Lc/d/a/b/i/n/q0;)V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/i/n/y0;->f:[B

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->s()I

    move-result v1

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->k()I

    move-result v2

    check-cast p1, Lc/d/a/b/i/n/a1$a;

    .line 1
    invoke-virtual {p1, v0, v1, v2}, Lc/d/a/b/i/n/a1$a;->Z([BII)V

    return-void
.end method

.method public q(I)B
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/y0;->f:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Z
    .locals 3

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->s()I

    move-result v0

    iget-object v1, p0, Lc/d/a/b/i/n/y0;->f:[B

    invoke-virtual {p0}, Lc/d/a/b/i/n/y0;->k()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lc/d/a/b/i/n/o4;->b([BII)Z

    move-result v0

    return v0
.end method
