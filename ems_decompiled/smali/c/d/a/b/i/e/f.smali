.class public final synthetic Lc/d/a/b/i/e/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/m;


# instance fields
.field public final a:Lc/d/a/b/i/e/e;

.field public final b:Lc/d/a/b/i/e/b;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/e/e;Lc/d/a/b/i/e/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/e/f;->a:Lc/d/a/b/i/e/e;

    iput-object p2, p0, Lc/d/a/b/i/e/f;->b:Lc/d/a/b/i/e/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lc/d/a/b/i/e/f;->a:Lc/d/a/b/i/e/e;

    iget-object v1, p0, Lc/d/a/b/i/e/f;->b:Lc/d/a/b/i/e/b;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gms:phenotype:phenotype_flag:debug_disable_caching"

    invoke-static {v2}, Lc/d/a/b/i/e/e;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lc/d/a/b/i/e/b;->a()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lc/d/a/b/i/e/b;->e:Ljava/util/Map;

    :goto_0
    if-nez v2, :cond_2

    iget-object v3, v1, Lc/d/a/b/i/e/b;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v1, Lc/d/a/b/i/e/b;->e:Ljava/util/Map;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lc/d/a/b/i/e/b;->a()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lc/d/a/b/i/e/b;->e:Ljava/util/Map;

    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 2
    :goto_2
    iget-object v0, v0, Lc/d/a/b/i/e/e;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
