.class public final Lc/d/d/v/f;
.super Lc/d/d/v/p;
.source ""


# instance fields
.field public final h:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/d/v/p;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lc/d/d/v/f;->h:[I

    return-void
.end method


# virtual methods
.method public k(Lc/d/d/s/a;[ILjava/lang/StringBuilder;)I
    .locals 9

    sget-object v0, Lc/d/d/v/p;->f:[[I

    iget-object v1, p0, Lc/d/d/v/f;->h:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v4, 0x3

    aput v2, v1, v4

    .line 1
    iget v4, p1, Lc/d/d/s/a;->d:I

    .line 2
    aget p2, p2, v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    if-ge p2, v4, :cond_1

    invoke-static {p1, v1, p2, v0}, Lc/d/d/v/p;->i(Lc/d/d/s/a;[II[[I)I

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v6, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v1, v7

    add-int/2addr p2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lc/d/d/v/p;->e:[I

    .line 3
    array-length v7, v5

    new-array v7, v7, [I

    invoke-static {p1, p2, v3, v5, v7}, Lc/d/d/v/p;->m(Lc/d/d/s/a;IZ[I[I)[I

    move-result-object p2

    .line 4
    aget p2, p2, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_3

    if-ge p2, v4, :cond_3

    invoke-static {p1, v1, p2, v0}, Lc/d/d/v/p;->i(Lc/d/d/s/a;[II[[I)I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v5, v1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_2

    aget v8, v1, v7

    add-int/2addr p2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return p2
.end method

.method public o()Lc/d/d/a;
    .locals 1

    sget-object v0, Lc/d/d/a;->i:Lc/d/d/a;

    return-object v0
.end method
