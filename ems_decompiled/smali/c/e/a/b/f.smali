.class public Lc/e/a/b/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/e/a/b/j;

.field public final synthetic d:Lc/e/a/b/g;


# direct methods
.method public constructor <init>(Lc/e/a/b/g;Lc/e/a/b/j;)V
    .locals 0

    iput-object p1, p0, Lc/e/a/b/f;->d:Lc/e/a/b/g;

    iput-object p2, p0, Lc/e/a/b/f;->c:Lc/e/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/e/a/b/f;->d:Lc/e/a/b/g;

    iget-object v0, v0, Lc/e/a/b/g;->a:Lc/e/a/b/e;

    iget-object v0, v0, Lc/e/a/b/e;->j:Lc/e/a/a/a/a;

    iget-object v1, p0, Lc/e/a/b/f;->c:Lc/e/a/b/j;

    .line 1
    iget-object v1, v1, Lc/e/a/b/j;->k:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Lc/e/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/e/a/b/f;->d:Lc/e/a/b/g;

    .line 3
    invoke-virtual {v1}, Lc/e/a/b/g;->a()V

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/e/a/b/f;->d:Lc/e/a/b/g;

    .line 5
    iget-object v0, v0, Lc/e/a/b/g;->c:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lc/e/a/b/f;->d:Lc/e/a/b/g;

    .line 7
    iget-object v0, v0, Lc/e/a/b/g;->b:Ljava/util/concurrent/Executor;

    .line 8
    :goto_1
    iget-object v1, p0, Lc/e/a/b/f;->c:Lc/e/a/b/j;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
