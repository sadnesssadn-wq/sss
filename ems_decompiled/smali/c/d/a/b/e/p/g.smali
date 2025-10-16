.class public abstract Lc/d/a/b/e/p/g;
.super Lc/d/a/b/e/p/b;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/a$f;
.implements Lc/d/a/b/e/p/f0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lc/d/a/b/e/p/b<",
        "TT;>;",
        "Lc/d/a/b/e/m/a$f;",
        "Lc/d/a/b/e/p/f0;"
    }
.end annotation


# instance fields
.field public final C:Lc/d/a/b/e/p/d;

.field public final D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILc/d/a/b/e/p/d;Lc/d/a/b/e/m/m/f;Lc/d/a/b/e/m/m/m;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lc/d/a/b/e/p/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Lc/d/a/b/e/m/m/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Lc/d/a/b/e/m/m/m;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    move-object v10, p0

    move-object v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 1
    sget-object v3, Lc/d/a/b/e/p/h;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lc/d/a/b/e/p/h;->b:Lc/d/a/b/e/p/h;

    if-nez v4, :cond_0

    new-instance v4, Lc/d/a/b/e/p/z0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lc/d/a/b/e/p/z0;-><init>(Landroid/content/Context;)V

    sput-object v4, Lc/d/a/b/e/p/h;->b:Lc/d/a/b/e/p/h;

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lc/d/a/b/e/p/h;->b:Lc/d/a/b/e/p/h;

    .line 2
    sget-object v3, Lc/d/a/b/e/d;->c:Ljava/lang/Object;

    sget-object v5, Lc/d/a/b/e/d;->d:Lc/d/a/b/e/d;

    const-string v3, "null reference"

    .line 3
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "null reference"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v7, Lc/d/a/b/e/p/b0;

    invoke-direct {v7, v1}, Lc/d/a/b/e/p/b0;-><init>(Lc/d/a/b/e/m/m/f;)V

    .line 5
    new-instance v8, Lc/d/a/b/e/p/d0;

    invoke-direct {v8, v2}, Lc/d/a/b/e/p/d0;-><init>(Lc/d/a/b/e/m/m/m;)V

    .line 6
    iget-object v9, v0, Lc/d/a/b/e/p/d;->f:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 7
    invoke-direct/range {v1 .. v9}, Lc/d/a/b/e/p/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/h;Lc/d/a/b/e/e;ILc/d/a/b/e/p/b$a;Lc/d/a/b/e/p/b$b;Ljava/lang/String;)V

    iput-object v0, v10, Lc/d/a/b/e/p/g;->C:Lc/d/a/b/e/p/d;

    .line 8
    iget-object v1, v0, Lc/d/a/b/e/p/d;->a:Landroid/accounts/Account;

    .line 9
    iput-object v1, v10, Lc/d/a/b/e/p/g;->E:Landroid/accounts/Account;

    .line 10
    iget-object v0, v0, Lc/d/a/b/e/p/d;->c:Ljava/util/Set;

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    iput-object v0, v10, Lc/d/a/b/e/p/g;->D:Ljava/util/Set;

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final A()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/p/g;->D:Ljava/util/Set;

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/d/a/b/e/p/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/e/p/g;->D:Ljava/util/Set;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final x()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/p/g;->E:Landroid/accounts/Account;

    return-object v0
.end method
