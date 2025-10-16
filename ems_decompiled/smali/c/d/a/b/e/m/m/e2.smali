.class public final Lc/d/a/b/e/m/m/e2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/e1;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lc/d/a/b/e/m/m/j0;

.field public final e:Landroid/os/Looper;

.field public final f:Lc/d/a/b/e/m/m/o0;

.field public final g:Lc/d/a/b/e/m/m/o0;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a$c<",
            "*>;",
            "Lc/d/a/b/e/m/m/o0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/d/a/b/e/m/m/p;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lc/d/a/b/e/m/a$f;

.field public k:Landroid/os/Bundle;

.field public l:Lc/d/a/b/e/a;

.field public m:Lc/d/a/b/e/a;

.field public n:Z

.field public final o:Ljava/util/concurrent/locks/Lock;

.field public p:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/a/b/e/m/m/j0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lc/d/a/b/e/e;Ljava/util/Map;Ljava/util/Map;Lc/d/a/b/e/p/d;Lc/d/a/b/e/m/a$a;Lc/d/a/b/e/m/a$f;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 18
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
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a$c<",
            "*>;",
            "Lc/d/a/b/e/m/a$f;",
            ">;",
            "Lc/d/a/b/e/p/d;",
            "Lc/d/a/b/e/m/a$a<",
            "+",
            "Lc/d/a/b/n/g;",
            "Lc/d/a/b/n/a;",
            ">;",
            "Lc/d/a/b/e/m/a$f;",
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/e/m/m/c2;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/e/m/m/c2;",
            ">;",
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/b/e/m/m/e2;->i:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, v0, Lc/d/a/b/e/m/m/e2;->l:Lc/d/a/b/e/a;

    iput-object v1, v0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lc/d/a/b/e/m/m/e2;->n:Z

    iput v2, v0, Lc/d/a/b/e/m/m/e2;->p:I

    move-object/from16 v2, p1

    iput-object v2, v0, Lc/d/a/b/e/m/m/e2;->c:Landroid/content/Context;

    move-object/from16 v15, p2

    iput-object v15, v0, Lc/d/a/b/e/m/m/e2;->d:Lc/d/a/b/e/m/m/j0;

    move-object/from16 v14, p3

    iput-object v14, v0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v13, p4

    iput-object v13, v0, Lc/d/a/b/e/m/m/e2;->e:Landroid/os/Looper;

    move-object/from16 v3, p10

    iput-object v3, v0, Lc/d/a/b/e/m/m/e2;->j:Lc/d/a/b/e/m/a$f;

    new-instance v12, Lc/d/a/b/e/m/m/o0;

    new-instance v11, Lc/d/a/b/e/m/m/g2;

    invoke-direct {v11, v0, v1}, Lc/d/a/b/e/m/m/g2;-><init>(Lc/d/a/b/e/m/m/e2;Lc/d/a/b/e/m/m/d2;)V

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v17, v11

    move-object/from16 v11, p14

    move-object v1, v12

    move-object/from16 v12, v16

    move-object/from16 v13, p12

    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lc/d/a/b/e/m/m/o0;-><init>(Landroid/content/Context;Lc/d/a/b/e/m/m/j0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lc/d/a/b/e/e;Ljava/util/Map;Lc/d/a/b/e/p/d;Ljava/util/Map;Lc/d/a/b/e/m/a$a;Ljava/util/ArrayList;Lc/d/a/b/e/m/m/d1;)V

    iput-object v1, v0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    new-instance v1, Lc/d/a/b/e/m/m/o0;

    new-instance v14, Lc/d/a/b/e/m/m/f2;

    const/4 v3, 0x0

    invoke-direct {v14, v0, v3}, Lc/d/a/b/e/m/m/f2;-><init>(Lc/d/a/b/e/m/m/e2;Lc/d/a/b/e/m/m/d2;)V

    move-object v3, v1

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v14}, Lc/d/a/b/e/m/m/o0;-><init>(Landroid/content/Context;Lc/d/a/b/e/m/m/j0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lc/d/a/b/e/e;Ljava/util/Map;Lc/d/a/b/e/p/d;Ljava/util/Map;Lc/d/a/b/e/m/a$a;Ljava/util/ArrayList;Lc/d/a/b/e/m/m/d1;)V

    iput-object v1, v0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    new-instance v1, Lb/f/a;

    invoke-direct {v1}, Lb/f/a;-><init>()V

    move-object/from16 v2, p7

    check-cast v2, Lb/f/a;

    invoke-virtual {v2}, Lb/f/a;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Lb/f/g$c;

    invoke-virtual {v2}, Lb/f/g$c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v3, v2

    check-cast v3, Lb/f/g$a;

    invoke-virtual {v3}, Lb/f/g$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/e/m/a$c;

    iget-object v4, v0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v1, v3, v4}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p6

    check-cast v2, Lb/f/a;

    invoke-virtual {v2}, Lb/f/a;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Lb/f/g$c;

    invoke-virtual {v2}, Lb/f/g$c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    move-object v3, v2

    check-cast v3, Lb/f/g$a;

    invoke-virtual {v3}, Lb/f/g$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/e/m/a$c;

    iget-object v4, v0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v1, v3, v4}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/b/e/m/m/e2;->h:Ljava/util/Map;

    return-void
.end method

.method public static h(Lc/d/a/b/e/m/m/e2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->l:Lc/d/a/b/e/a;

    invoke-static {v0}, Lc/d/a/b/e/m/m/e2;->i(Lc/d/a/b/e/a;)Z

    move-result v0

    const-string v1, "null reference"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    invoke-static {v0}, Lc/d/a/b/e/m/m/e2;->i(Lc/d/a/b/e/a;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    if-eqz v0, :cond_8

    iget v1, p0, Lc/d/a/b/e/m/m/e2;->p:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->k()V

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/e2;->g(Lc/d/a/b/e/a;)V

    iget-object p0, p0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/o0;->b()V

    goto :goto_3

    :cond_2
    :goto_0
    iget v0, p0, Lc/d/a/b/e/m/m/e2;->p:I

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string v1, "CompositeGAC"

    const-string v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->d:Lc/d/a/b/e/m/m/j0;

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lc/d/a/b/e/m/m/j0;->c(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->k()V

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/e/m/m/e2;->p:I

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->l:Lc/d/a/b/e/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    invoke-static {v0}, Lc/d/a/b/e/m/m/e2;->i(Lc/d/a/b/e/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/o0;->b()V

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->l:Lc/d/a/b/e/a;

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 5
    :cond_6
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->l:Lc/d/a/b/e/a;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    iget v2, v2, Lc/d/a/b/e/m/m/o0;->n:I

    iget-object v3, p0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    iget v3, v3, Lc/d/a/b/e/m/m/o0;->n:I

    if-ge v2, v3, :cond_7

    move-object v0, v1

    :cond_7
    :goto_2
    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/e2;->g(Lc/d/a/b/e/a;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public static i(Lc/d/a/b/e/a;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lc/d/a/b/e/a;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lc/d/a/b/e/m/m/e2;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/e/m/m/e2;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    iput-object v0, p0, Lc/d/a/b/e/m/m/e2;->l:Lc/d/a/b/e/a;

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v0}, Lc/d/a/b/e/m/m/l0;->b()V

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {v0}, Lc/d/a/b/e/m/m/l0;->b()V

    return-void
.end method

.method public final b()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    iput-object v0, p0, Lc/d/a/b/e/m/m/e2;->l:Lc/d/a/b/e/a;

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/e/m/m/e2;->p:I

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/o0;->b()V

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/o0;->b()V

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->k()V

    return-void
.end method

.method public final c(Lc/d/a/b/e/m/m/p;)Z
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    instance-of v0, v0, Lc/d/a/b/e/m/m/t;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lc/d/a/b/e/m/m/e2;->p:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iput v0, p0, Lc/d/a/b/e/m/m/e2;->p:I

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    iget-object p1, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    .line 3
    iget-object p1, p1, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    invoke-interface {p1}, Lc/d/a/b/e/m/m/l0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_2
    iget-object p1, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->j()Z

    move-result v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v1}, Lc/d/a/b/e/m/m/o0;->b()V

    new-instance v1, Lc/d/a/b/e/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lc/d/a/b/e/a;-><init>(I)V

    iput-object v1, p0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    if-eqz v0, :cond_0

    new-instance v0, Lc/d/a/b/i/d/e;

    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->e:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lc/d/a/b/i/d/e;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lc/d/a/b/e/m/m/d2;

    invoke-direct {v1, p0}, Lc/d/a/b/e/m/m/d2;-><init>(Lc/d/a/b/e/m/m/e2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    instance-of v0, v0, Lc/d/a/b/e/m/m/t;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->m:Lc/d/a/b/e/m/m/l0;

    instance-of v0, v0, Lc/d/a/b/e/m/m/t;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lc/d/a/b/e/m/m/e2;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Lc/d/a/b/e/m/m/o0;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "anonClient"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/b/e/m/m/o0;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lc/d/a/b/e/a;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget v0, p0, Lc/d/a/b/e/m/m/e2;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->d:Lc/d/a/b/e/m/m/j0;

    invoke-virtual {v0, p1}, Lc/d/a/b/e/m/m/j0;->b(Lc/d/a/b/e/a;)V

    :cond_1
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->k()V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lc/d/a/b/e/m/m/e2;->p:I

    return-void
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lc/d/a/b/e/m/m/e2;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final k()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/m/m/p;

    invoke-interface {v1}, Lc/d/a/b/e/m/m/p;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final l()Z
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lc/d/a/b/e/a;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;
    .locals 7
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

    .line 1
    iget-object v0, p1, Lc/d/a/b/e/m/m/d;->n:Lc/d/a/b/e/m/a$c;

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/o0;

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/e2;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    .line 4
    iget-object v2, p0, Lc/d/a/b/e/m/m/e2;->j:Lc/d/a/b/e/m/a$f;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc/d/a/b/e/m/m/e2;->c:Landroid/content/Context;

    iget-object v4, p0, Lc/d/a/b/e/m/m/e2;->d:Lc/d/a/b/e/m/m/j0;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lc/d/a/b/e/m/m/e2;->j:Lc/d/a/b/e/m/a$f;

    invoke-interface {v5}, Lc/d/a/b/e/m/a$f;->t()Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {v2, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 5
    :goto_0
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lc/d/a/b/e/m/m/d;->n(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->g:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v0, p1}, Lc/d/a/b/e/m/m/o0;->o(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    invoke-virtual {v0, p1}, Lc/d/a/b/e/m/m/o0;->o(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    move-result-object p1

    return-object p1
.end method
