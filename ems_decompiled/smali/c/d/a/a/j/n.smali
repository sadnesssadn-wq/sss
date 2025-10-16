.class public Lc/d/a/a/j/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/m;


# static fields
.field public static volatile e:Lc/d/a/a/j/o;


# instance fields
.field public final a:Lc/d/a/a/j/v/a;

.field public final b:Lc/d/a/a/j/v/a;

.field public final c:Lc/d/a/a/j/t/e;

.field public final d:Lc/d/a/a/j/t/h/o;


# direct methods
.method public constructor <init>(Lc/d/a/a/j/v/a;Lc/d/a/a/j/v/a;Lc/d/a/a/j/t/e;Lc/d/a/a/j/t/h/o;Lc/d/a/a/j/t/h/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/n;->a:Lc/d/a/a/j/v/a;

    iput-object p2, p0, Lc/d/a/a/j/n;->b:Lc/d/a/a/j/v/a;

    iput-object p3, p0, Lc/d/a/a/j/n;->c:Lc/d/a/a/j/t/e;

    iput-object p4, p0, Lc/d/a/a/j/n;->d:Lc/d/a/a/j/t/h/o;

    .line 1
    iget-object p1, p5, Lc/d/a/a/j/t/h/q;->a:Ljava/util/concurrent/Executor;

    new-instance p2, Lc/d/a/a/j/t/h/i;

    invoke-direct {p2, p5}, Lc/d/a/a/j/t/h/i;-><init>(Lc/d/a/a/j/t/h/q;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lc/d/a/a/j/n;
    .locals 2

    sget-object v0, Lc/d/a/a/j/n;->e:Lc/d/a/a/j/o;

    if-eqz v0, :cond_0

    check-cast v0, Lc/d/a/a/j/d;

    .line 1
    iget-object v0, v0, Lc/d/a/a/j/d;->n:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/j/n;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lc/d/a/a/j/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/a/j/e;",
            ")",
            "Ljava/util/Set<",
            "Lc/d/a/a/b;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Lc/d/a/a/j/e;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lc/d/a/a/j/e;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Lc/d/a/a/b;

    const-string v0, "proto"

    invoke-direct {p0, v0}, Lc/d/a/a/b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lc/d/a/a/j/n;->e:Lc/d/a/a/j/o;

    if-nez v0, :cond_1

    const-class v0, Lc/d/a/a/j/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/d/a/a/j/n;->e:Lc/d/a/a/j/o;

    if-nez v1, :cond_0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v1, Landroid/content/Context;

    new-instance v1, Lc/d/a/a/j/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc/d/a/a/j/d;-><init>(Landroid/content/Context;Lc/d/a/a/j/d$a;)V

    .line 3
    sput-object v1, Lc/d/a/a/j/n;->e:Lc/d/a/a/j/o;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
