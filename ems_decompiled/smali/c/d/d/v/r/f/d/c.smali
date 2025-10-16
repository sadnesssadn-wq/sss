.class public final Lc/d/d/v/r/f/d/c;
.super Lc/d/d/v/r/f/d/h;
.source ""


# direct methods
.method public constructor <init>(Lc/d/d/s/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/d/v/r/f/d/h;-><init>(Lc/d/d/s/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/d/v/r/f/d/j;->a:Lc/d/d/s/a;

    .line 2
    iget v0, v0, Lc/d/d/s/a;->d:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lc/d/d/v/r/f/d/h;->b(Ljava/lang/StringBuilder;I)V

    .line 4
    iget-object v2, p0, Lc/d/d/v/r/f/d/j;->b:Lc/d/d/v/r/f/d/s;

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v2, v1, v3}, Lc/d/d/v/r/f/d/s;->c(II)I

    move-result v1

    const-string v2, "(392"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lc/d/d/v/r/f/d/j;->b:Lc/d/d/v/r/f/d/s;

    const/16 v2, 0x32

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v2, v3}, Lc/d/d/v/r/f/d/s;->b(ILjava/lang/String;)Lc/d/d/v/r/f/d/o;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lc/d/d/v/r/f/d/o;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lc/d/d/j;->e:Lc/d/d/j;

    .line 11
    throw v0
.end method
