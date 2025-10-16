.class public Lc/d/a/b/i/e/d4;
.super Lc/d/a/b/i/e/h4;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lc/d/a/b/i/e/d4<",
        "TM;>;>",
        "Lc/d/a/b/i/e/h4;"
    }
.end annotation


# instance fields
.field public d:Lc/d/a/b/i/e/e4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/i/e/h4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/i/e/b4;)V
    .locals 2

    iget-object p1, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    .line 1
    iget v1, v0, Lc/d/a/b/i/e/e4;->e:I

    if-ge p1, v1, :cond_1

    .line 2
    iget-object v0, v0, Lc/d/a/b/i/e/e4;->d:[Lc/d/a/b/i/e/f4;

    aget-object v0, v0, p1

    .line 3
    invoke-virtual {v0}, Lc/d/a/b/i/e/f4;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/e/d4;->g()Lc/d/a/b/i/e/d4;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 4

    iget-object v0, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    .line 1
    iget v3, v2, Lc/d/a/b/i/e/e4;->e:I

    if-ge v0, v3, :cond_0

    .line 2
    iget-object v2, v2, Lc/d/a/b/i/e/e4;->d:[Lc/d/a/b/i/e/f4;

    aget-object v2, v2, v0

    .line 3
    invoke-virtual {v2}, Lc/d/a/b/i/e/f4;->b()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public synthetic e()Lc/d/a/b/i/e/h4;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/e/d4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/d4;

    return-object v0
.end method

.method public g()Lc/d/a/b/i/e/d4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lc/d/a/b/i/e/h4;->e()Lc/d/a/b/i/e/h4;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/d4;

    .line 1
    sget-object v1, Lc/d/a/b/i/e/g4;->a:Ljava/lang/Object;

    iget-object v1, p0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/d/a/b/i/e/e4;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/e/e4;

    iput-object v1, v0, Lc/d/a/b/i/e/d4;->d:Lc/d/a/b/i/e/e4;

    :cond_0
    return-object v0
.end method
