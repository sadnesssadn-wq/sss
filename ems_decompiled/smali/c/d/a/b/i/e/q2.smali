.class public final Lc/d/a/b/i/e/q2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/b2;


# instance fields
.field public final a:Lc/d/a/b/i/e/d2;

.field public final b:Lc/d/a/b/i/e/r2;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/e/d2;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/e/q2;->a:Lc/d/a/b/i/e/d2;

    new-instance v0, Lc/d/a/b/i/e/r2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lc/d/a/b/i/e/r2;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lc/d/a/b/i/e/q2;->b:Lc/d/a/b/i/e/r2;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lc/d/a/b/i/e/q2;->b:Lc/d/a/b/i/e/r2;

    .line 1
    iget v0, v0, Lc/d/a/b/i/e/r2;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/b/i/e/q2;->b:Lc/d/a/b/i/e/r2;

    .line 1
    iget v0, v0, Lc/d/a/b/i/e/r2;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lc/d/a/b/i/e/d2;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/q2;->a:Lc/d/a/b/i/e/d2;

    return-object v0
.end method
