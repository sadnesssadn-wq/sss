.class public final synthetic Lc/d/b/u/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic c:Lc/d/b/u/g;

.field public synthetic d:Landroid/content/Intent;

.field public synthetic e:Lc/d/a/b/p/m;


# direct methods
.method public synthetic constructor <init>(Lc/d/b/u/g;Landroid/content/Intent;Lc/d/a/b/p/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/u/e;->c:Lc/d/b/u/g;

    iput-object p2, p0, Lc/d/b/u/e;->d:Landroid/content/Intent;

    iput-object p3, p0, Lc/d/b/u/e;->e:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc/d/b/u/e;->c:Lc/d/b/u/g;

    iget-object v1, p0, Lc/d/b/u/e;->d:Landroid/content/Intent;

    iget-object v2, p0, Lc/d/b/u/e;->e:Lc/d/a/b/p/m;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lc/d/b/u/g;->b(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, v2, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {v0, v3}, Lc/d/a/b/p/j0;->t(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v2, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {v1, v3}, Lc/d/a/b/p/j0;->t(Ljava/lang/Object;)V

    .line 3
    throw v0
.end method
