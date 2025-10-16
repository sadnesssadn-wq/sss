.class public final synthetic Lc/d/b/u/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# instance fields
.field public synthetic a:Lc/d/b/u/k0;

.field public synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lc/d/b/u/k0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/u/j0;->a:Lc/d/b/u/k0;

    iput-object p2, p0, Lc/d/b/u/j0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/d/b/u/j0;->a:Lc/d/b/u/k0;

    iget-object v1, p0, Lc/d/b/u/j0;->b:Ljava/lang/String;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lc/d/b/u/k0;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
