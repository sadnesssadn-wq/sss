.class public Lc/b/r/c/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/p;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/b/r/c/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/r/c/i;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/r/c/i;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/b/r/c/i;->a:Ljava/util/List;

    return-object v0
.end method
