.class public final Lc/d/a/b/k/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z = false
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MapsInitializer.class"
    .end annotation
.end field


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)I
    .locals 4

    const-class v0, Lc/d/a/b/k/b;

    monitor-enter v0

    :try_start_0
    const-string v1, "Context is null"

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lc/d/a/b/k/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    invoke-static {p0}, Lc/d/a/b/k/i/s;->a(Landroid/content/Context;)Lc/d/a/b/k/i/t;

    move-result-object p0
    :try_end_1
    .catch Lc/d/a/b/e/f; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Lc/d/a/b/k/i/t;->h()Lc/d/a/b/k/i/a;

    move-result-object v1

    const-string v3, "null reference"

    .line 1
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sput-object v1, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->g:Lc/d/a/b/k/i/a;

    .line 3
    invoke-interface {p0}, Lc/d/a/b/k/i/t;->Z()Lc/d/a/b/i/k/d;

    move-result-object p0

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h:Lc/d/a/b/i/k/d;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "null reference"

    .line 5
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    sput-object p0, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h:Lc/d/a/b/i/k/d;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 p0, 0x1

    .line 7
    :try_start_3
    sput-boolean p0, Lc/d/a/b/k/b;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return v2

    :catch_0
    move-exception p0

    :try_start_4
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, p0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception p0

    iget p0, p0, Lc/d/a/b/e/f;->c:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
