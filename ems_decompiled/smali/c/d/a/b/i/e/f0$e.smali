.class public final Lc/d/a/b/i/e/f0$e;
.super Lc/d/a/b/i/e/f0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/e/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public j:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/d/a/b/i/e/f0;-><init>(Lc/d/a/b/i/e/g0;)V

    iput-object p1, p0, Lc/d/a/b/i/e/f0$e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/i/e/f0$e;->e:Ljava/nio/ByteBuffer;

    .line 1
    sget-object v0, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    sget-wide v1, Lc/d/a/b/i/e/m3;->j:J

    invoke-virtual {v0, p1, v1, v2}, Lc/d/a/b/i/e/m3$d;->k(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 2
    iput-wide v0, p0, Lc/d/a/b/i/e/f0$e;->f:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lc/d/a/b/i/e/f0$e;->g:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lc/d/a/b/i/e/f0$e;->h:J

    const-wide/16 v4, 0xa

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lc/d/a/b/i/e/f0$e;->i:J

    iput-wide v2, p0, Lc/d/a/b/i/e/f0$e;->j:J

    return-void
.end method


# virtual methods
.method public final A(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    if-ltz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lc/d/a/b/i/e/f0$e;->V(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lc/d/a/b/i/e/f0$e;->t(J)V

    :goto_0
    return-void
.end method

.method public final B(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lc/d/a/b/i/e/f0$e;->E(J)V

    return-void
.end method

.method public final D(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lc/d/a/b/i/e/f0$e;->V(I)V

    return-void
.end method

.method public final E(J)V
    .locals 5

    iget-object v0, p0, Lc/d/a/b/i/e/f0$e;->e:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lc/d/a/b/i/e/f0$e;->j:J

    iget-wide v3, p0, Lc/d/a/b/i/e/f0$e;->f:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lc/d/a/b/i/e/f0$e;->j:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lc/d/a/b/i/e/f0$e;->j:J

    return-void
.end method

.method public final I(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lc/d/a/b/i/e/f0$e;->W(I)V

    return-void
.end method

.method public final U(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lc/d/a/b/i/e/f0$e;->t(J)V

    return-void
.end method

.method public final V(I)V
    .locals 7

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    iget-wide v2, p0, Lc/d/a/b/i/e/f0$e;->i:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lc/d/a/b/i/e/f0$e;->j:J

    int-to-byte p1, p1

    .line 1
    sget-object v2, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v2, v0, v1, p1}, Lc/d/a/b/i/e/m3$d;->b(JB)V

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lc/d/a/b/i/e/f0$e;->j:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 3
    sget-object v3, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v3, v0, v1, v2}, Lc/d/a/b/i/e/m3$d;->b(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    iget-wide v2, p0, Lc/d/a/b/i/e/f0$e;->h:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lc/d/a/b/i/e/f0$e;->j:J

    int-to-byte p1, p1

    .line 5
    sget-object v2, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v2, v0, v1, p1}, Lc/d/a/b/i/e/m3$d;->b(JB)V

    return-void

    :cond_2
    add-long v2, v0, v4

    .line 6
    iput-wide v2, p0, Lc/d/a/b/i/e/f0$e;->j:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 7
    sget-object v3, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v3, v0, v1, v2}, Lc/d/a/b/i/e/m3$d;->b(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Lc/d/a/b/i/e/f0$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lc/d/a/b/i/e/f0$e;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lc/d/a/b/i/e/f0$e;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/d/a/b/i/e/f0$c;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final W(I)V
    .locals 5

    iget-object v0, p0, Lc/d/a/b/i/e/f0$e;->e:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lc/d/a/b/i/e/f0$e;->j:J

    iget-wide v3, p0, Lc/d/a/b/i/e/f0$e;->f:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    return-void
.end method

.method public final a([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lc/d/a/b/i/e/f0$e;->c([BII)V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lc/d/a/b/i/e/f0$e;->d:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lc/d/a/b/i/e/f0$e;->j:J

    iget-wide v3, p0, Lc/d/a/b/i/e/f0$e;->f:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final c([BII)V
    .locals 12

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->h:J

    int-to-long v10, p3

    sub-long/2addr v0, v10

    iget-wide v6, p0, Lc/d/a/b/i/e/f0$e;->j:J

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v4, p2

    .line 1
    sget-object v2, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    move-object v3, p1

    move-wide v8, v10

    invoke-virtual/range {v2 .. v9}, Lc/d/a/b/i/e/m3$d;->h([BJJJ)V

    .line 2
    iget-wide p1, p0, Lc/d/a/b/i/e/f0$e;->j:J

    add-long/2addr p1, v10

    iput-wide p1, p0, Lc/d/a/b/i/e/f0$e;->j:J

    return-void

    :cond_1
    :goto_0
    const-string p2, "value"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p1, Lc/d/a/b/i/e/f0$c;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lc/d/a/b/i/e/f0$e;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lc/d/a/b/i/e/f0$e;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d/a/b/i/e/f0$c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c0(Lc/d/a/b/i/e/y;)V
    .locals 1

    invoke-virtual {p1}, Lc/d/a/b/i/e/y;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/b/i/e/f0$e;->V(I)V

    invoke-virtual {p1, p0}, Lc/d/a/b/i/e/y;->l(Lc/d/a/b/i/e/x;)V

    return-void
.end method

.method public final d(B)V
    .locals 5

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    iget-wide v2, p0, Lc/d/a/b/i/e/f0$e;->h:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lc/d/a/b/i/e/f0$e;->j:J

    .line 1
    sget-object v2, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v2, v0, v1, p1}, Lc/d/a/b/i/e/m3$d;->b(JB)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Lc/d/a/b/i/e/f0$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lc/d/a/b/i/e/f0$e;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lc/d/a/b/i/e/f0$e;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/d/a/b/i/e/f0$c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d0(Lc/d/a/b/i/e/d2;Lc/d/a/b/i/e/t2;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lc/d/a/b/i/e/p;

    invoke-virtual {v0}, Lc/d/a/b/i/e/p;->j()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, v0}, Lc/d/a/b/i/e/t2;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lc/d/a/b/i/e/p;->i(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    iget-object v0, p0, Lc/d/a/b/i/e/f0;->a:Lc/d/a/b/i/e/h0;

    invoke-interface {p2, p1, v0}, Lc/d/a/b/i/e/t2;->a(Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V

    return-void
.end method

.method public final e(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lc/d/a/b/i/e/f0$e;->t(J)V

    return-void
.end method

.method public final e0(Lc/d/a/b/i/e/d2;)V
    .locals 1

    invoke-interface {p1}, Lc/d/a/b/i/e/d2;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/b/i/e/f0$e;->V(I)V

    invoke-interface {p1, p0}, Lc/d/a/b/i/e/d2;->c(Lc/d/a/b/i/e/f0;)V

    return-void
.end method

.method public final f(ILc/d/a/b/i/e/y;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lc/d/a/b/i/e/f0$e;->c0(Lc/d/a/b/i/e/y;)V

    return-void
.end method

.method public final f0(Ljava/lang/String;)V
    .locals 8

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lc/d/a/b/i/e/f0;->Z(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lc/d/a/b/i/e/f0;->Z(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-wide v4, p0, Lc/d/a/b/i/e/f0$e;->j:J

    iget-wide v6, p0, Lc/d/a/b/i/e/f0$e;->f:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lc/d/a/b/i/e/f0$e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lc/d/a/b/i/e/f0$e;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lc/d/a/b/i/e/o3;->c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lc/d/a/b/i/e/f0$e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lc/d/a/b/i/e/f0$e;->V(I)V

    iget-wide v4, p0, Lc/d/a/b/i/e/f0$e;->j:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lc/d/a/b/i/e/f0$e;->j:J

    return-void

    :cond_0
    invoke-static {p1}, Lc/d/a/b/i/e/o3;->a(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0, v2}, Lc/d/a/b/i/e/f0$e;->V(I)V

    iget-wide v3, p0, Lc/d/a/b/i/e/f0$e;->j:J

    .line 1
    iget-object v5, p0, Lc/d/a/b/i/e/f0$e;->e:Ljava/nio/ByteBuffer;

    iget-wide v6, p0, Lc/d/a/b/i/e/f0$e;->f:J

    sub-long/2addr v3, v6

    long-to-int v4, v3

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget-object v3, p0, Lc/d/a/b/i/e/f0$e;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lc/d/a/b/i/e/o3;->c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-wide v3, p0, Lc/d/a/b/i/e/f0$e;->j:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lc/d/a/b/i/e/f0$e;->j:J
    :try_end_0
    .catch Lc/d/a/b/i/e/r3; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lc/d/a/b/i/e/f0$c;

    invoke-direct {v0, p1}, Lc/d/a/b/i/e/f0$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lc/d/a/b/i/e/f0$c;

    invoke-direct {v0, p1}, Lc/d/a/b/i/e/f0$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    iput-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    .line 3
    iget-object v3, p0, Lc/d/a/b/i/e/f0$e;->e:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lc/d/a/b/i/e/f0$e;->f:J

    sub-long/2addr v0, v4

    long-to-int v1, v0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p0, p1, v2}, Lc/d/a/b/i/e/f0;->j(Ljava/lang/String;Lc/d/a/b/i/e/r3;)V

    return-void
.end method

.method public final g(ILc/d/a/b/i/e/d2;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lc/d/a/b/i/e/f0$e;->e0(Lc/d/a/b/i/e/d2;)V

    return-void
.end method

.method public final h(ILc/d/a/b/i/e/d2;Lc/d/a/b/i/e/t2;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lc/d/a/b/i/e/f0$e;->d0(Lc/d/a/b/i/e/d2;Lc/d/a/b/i/e/t2;)V

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lc/d/a/b/i/e/f0$e;->f0(Ljava/lang/String;)V

    return-void
.end method

.method public final k()I
    .locals 4

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->h:J

    iget-wide v2, p0, Lc/d/a/b/i/e/f0$e;->j:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final p(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    return-void
.end method

.method public final q(ILc/d/a/b/i/e/y;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lc/d/a/b/i/e/f0$e;->p(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lc/d/a/b/i/e/f0$e;->D(II)V

    invoke-virtual {p0, v1, p2}, Lc/d/a/b/i/e/f0$e;->f(ILc/d/a/b/i/e/y;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/i/e/f0$e;->p(II)V

    return-void
.end method

.method public final r(ILc/d/a/b/i/e/d2;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lc/d/a/b/i/e/f0$e;->p(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lc/d/a/b/i/e/f0$e;->D(II)V

    invoke-virtual {p0, v1, p2}, Lc/d/a/b/i/e/f0$e;->g(ILc/d/a/b/i/e/d2;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/i/e/f0$e;->p(II)V

    return-void
.end method

.method public final s(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->V(I)V

    int-to-byte p1, p2

    .line 2
    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/f0$e;->d(B)V

    return-void
.end method

.method public final t(J)V
    .locals 12

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    iget-wide v2, p0, Lc/d/a/b/i/e/f0$e;->i:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    cmp-long v11, v0, v2

    if-gtz v11, :cond_1

    :goto_0
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    if-nez v2, :cond_0

    add-long/2addr v9, v0

    iput-wide v9, p0, Lc/d/a/b/i/e/f0$e;->j:J

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 1
    sget-object p2, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {p2, v0, v1, p1}, Lc/d/a/b/i/e/m3$d;->b(JB)V

    return-void

    :cond_0
    add-long v2, v0, v9

    .line 2
    iput-wide v2, p0, Lc/d/a/b/i/e/f0$e;->j:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 3
    sget-object v3, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v3, v0, v1, v2}, Lc/d/a/b/i/e/m3$d;->b(JB)V

    ushr-long/2addr p1, v4

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->j:J

    iget-wide v2, p0, Lc/d/a/b/i/e/f0$e;->h:J

    cmp-long v11, v0, v2

    if-gez v11, :cond_3

    and-long v2, p1, v7

    cmp-long v11, v2, v5

    if-nez v11, :cond_2

    add-long/2addr v9, v0

    iput-wide v9, p0, Lc/d/a/b/i/e/f0$e;->j:J

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 5
    sget-object p2, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {p2, v0, v1, p1}, Lc/d/a/b/i/e/m3$d;->b(JB)V

    return-void

    :cond_2
    add-long v2, v0, v9

    .line 6
    iput-wide v2, p0, Lc/d/a/b/i/e/f0$e;->j:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 7
    sget-object v3, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v3, v0, v1, v2}, Lc/d/a/b/i/e/m3$d;->b(JB)V

    ushr-long/2addr p1, v4

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Lc/d/a/b/i/e/f0$c;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lc/d/a/b/i/e/f0$e;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    iget-wide v0, p0, Lc/d/a/b/i/e/f0$e;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d/a/b/i/e/f0$c;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
