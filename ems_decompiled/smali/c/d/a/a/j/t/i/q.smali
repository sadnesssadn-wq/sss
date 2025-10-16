.class public final Lc/d/a/a/j/t/i/q;
.super Lc/d/a/a/j/t/i/t;
.source ""


# instance fields
.field public final b:J

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:I


# direct methods
.method public constructor <init>(JIIJILc/d/a/a/j/t/i/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/a/j/t/i/t;-><init>()V

    iput-wide p1, p0, Lc/d/a/a/j/t/i/q;->b:J

    iput p3, p0, Lc/d/a/a/j/t/i/q;->c:I

    iput p4, p0, Lc/d/a/a/j/t/i/q;->d:I

    iput-wide p5, p0, Lc/d/a/a/j/t/i/q;->e:J

    iput p7, p0, Lc/d/a/a/j/t/i/q;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lc/d/a/a/j/t/i/q;->d:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lc/d/a/a/j/t/i/q;->e:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lc/d/a/a/j/t/i/q;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lc/d/a/a/j/t/i/q;->f:I

    return v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lc/d/a/a/j/t/i/q;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/d/a/a/j/t/i/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/d/a/a/j/t/i/t;

    iget-wide v3, p0, Lc/d/a/a/j/t/i/q;->b:J

    invoke-virtual {p1}, Lc/d/a/a/j/t/i/t;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lc/d/a/a/j/t/i/q;->c:I

    invoke-virtual {p1}, Lc/d/a/a/j/t/i/t;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lc/d/a/a/j/t/i/q;->d:I

    invoke-virtual {p1}, Lc/d/a/a/j/t/i/t;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lc/d/a/a/j/t/i/q;->e:J

    invoke-virtual {p1}, Lc/d/a/a/j/t/i/t;->b()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lc/d/a/a/j/t/i/q;->f:I

    invoke-virtual {p1}, Lc/d/a/a/j/t/i/t;->d()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lc/d/a/a/j/t/i/q;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    iget v3, p0, Lc/d/a/a/j/t/i/q;->c:I

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    iget v3, p0, Lc/d/a/a/j/t/i/q;->d:I

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    iget-wide v3, p0, Lc/d/a/a/j/t/i/q;->e:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    iget v0, p0, Lc/d/a/a/j/t/i/q;->f:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "EventStoreConfig{maxStorageSizeInBytes="

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lc/d/a/a/j/t/i/q;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loadBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/d/a/a/j/t/i/q;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", criticalSectionEnterTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/d/a/a/j/t/i/q;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventCleanUpAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/d/a/a/j/t/i/q;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBlobByteSizePerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/d/a/a/j/t/i/q;->f:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lc/a/a/a/a;->n(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
