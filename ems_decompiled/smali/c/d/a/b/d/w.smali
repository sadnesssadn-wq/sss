.class public final synthetic Lc/d/a/b/d/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# instance fields
.field public final synthetic a:Lc/d/a/b/d/c;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/b/d/c;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/d/w;->a:Lc/d/a/b/d/c;

    iput-object p2, p0, Lc/d/a/b/d/w;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lc/d/a/b/d/w;->a:Lc/d/a/b/d/c;

    iget-object v1, p0, Lc/d/a/b/d/w;->b:Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lc/d/a/b/p/l;->o()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "google.messenger"

    .line 2
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {v0, v1}, Lc/d/a/b/d/c;->a(Landroid/os/Bundle;)Lc/d/a/b/p/l;

    move-result-object p1

    sget-object v0, Lc/d/a/b/d/b0;->a:Lc/d/a/b/d/b0;

    sget-object v1, Lc/d/a/b/d/z;->a:Lc/d/a/b/d/z;

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/p/l;->q(Ljava/util/concurrent/Executor;Lc/d/a/b/p/k;)Lc/d/a/b/p/l;

    move-result-object p1

    :goto_1
    return-object p1
.end method
