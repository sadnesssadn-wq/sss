.class public final Lc/d/a/b/i/n/s0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public c:I

.field public final d:I

.field public final synthetic e:Lc/d/a/b/i/n/t0;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/n/t0;)V
    .locals 1

    iput-object p1, p0, Lc/d/a/b/i/n/s0;->e:Lc/d/a/b/i/n/t0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/d/a/b/i/n/s0;->c:I

    invoke-virtual {p1}, Lc/d/a/b/i/n/t0;->k()I

    move-result p1

    iput p1, p0, Lc/d/a/b/i/n/s0;->d:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lc/d/a/b/i/n/s0;->c:I

    iget v1, p0, Lc/d/a/b/i/n/s0;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/i/n/s0;->zza()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Lc/d/a/b/i/n/s0;->c:I

    iget v1, p0, Lc/d/a/b/i/n/s0;->d:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc/d/a/b/i/n/s0;->c:I

    iget-object v1, p0, Lc/d/a/b/i/n/s0;->e:Lc/d/a/b/i/n/t0;

    invoke-virtual {v1, v0}, Lc/d/a/b/i/n/t0;->q(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
