.class public final Lc/d/d/x/b/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/d/s/b;

.field public b:Lc/d/d/x/b/j;

.field public c:Lc/d/d/x/b/g;

.field public d:Z


# direct methods
.method public constructor <init>(Lc/d/d/s/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget v0, p1, Lc/d/d/s/b;->d:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    return-void

    :cond_0
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(III)I
    .locals 1

    iget-boolean v0, p0, Lc/d/d/x/b/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    invoke-virtual {v0, p2, p1}, Lc/d/d/s/b;->b(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    invoke-virtual {v0, p1, p2}, Lc/d/d/s/b;->b(II)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    shl-int/lit8 p1, p3, 0x1

    or-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    shl-int/lit8 p1, p3, 0x1

    return p1
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    .line 1
    iget v1, v1, Lc/d/d/s/b;->c:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 2
    :goto_1
    iget-object v3, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    .line 3
    iget v4, v3, Lc/d/d/s/b;->d:I

    if-ge v2, v4, :cond_1

    .line 4
    invoke-virtual {v3, v0, v2}, Lc/d/d/s/b;->b(II)Z

    move-result v3

    iget-object v4, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    invoke-virtual {v4, v2, v0}, Lc/d/d/s/b;->b(II)Z

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    invoke-virtual {v3, v2, v0}, Lc/d/d/s/b;->a(II)V

    iget-object v3, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    invoke-virtual {v3, v0, v2}, Lc/d/d/s/b;->a(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()Lc/d/d/x/b/g;
    .locals 6

    iget-object v0, p0, Lc/d/d/x/b/a;->c:Lc/d/d/x/b/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1, v4, v2}, Lc/d/d/x/b/a;->a(III)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v4, v2}, Lc/d/d/x/b/a;->a(III)I

    move-result v2

    invoke-virtual {p0, v4, v4, v2}, Lc/d/d/x/b/a;->a(III)I

    move-result v2

    invoke-virtual {p0, v4, v1, v2}, Lc/d/d/x/b/a;->a(III)I

    move-result v1

    const/4 v2, 0x5

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {p0, v4, v2, v1}, Lc/d/d/x/b/a;->a(III)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    .line 1
    iget v2, v2, Lc/d/d/s/b;->d:I

    add-int/lit8 v3, v2, -0x7

    add-int/lit8 v5, v2, -0x1

    :goto_2
    if-lt v5, v3, :cond_3

    .line 2
    invoke-virtual {p0, v4, v5, v0}, Lc/d/d/x/b/a;->a(III)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, -0x8

    :goto_3
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v3, v4, v0}, Lc/d/d/x/b/a;->a(III)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3
    :cond_4
    invoke-static {v1, v0}, Lc/d/d/x/b/g;->a(II)Lc/d/d/x/b/g;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    xor-int/lit16 v1, v1, 0x5412

    xor-int/lit16 v0, v0, 0x5412

    invoke-static {v1, v0}, Lc/d/d/x/b/g;->a(II)Lc/d/d/x/b/g;

    move-result-object v2

    .line 4
    :goto_4
    iput-object v2, p0, Lc/d/d/x/b/a;->c:Lc/d/d/x/b/g;

    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public d()Lc/d/d/x/b/j;
    .locals 7

    iget-object v0, p0, Lc/d/d/x/b/a;->b:Lc/d/d/x/b/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    .line 1
    iget v0, v0, Lc/d/d/s/b;->d:I

    add-int/lit8 v1, v0, -0x11

    .line 2
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    invoke-static {v1}, Lc/d/d/x/b/j;->d(I)Lc/d/d/x/b/j;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v0, -0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    :goto_0
    if-ltz v4, :cond_3

    add-int/lit8 v6, v0, -0x9

    :goto_1
    if-lt v6, v1, :cond_2

    invoke-virtual {p0, v6, v4, v5}, Lc/d/d/x/b/a;->a(III)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lc/d/d/x/b/j;->b(I)Lc/d/d/x/b/j;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lc/d/d/x/b/j;->c()I

    move-result v5

    if-ne v5, v0, :cond_4

    iput-object v4, p0, Lc/d/d/x/b/a;->b:Lc/d/d/x/b/j;

    return-object v4

    :cond_4
    :goto_2
    if-ltz v2, :cond_6

    add-int/lit8 v4, v0, -0x9

    :goto_3
    if-lt v4, v1, :cond_5

    invoke-virtual {p0, v2, v4, v3}, Lc/d/d/x/b/a;->a(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lc/d/d/x/b/j;->b(I)Lc/d/d/x/b/j;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lc/d/d/x/b/j;->c()I

    move-result v2

    if-ne v2, v0, :cond_7

    iput-object v1, p0, Lc/d/d/x/b/a;->b:Lc/d/d/x/b/j;

    return-object v1

    :cond_7
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lc/d/d/x/b/a;->c:Lc/d/d/x/b/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc/d/d/x/b/c;->values()[Lc/d/d/x/b/c;

    move-result-object v0

    iget-object v1, p0, Lc/d/d/x/b/a;->c:Lc/d/d/x/b/g;

    .line 1
    iget-byte v1, v1, Lc/d/d/x/b/g;->b:B

    .line 2
    aget-object v0, v0, v1

    iget-object v1, p0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    .line 3
    iget v2, v1, Lc/d/d/s/b;->d:I

    .line 4
    invoke-virtual {v0, v1, v2}, Lc/d/d/x/b/c;->d(Lc/d/d/s/b;I)V

    return-void
.end method
