.class public final Lc/d/a/b/i/n/u0;
.super Lc/d/a/b/i/n/y0;
.source ""


# instance fields
.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lc/d/a/b/i/n/y0;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lc/d/a/b/i/n/t0;->r(III)I

    iput p2, p0, Lc/d/a/b/i/n/u0;->g:I

    iput p3, p0, Lc/d/a/b/i/n/u0;->h:I

    return-void
.end method


# virtual methods
.method public final j(I)B
    .locals 5

    .line 1
    iget v0, p0, Lc/d/a/b/i/n/u0;->h:I

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x16

    const-string v2, "Index < 0: "

    invoke-static {v1, v2, p1}, Lc/a/a/a/a;->I(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v2, 0x28

    const-string v3, "Index > length: "

    const-string v4, ", "

    invoke-static {v2, v3, p1, v4, v0}, Lc/a/a/a/a;->J(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lc/d/a/b/i/n/y0;->f:[B

    iget v1, p0, Lc/d/a/b/i/n/u0;->g:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lc/d/a/b/i/n/u0;->h:I

    return v0
.end method

.method public final q(I)B
    .locals 2

    iget-object v0, p0, Lc/d/a/b/i/n/y0;->f:[B

    iget v1, p0, Lc/d/a/b/i/n/u0;->g:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lc/d/a/b/i/n/u0;->g:I

    return v0
.end method
