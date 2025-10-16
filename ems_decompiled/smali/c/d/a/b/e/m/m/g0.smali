.class public final Lc/d/a/b/e/m/m/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/l0;


# instance fields
.field public final a:Lc/d/a/b/e/m/m/o0;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/g0;->a:Lc/d/a/b/e/m/m/o0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/g0;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/m/a$f;

    invoke-interface {v1}, Lc/d/a/b/e/m/a$f;->s()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/g0;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/b/e/m/m/j0;->p:Ljava/util/Set;

    return-void
.end method

.method public final b()V
    .locals 10

    iget-object v8, p0, Lc/d/a/b/e/m/m/g0;->a:Lc/d/a/b/e/m/m/o0;

    .line 1
    iget-object v0, v8, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v9, Lc/d/a/b/e/m/m/x;

    iget-object v2, v8, Lc/d/a/b/e/m/m/o0;->j:Lc/d/a/b/e/p/d;

    iget-object v3, v8, Lc/d/a/b/e/m/m/o0;->k:Ljava/util/Map;

    iget-object v4, v8, Lc/d/a/b/e/m/m/o0;->f:Lc/d/a/b/e/e;

    iget-object v5, v8, Lc/d/a/b/e/m/m/o0;->l:Lc/d/a/b/e/m/a$a;

    iget-object v6, v8, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    iget-object v7, v8, Lc/d/a/b/e/m/m/o0;->e:Landroid/content/Context;

    move-object v0, v9

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lc/d/a/b/e/m/m/x;-><init>(Lc/d/a/b/e/m/m/o0;Lc/d/a/b/e/p/d;Ljava/util/Map;Lc/d/a/b/e/e;Lc/d/a/b/e/m/a$a;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v9, v8, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    iget-object v0, v8, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v0}, Lc/d/a/b/e/m/m/l0;->a()V

    iget-object v0, v8, Lc/d/a/b/e/m/m/o0;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v8, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v8, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final j(I)V
    .locals 0

    return-void
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n(Lc/d/a/b/e/a;Lc/d/a/b/e/m/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/a;",
            "Lc/d/a/b/e/m/a<",
            "*>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public final o(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc/d/a/b/e/m/a$b;",
            "T:",
            "Lc/d/a/b/e/m/m/d<",
            "+",
            "Lc/d/a/b/e/m/j;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
