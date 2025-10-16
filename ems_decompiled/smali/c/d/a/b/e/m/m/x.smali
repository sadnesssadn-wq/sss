.class public final Lc/d/a/b/e/m/m/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/l0;


# instance fields
.field public final a:Lc/d/a/b/e/m/m/o0;

.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Landroid/content/Context;

.field public final d:Lc/d/a/b/e/e;

.field public e:Lc/d/a/b/e/a;

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/os/Bundle;

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/d/a/b/e/m/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lc/d/a/b/n/g;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lc/d/a/b/e/p/j;

.field public p:Z

.field public q:Z

.field public final r:Lc/d/a/b/e/p/d;

.field public final s:Ljava/util/Map;
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

.field public final t:Lc/d/a/b/e/m/a$a;
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

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/o0;Lc/d/a/b/e/p/d;Ljava/util/Map;Lc/d/a/b/e/e;Lc/d/a/b/e/m/a$a;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/o0;",
            "Lc/d/a/b/e/p/d;",
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lc/d/a/b/e/e;",
            "Lc/d/a/b/e/m/a$a<",
            "+",
            "Lc/d/a/b/n/g;",
            "Lc/d/a/b/n/a;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/e/m/m/x;->g:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/m/x;->i:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/m/x;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/m/x;->u:Ljava/util/ArrayList;

    iput-object p1, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iput-object p2, p0, Lc/d/a/b/e/m/m/x;->r:Lc/d/a/b/e/p/d;

    iput-object p3, p0, Lc/d/a/b/e/m/m/x;->s:Ljava/util/Map;

    iput-object p4, p0, Lc/d/a/b/e/m/m/x;->d:Lc/d/a/b/e/e;

    iput-object p5, p0, Lc/d/a/b/e/m/m/x;->t:Lc/d/a/b/e/m/a$a;

    iput-object p6, p0, Lc/d/a/b/e/m/m/x;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lc/d/a/b/e/m/m/x;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/e/m/m/x;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lc/d/a/b/e/m/m/x;->e:Lc/d/a/b/e/a;

    iput v0, p0, Lc/d/a/b/e/m/m/x;->g:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lc/d/a/b/e/m/m/x;->l:Z

    iput-boolean v0, p0, Lc/d/a/b/e/m/m/x;->n:Z

    iput-boolean v0, p0, Lc/d/a/b/e/m/m/x;->p:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lc/d/a/b/e/m/m/x;->s:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "null reference"

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/e/m/a;

    iget-object v7, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v7, v7, Lc/d/a/b/e/m/m/o0;->h:Ljava/util/Map;

    .line 1
    iget-object v8, v5, Lc/d/a/b/e/m/a;->b:Lc/d/a/b/e/m/a$g;

    .line 2
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/d/a/b/e/m/a$f;

    .line 3
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v6, v5, Lc/d/a/b/e/m/a;->a:Lc/d/a/b/e/m/a$a;

    .line 5
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lc/d/a/b/e/m/m/x;->s:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v7}, Lc/d/a/b/e/m/a$f;->u()Z

    move-result v8

    if-eqz v8, :cond_1

    iput-boolean v2, p0, Lc/d/a/b/e/m/m/x;->m:Z

    if-eqz v6, :cond_0

    iget-object v8, p0, Lc/d/a/b/e/m/m/x;->j:Ljava/util/Set;

    .line 6
    iget-object v9, v5, Lc/d/a/b/e/m/a;->b:Lc/d/a/b/e/m/a$g;

    .line 7
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, Lc/d/a/b/e/m/m/x;->l:Z

    :cond_1
    :goto_1
    new-instance v8, Lc/d/a/b/e/m/m/z;

    invoke-direct {v8, p0, v5, v6}, Lc/d/a/b/e/m/m/z;-><init>(Lc/d/a/b/e/m/m/x;Lc/d/a/b/e/m/a;Z)V

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lc/d/a/b/e/m/m/x;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->r:Lc/d/a/b/e/p/d;

    .line 8
    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->t:Lc/d/a/b/e/m/a$a;

    .line 10
    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->r:Lc/d/a/b/e/p/d;

    iget-object v2, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v2, v2, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    iput-object v2, v0, Lc/d/a/b/e/p/d;->h:Ljava/lang/Integer;

    .line 13
    new-instance v10, Lc/d/a/b/e/m/m/e0;

    invoke-direct {v10, p0, v1}, Lc/d/a/b/e/m/m/e0;-><init>(Lc/d/a/b/e/m/m/x;Lc/d/a/b/e/m/m/w;)V

    iget-object v4, p0, Lc/d/a/b/e/m/m/x;->t:Lc/d/a/b/e/m/a$a;

    iget-object v5, p0, Lc/d/a/b/e/m/m/x;->c:Landroid/content/Context;

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    .line 14
    iget-object v6, v0, Lc/d/a/b/e/m/m/j0;->g:Landroid/os/Looper;

    .line 15
    iget-object v7, p0, Lc/d/a/b/e/m/m/x;->r:Lc/d/a/b/e/p/d;

    .line 16
    iget-object v8, v7, Lc/d/a/b/e/p/d;->g:Lc/d/a/b/n/a;

    move-object v9, v10

    .line 17
    invoke-virtual/range {v4 .. v10}, Lc/d/a/b/e/m/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/d;Ljava/lang/Object;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;)Lc/d/a/b/e/m/a$f;

    move-result-object v0

    check-cast v0, Lc/d/a/b/n/g;

    iput-object v0, p0, Lc/d/a/b/e/m/m/x;->k:Lc/d/a/b/n/g;

    :cond_3
    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lc/d/a/b/e/m/m/x;->h:I

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->u:Ljava/util/ArrayList;

    .line 18
    sget-object v1, Lc/d/a/b/e/m/m/q0;->a:Ljava/util/concurrent/ExecutorService;

    .line 19
    new-instance v2, Lc/d/a/b/e/m/m/y;

    invoke-direct {v2, p0, v3}, Lc/d/a/b/e/m/m/y;-><init>(Lc/d/a/b/e/m/m/x;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/x;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/x;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/x;->l()V

    :cond_2
    return-void
.end method

.method public final d(Z)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->k:Lc/d/a/b/n/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lc/d/a/b/n/g;->a()V

    :cond_0
    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->s()V

    iget-object p1, p0, Lc/d/a/b/e/m/m/x;->r:Lc/d/a/b/e/p/d;

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lc/d/a/b/e/m/m/x;->o:Lc/d/a/b/e/p/j;

    :cond_1
    return-void
.end method

.method public final e(Lc/d/a/b/e/a;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/x;->p()V

    invoke-virtual {p1}, Lc/d/a/b/e/a;->v()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/x;->d(Z)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v0, p1}, Lc/d/a/b/e/m/m/o0;->g(Lc/d/a/b/e/a;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->p:Lc/d/a/b/e/m/m/d1;

    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/d1;->b(Lc/d/a/b/e/a;)V

    return-void
.end method

.method public final f(Lc/d/a/b/e/a;Lc/d/a/b/e/m/a;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/a;",
            "Lc/d/a/b/e/m/a<",
            "*>;Z)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p2, Lc/d/a/b/e/m/a;->a:Lc/d/a/b/e/m/a$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lc/d/a/b/e/a;->v()Z

    move-result p3

    if-eqz p3, :cond_0

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lc/d/a/b/e/m/m/x;->d:Lc/d/a/b/e/e;

    .line 3
    iget v3, p1, Lc/d/a/b/e/a;->d:I

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p3, v4, v3, v4}, Lc/d/a/b/e/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_4

    .line 5
    :cond_2
    iget-object p3, p0, Lc/d/a/b/e/m/m/x;->e:Lc/d/a/b/e/a;

    if-eqz p3, :cond_3

    iget p3, p0, Lc/d/a/b/e/m/m/x;->f:I

    if-ge v0, p3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    iput-object p1, p0, Lc/d/a/b/e/m/m/x;->e:Lc/d/a/b/e/a;

    iput v0, p0, Lc/d/a/b/e/m/m/x;->f:I

    :cond_5
    iget-object p3, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object p3, p3, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    .line 6
    iget-object p2, p2, Lc/d/a/b/e/m/a;->b:Lc/d/a/b/e/m/a$g;

    .line 7
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(I)Z
    .locals 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget v0, p0, Lc/d/a/b/e/m/m/x;->g:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v0, v5, v4, v3, v4}, Lc/d/a/b/e/m/m/j0;->k(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GACConnecting"

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected callback in "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lc/d/a/b/e/m/m/x;->h:I

    const/16 v3, 0x21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mRemainingConnections="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lc/d/a/b/e/m/m/x;->g:I

    const-string v3, "UNKNOWN"

    const-string v5, "STEP_GETTING_REMOTE_SERVICE"

    const-string v6, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v0, v6

    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v5

    goto :goto_1

    :cond_3
    move-object v3, v6

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x46

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GoogleApiClient connecting is in step "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but received callback for step "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lc/d/a/b/e/a;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v4}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/x;->e(Lc/d/a/b/e/a;)V

    const/4 p1, 0x0

    return p1

    :cond_4
    return v1
.end method

.method public final h()Z
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget v0, p0, Lc/d/a/b/e/m/m/x;->h:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lc/d/a/b/e/m/m/x;->h:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    if-gez v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v0, v5, v4, v3, v4}, Lc/d/a/b/e/m/m/j0;->k(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GACConnecting"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lc/d/a/b/e/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v4}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->e:Lc/d/a/b/e/a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget v3, p0, Lc/d/a/b/e/m/m/x;->f:I

    iput v3, v1, Lc/d/a/b/e/m/m/o0;->n:I

    :goto_0
    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/x;->e(Lc/d/a/b/e/a;)V

    return v2

    :cond_2
    return v1
.end method

.method public final i()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget v0, p0, Lc/d/a/b/e/m/m/x;->h:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lc/d/a/b/e/m/m/x;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/d/a/b/e/m/m/x;->n:Z

    if-eqz v0, :cond_5

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lc/d/a/b/e/m/m/x;->g:I

    iget-object v1, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v1, v1, Lc/d/a/b/e/m/m/o0;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p0, Lc/d/a/b/e/m/m/x;->h:I

    iget-object v1, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v1, v1, Lc/d/a/b/e/m/m/o0;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/a$c;

    iget-object v3, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v3, v3, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/x;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/x;->l()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v3, v3, Lc/d/a/b/e/m/m/o0;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/a$f;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lc/d/a/b/e/m/m/x;->u:Ljava/util/ArrayList;

    .line 1
    sget-object v2, Lc/d/a/b/e/m/m/q0;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v3, Lc/d/a/b/e/m/m/d0;

    invoke-direct {v3, p0, v0}, Lc/d/a/b/e/m/m/d0;-><init>(Lc/d/a/b/e/m/m/x;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final j(I)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    new-instance p1, Lc/d/a/b/e/a;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/x;->e(Lc/d/a/b/e/a;)V

    return-void
.end method

.method public final k()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/x;->p()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/x;->d(Z)V

    iget-object v1, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/d/a/b/e/m/m/o0;->g(Lc/d/a/b/e/a;)V

    return v0
.end method

.method public final l()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    .line 1
    iget-object v1, v0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, v0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    invoke-virtual {v1}, Lc/d/a/b/e/m/m/j0;->p()Z

    new-instance v1, Lc/d/a/b/e/m/m/t;

    invoke-direct {v1, v0}, Lc/d/a/b/e/m/m/t;-><init>(Lc/d/a/b/e/m/m/o0;)V

    iput-object v1, v0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    iget-object v1, v0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v1}, Lc/d/a/b/e/m/m/l0;->a()V

    iget-object v1, v0, Lc/d/a/b/e/m/m/o0;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2
    sget-object v0, Lc/d/a/b/e/m/m/q0;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v1, Lc/d/a/b/e/m/m/w;

    invoke-direct {v1, p0}, Lc/d/a/b/e/m/m/w;-><init>(Lc/d/a/b/e/m/m/x;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->k:Lc/d/a/b/n/g;

    const-string v1, "null reference"

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lc/d/a/b/e/m/m/x;->p:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/d/a/b/e/m/m/x;->o:Lc/d/a/b/e/p/j;

    .line 4
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-boolean v3, p0, Lc/d/a/b/e/m/m/x;->q:Z

    invoke-interface {v0, v2, v3}, Lc/d/a/b/n/g;->d(Lc/d/a/b/e/p/j;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/x;->d(Z)V

    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/a$c;

    iget-object v3, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v3, v3, Lc/d/a/b/e/m/m/o0;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/a$f;

    .line 6
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-interface {v2}, Lc/d/a/b/e/m/a$f;->s()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->i:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v1, v1, Lc/d/a/b/e/m/m/o0;->p:Lc/d/a/b/e/m/m/d1;

    invoke-interface {v1, v0}, Lc/d/a/b/e/m/m/d1;->c(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final m()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/e/m/m/x;->m:Z

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/b/e/m/m/j0;->p:Ljava/util/Set;

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/m/a$c;

    iget-object v2, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v2, v2, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v2, v2, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    new-instance v3, Lc/d/a/b/e/a;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
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

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/x;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc/d/a/b/e/m/m/x;->f(Lc/d/a/b/e/a;Lc/d/a/b/e/m/a;Z)V

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/x;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/x;->l()V

    :cond_1
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

.method public final p()V
    .locals 5

    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/x;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
