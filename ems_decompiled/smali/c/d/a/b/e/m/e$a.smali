.class public final Lc/d/a/b/e/m/e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a<",
            "*>;",
            "Lc/d/a/b/e/p/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/Context;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a<",
            "*>;",
            "Lc/d/a/b/e/m/a$d;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Landroid/os/Looper;

.field public j:Lc/d/a/b/e/d;

.field public k:Lc/d/a/b/e/m/a$a;
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

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/e/m/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/e/m/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->b:Ljava/util/Set;

    new-instance v0, Lb/f/a;

    invoke-direct {v0}, Lb/f/a;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->e:Ljava/util/Map;

    new-instance v0, Lb/f/a;

    invoke-direct {v0}, Lb/f/a;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->g:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lc/d/a/b/e/m/e$a;->h:I

    sget-object v0, Lc/d/a/b/e/d;->c:Ljava/lang/Object;

    sget-object v0, Lc/d/a/b/e/d;->d:Lc/d/a/b/e/d;

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->j:Lc/d/a/b/e/d;

    sget-object v0, Lc/d/a/b/n/d;->c:Lc/d/a/b/e/m/a$a;

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->k:Lc/d/a/b/e/m/a$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->m:Ljava/util/ArrayList;

    iput-object p1, p0, Lc/d/a/b/e/m/e$a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->i:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e/m/e$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/e/m/e$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lc/d/a/b/e/m/e;
    .locals 27
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lc/d/a/b/e/m/e$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "must call addApi() to add at least one API"

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f(ZLjava/lang/Object;)V

    .line 1
    sget-object v0, Lc/d/a/b/n/a;->c:Lc/d/a/b/n/a;

    iget-object v3, v1, Lc/d/a/b/e/m/e$a;->g:Ljava/util/Map;

    sget-object v4, Lc/d/a/b/n/d;->e:Lc/d/a/b/e/m/a;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v1, Lc/d/a/b/e/m/e$a;->g:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/n/a;

    :cond_0
    move-object v11, v0

    new-instance v0, Lc/d/a/b/e/p/d;

    const/4 v4, 0x0

    iget-object v5, v1, Lc/d/a/b/e/m/e$a;->a:Ljava/util/Set;

    iget-object v6, v1, Lc/d/a/b/e/m/e$a;->e:Ljava/util/Map;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v1, Lc/d/a/b/e/m/e$a;->c:Ljava/lang/String;

    iget-object v10, v1, Lc/d/a/b/e/m/e$a;->d:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lc/d/a/b/e/p/d;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc/d/a/b/n/a;)V

    .line 2
    iget-object v10, v0, Lc/d/a/b/e/p/d;->d:Ljava/util/Map;

    .line 3
    new-instance v11, Lb/f/a;

    invoke-direct {v11}, Lb/f/a;-><init>()V

    new-instance v15, Lb/f/a;

    invoke-direct {v15}, Lb/f/a;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lc/d/a/b/e/m/e$a;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v26, 0x0

    move-object/from16 v13, v26

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lc/d/a/b/e/m/a;

    iget-object v3, v1, Lc/d/a/b/e/m/e$a;->g:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v9, v3}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lc/d/a/b/e/m/m/c2;

    invoke-direct {v8, v9, v4}, Lc/d/a/b/e/m/m/c2;-><init>(Lc/d/a/b/e/m/a;Z)V

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v3, v9, Lc/d/a/b/e/m/a;->a:Lc/d/a/b/e/m/a$a;

    const-string v4, "null reference"

    .line 5
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v4, v1, Lc/d/a/b/e/m/e$a;->f:Landroid/content/Context;

    iget-object v5, v1, Lc/d/a/b/e/m/e$a;->i:Landroid/os/Looper;

    move-object v6, v0

    move-object/from16 v16, v8

    move-object v2, v9

    move-object/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Lc/d/a/b/e/m/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/d;Ljava/lang/Object;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;)Lc/d/a/b/e/m/a$f;

    move-result-object v3

    .line 7
    iget-object v4, v2, Lc/d/a/b/e/m/a;->b:Lc/d/a/b/e/m/a$g;

    .line 8
    invoke-virtual {v15, v4, v3}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lc/d/a/b/e/m/a$f;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v13, :cond_2

    move-object v13, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    iget-object v2, v2, Lc/d/a/b/e/m/a;->c:Ljava/lang/String;

    iget-object v3, v13, Lc/d/a/b/e/m/a;->c:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be used with "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz v13, :cond_6

    iget-object v2, v1, Lc/d/a/b/e/m/e$a;->a:Ljava/util/Set;

    iget-object v3, v1, Lc/d/a/b/e/m/e$a;->b:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 11
    iget-object v7, v13, Lc/d/a/b/e/m/a;->c:Ljava/lang/String;

    aput-object v7, v6, v4

    if-eqz v2, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v5, 0x1

    .line 13
    :goto_2
    invoke-virtual {v15}, Lb/f/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v5}, Lc/d/a/b/e/m/m/j0;->l(Ljava/lang/Iterable;Z)I

    move-result v24

    new-instance v2, Lc/d/a/b/e/m/m/j0;

    iget-object v13, v1, Lc/d/a/b/e/m/e$a;->f:Landroid/content/Context;

    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v4, v1, Lc/d/a/b/e/m/e$a;->i:Landroid/os/Looper;

    iget-object v5, v1, Lc/d/a/b/e/m/e$a;->j:Lc/d/a/b/e/d;

    iget-object v6, v1, Lc/d/a/b/e/m/e$a;->k:Lc/d/a/b/e/m/a$a;

    iget-object v7, v1, Lc/d/a/b/e/m/e$a;->l:Ljava/util/ArrayList;

    iget-object v8, v1, Lc/d/a/b/e/m/e$a;->m:Ljava/util/ArrayList;

    iget v9, v1, Lc/d/a/b/e/m/e$a;->h:I

    move-object v12, v2

    move-object v10, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v3

    move/from16 v23, v9

    move-object/from16 v25, v10

    invoke-direct/range {v12 .. v25}, Lc/d/a/b/e/m/m/j0;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lc/d/a/b/e/p/d;Lc/d/a/b/e/d;Lc/d/a/b/e/m/a$a;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    .line 14
    sget-object v3, Lc/d/a/b/e/m/e;->a:Ljava/util/Set;

    .line 15
    monitor-enter v3

    :try_start_0
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, v1, Lc/d/a/b/e/m/e$a;->h:I

    if-gez v0, :cond_7

    return-object v2

    .line 16
    :cond_7
    throw v26

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
