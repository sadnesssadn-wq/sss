.class public final Lc/d/d/k;
.super Lc/d/d/h;
.source ""


# instance fields
.field public final c:[B

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 2

    invoke-direct {p0, p6, p7}, Lc/d/d/h;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_2

    add-int v0, p5, p7

    if-gt v0, p3, :cond_2

    iput-object p1, p0, Lc/d/d/k;->c:[B

    iput p2, p0, Lc/d/d/k;->d:I

    iput p3, p0, Lc/d/d/k;->e:I

    iput p4, p0, Lc/d/d/k;->f:I

    iput p5, p0, Lc/d/d/k;->g:I

    if-eqz p8, :cond_1

    mul-int p5, p5, p2

    add-int/2addr p5, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p7, :cond_1

    .line 1
    div-int/lit8 p3, p6, 0x2

    add-int/2addr p3, p5

    add-int p4, p5, p6

    add-int/lit8 p4, p4, -0x1

    move p8, p5

    :goto_1
    if-ge p8, p3, :cond_0

    aget-byte v0, p1, p8

    aget-byte v1, p1, p4

    aput-byte v1, p1, p8

    aput-byte v0, p1, p4

    add-int/lit8 p8, p8, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget p3, p0, Lc/d/d/k;->d:I

    add-int/2addr p5, p3

    goto :goto_0

    :cond_1
    return-void

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a()[B
    .locals 7

    .line 1
    iget v0, p0, Lc/d/d/h;->a:I

    .line 2
    iget v1, p0, Lc/d/d/h;->b:I

    .line 3
    iget v2, p0, Lc/d/d/k;->d:I

    if-ne v0, v2, :cond_0

    iget v3, p0, Lc/d/d/k;->e:I

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lc/d/d/k;->c:[B

    return-object v0

    :cond_0
    mul-int v3, v0, v1

    new-array v4, v3, [B

    iget v5, p0, Lc/d/d/k;->g:I

    mul-int v5, v5, v2

    iget v6, p0, Lc/d/d/k;->f:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lc/d/d/k;->c:[B

    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v2, v6, v0

    iget-object v3, p0, Lc/d/d/k;->c:[B

    invoke-static {v3, v5, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lc/d/d/k;->d:I

    add-int/2addr v5, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public b(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lc/d/d/h;->b:I

    if-ge p1, v0, :cond_2

    .line 2
    iget v0, p0, Lc/d/d/h;->a:I

    if-eqz p2, :cond_0

    .line 3
    array-length v1, p2

    if-ge v1, v0, :cond_1

    :cond_0
    new-array p2, v0, [B

    :cond_1
    iget v1, p0, Lc/d/d/k;->g:I

    add-int/2addr p1, v1

    iget v1, p0, Lc/d/d/k;->d:I

    mul-int p1, p1, v1

    iget v1, p0, Lc/d/d/k;->f:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lc/d/d/k;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested row is outside the image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
