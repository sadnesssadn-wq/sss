.class public final synthetic Lc/d/a/d/a/a/d/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/f;


# instance fields
.field public final synthetic a:Lc/d/a/d/a/a/d/w;

.field public final synthetic b:Lc/d/a/b/p/m;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/d/a/a/d/w;Lc/d/a/b/p/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/d/a/a/d/o;->a:Lc/d/a/d/a/a/d/w;

    iput-object p2, p0, Lc/d/a/d/a/a/d/o;->b:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/d/a/b/p/l;)V
    .locals 2

    iget-object p1, p0, Lc/d/a/d/a/a/d/o;->a:Lc/d/a/d/a/a/d/w;

    iget-object v0, p0, Lc/d/a/d/a/a/d/o;->b:Lc/d/a/b/p/m;

    .line 1
    iget-object v1, p1, Lc/d/a/d/a/a/d/w;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lc/d/a/d/a/a/d/w;->e:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
