.class public abstract Lc/d/d/v/r/f/d/i;
.super Lc/d/d/v/r/f/d/h;
.source ""


# direct methods
.method public constructor <init>(Lc/d/d/s/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/d/v/r/f/d/h;-><init>(Lc/d/d/s/a;)V

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/lang/StringBuilder;I)V
.end method

.method public abstract e(I)I
.end method

.method public final f(Ljava/lang/StringBuilder;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/d/v/r/f/d/j;->b:Lc/d/d/v/r/f/d/s;

    .line 2
    iget-object v0, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-static {v0, p2, p3}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/d/d/v/r/f/d/i;->d(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Lc/d/d/v/r/f/d/i;->e(I)I

    move-result p2

    const p3, 0x186a0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    div-int v1, p2, p3

    if-nez v1, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    div-int/lit8 p3, p3, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
