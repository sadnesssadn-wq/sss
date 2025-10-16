.class public final Lc/d/a/a/j/t/i/r;
.super Lc/d/a/a/j/t/i/x;
.source ""


# instance fields
.field public final a:J

.field public final b:Lc/d/a/a/j/j;

.field public final c:Lc/d/a/a/j/g;


# direct methods
.method public constructor <init>(JLc/d/a/a/j/j;Lc/d/a/a/j/g;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/a/j/t/i/x;-><init>()V

    iput-wide p1, p0, Lc/d/a/a/j/t/i/r;->a:J

    const-string p1, "Null transportContext"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lc/d/a/a/j/t/i/r;->b:Lc/d/a/a/j/j;

    const-string p1, "Null event"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lc/d/a/a/j/t/i/r;->c:Lc/d/a/a/j/g;

    return-void
.end method


# virtual methods
.method public a()Lc/d/a/a/j/g;
    .locals 1

    iget-object v0, p0, Lc/d/a/a/j/t/i/r;->c:Lc/d/a/a/j/g;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lc/d/a/a/j/t/i/r;->a:J

    return-wide v0
.end method

.method public c()Lc/d/a/a/j/j;
    .locals 1

    iget-object v0, p0, Lc/d/a/a/j/t/i/r;->b:Lc/d/a/a/j/j;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/d/a/a/j/t/i/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/d/a/a/j/t/i/x;

    iget-wide v3, p0, Lc/d/a/a/j/t/i/r;->a:J

    invoke-virtual {p1}, Lc/d/a/a/j/t/i/x;->b()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lc/d/a/a/j/t/i/r;->b:Lc/d/a/a/j/j;

    invoke-virtual {p1}, Lc/d/a/a/j/t/i/x;->c()Lc/d/a/a/j/j;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/a/j/t/i/r;->c:Lc/d/a/a/j/g;

    invoke-virtual {p1}, Lc/d/a/a/j/t/i/x;->a()Lc/d/a/a/j/g;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lc/d/a/a/j/t/i/r;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    iget-object v2, p0, Lc/d/a/a/j/t/i/r;->b:Lc/d/a/a/j/j;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    iget-object v0, p0, Lc/d/a/a/j/t/i/r;->c:Lc/d/a/a/j/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PersistedEvent{id="

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lc/d/a/a/j/t/i/r;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/j/t/i/r;->b:Lc/d/a/a/j/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/j/t/i/r;->c:Lc/d/a/a/j/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
