.class public Lc/d/a/a/j/q/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/q/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/j/q/k$a;
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/a/j/q/k$a;

.field public final b:Lc/d/a/a/j/q/i;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/d/a/a/j/q/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/a/a/j/q/i;)V
    .locals 1

    new-instance v0, Lc/d/a/a/j/q/k$a;

    invoke-direct {v0, p1}, Lc/d/a/a/j/q/k$a;-><init>(Landroid/content/Context;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/q/k;->c:Ljava/util/Map;

    iput-object v0, p0, Lc/d/a/a/j/q/k;->a:Lc/d/a/a/j/q/k$a;

    iput-object p2, p0, Lc/d/a/a/j/q/k;->b:Lc/d/a/a/j/q/i;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lc/d/a/a/j/q/m;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/d/a/a/j/q/k;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/a/j/q/k;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/a/j/q/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lc/d/a/a/j/q/k;->a:Lc/d/a/a/j/q/k$a;

    invoke-virtual {v0, p1}, Lc/d/a/a/j/q/k$a;->a(Ljava/lang/String;)Lc/d/a/a/j/q/d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lc/d/a/a/j/q/k;->b:Lc/d/a/a/j/q/i;

    .line 1
    iget-object v2, v1, Lc/d/a/a/j/q/i;->a:Landroid/content/Context;

    iget-object v3, v1, Lc/d/a/a/j/q/i;->b:Lc/d/a/a/j/v/a;

    iget-object v1, v1, Lc/d/a/a/j/q/i;->c:Lc/d/a/a/j/v/a;

    .line 2
    new-instance v4, Lc/d/a/a/j/q/c;

    invoke-direct {v4, v2, v3, v1, p1}, Lc/d/a/a/j/q/c;-><init>(Landroid/content/Context;Lc/d/a/a/j/v/a;Lc/d/a/a/j/v/a;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v4}, Lc/d/a/a/j/q/d;->create(Lc/d/a/a/j/q/h;)Lc/d/a/a/j/q/m;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/a/j/q/k;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
