.class public final Lc/d/a/b/e/m/m/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/e1;
.implements Lc/d/a/b/e/m/m/b2;


# instance fields
.field public final c:Ljava/util/concurrent/locks/Lock;

.field public final d:Ljava/util/concurrent/locks/Condition;

.field public final e:Landroid/content/Context;

.field public final f:Lc/d/a/b/e/e;

.field public final g:Lc/d/a/b/e/m/m/r0;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a$c<",
            "*>;",
            "Lc/d/a/b/e/m/a$f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a$c<",
            "*>;",
            "Lc/d/a/b/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lc/d/a/b/e/p/d;

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "+",
            "Lc/d/a/b/n/g;",
            "Lc/d/a/b/n/a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile m:Lc/d/a/b/e/m/m/l0;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public n:I

.field public final o:Lc/d/a/b/e/m/m/j0;

.field public final p:Lc/d/a/b/e/m/m/d1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/a/b/e/m/m/j0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lc/d/a/b/e/e;Ljava/util/Map;Lc/d/a/b/e/p/d;Ljava/util/Map;Lc/d/a/b/e/m/a$a;Ljava/util/ArrayList;Lc/d/a/b/e/m/m/d1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/d/a/b/e/m/m/j0;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lc/d/a/b/e/e;",
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a$c<",
            "*>;",
            "Lc/d/a/b/e/m/a$f;",
            ">;",
            "Lc/d/a/b/e/p/d;",
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lc/d/a/b/e/m/a$a<",
            "+",
            "Lc/d/a/b/n/g;",
            "Lc/d/a/b/n/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/e/m/m/c2;",
            ">;",
            "Lc/d/a/b/e/m/m/d1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    iput-object p1, p0, Lc/d/a/b/e/m/m/o0;->e:Landroid/content/Context;

    iput-object p3, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lc/d/a/b/e/m/m/o0;->f:Lc/d/a/b/e/e;

    iput-object p6, p0, Lc/d/a/b/e/m/m/o0;->h:Ljava/util/Map;

    iput-object p7, p0, Lc/d/a/b/e/m/m/o0;->j:Lc/d/a/b/e/p/d;

    iput-object p8, p0, Lc/d/a/b/e/m/m/o0;->k:Ljava/util/Map;

    iput-object p9, p0, Lc/d/a/b/e/m/m/o0;->l:Lc/d/a/b/e/m/a$a;

    iput-object p2, p0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    iput-object p11, p0, Lc/d/a/b/e/m/m/o0;->p:Lc/d/a/b/e/m/m/d1;

    invoke-virtual {p10}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p10, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p2, p2, 0x1

    check-cast p5, Lc/d/a/b/e/m/m/c2;

    .line 1
    iput-object p0, p5, Lc/d/a/b/e/m/m/c2;->e:Lc/d/a/b/e/m/m/b2;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lc/d/a/b/e/m/m/r0;

    invoke-direct {p1, p0, p4}, Lc/d/a/b/e/m/m/r0;-><init>(Lc/d/a/b/e/m/m/o0;Landroid/os/Looper;)V

    iput-object p1, p0, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/e/m/m/o0;->d:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Lc/d/a/b/e/m/m/g0;

    invoke-direct {p1, p0}, Lc/d/a/b/e/m/m/g0;-><init>(Lc/d/a/b/e/m/m/o0;)V

    iput-object p1, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v0}, Lc/d/a/b/e/m/m/l0;->b()V

    return-void
.end method

.method public final b()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v0}, Lc/d/a/b/e/m/m/l0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public final c(Lc/d/a/b/e/m/m/p;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    instance-of v0, v0, Lc/d/a/b/e/m/m/t;

    return v0
.end method

.method public final f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Lc/d/a/b/e/m/m/o0;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    .line 1
    iget-object v4, v2, Lc/d/a/b/e/m/a;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lc/d/a/b/e/m/m/o0;->h:Ljava/util/Map;

    .line 3
    iget-object v2, v2, Lc/d/a/b/e/m/a;->b:Lc/d/a/b/e/m/a$g;

    .line 4
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/a$f;

    const-string v3, "null reference"

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-interface {v2, v0, p2, p3, p4}, Lc/d/a/b/e/m/a$f;->h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lc/d/a/b/e/a;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance p1, Lc/d/a/b/e/m/m/g0;

    invoke-direct {p1, p0}, Lc/d/a/b/e/m/m/g0;-><init>(Lc/d/a/b/e/m/m/o0;)V

    iput-object p1, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    iget-object p1, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {p1}, Lc/d/a/b/e/m/m/l0;->a()V

    iget-object p1, p0, Lc/d/a/b/e/m/m/o0;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final n(Lc/d/a/b/e/a;Lc/d/a/b/e/m/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/a;",
            "Lc/d/a/b/e/m/a<",
            "*>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v0, p1, p2, p3}, Lc/d/a/b/e/m/m/l0;->n(Lc/d/a/b/e/a;Lc/d/a/b/e/m/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
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

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i()V

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/l0;->o(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    move-result-object p1

    return-object p1
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/l0;->c(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/l0;->j(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
