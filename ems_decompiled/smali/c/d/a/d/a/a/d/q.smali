.class public final Lc/d/a/d/a/a/d/q;
.super Lc/d/a/d/a/a/d/n;
.source ""


# instance fields
.field public final synthetic d:Lc/d/a/d/a/a/d/n;

.field public final synthetic e:Lc/d/a/d/a/a/d/w;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/d/w;Lc/d/a/b/p/m;Lc/d/a/d/a/a/d/n;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/d/a/a/d/q;->e:Lc/d/a/d/a/a/d/w;

    iput-object p3, p0, Lc/d/a/d/a/a/d/q;->d:Lc/d/a/d/a/a/d/n;

    invoke-direct {p0, p2}, Lc/d/a/d/a/a/d/n;-><init>(Lc/d/a/b/p/m;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lc/d/a/d/a/a/d/q;->e:Lc/d/a/d/a/a/d/w;

    iget-object v1, p0, Lc/d/a/d/a/a/d/q;->d:Lc/d/a/d/a/a/d/n;

    .line 1
    iget-object v2, v0, Lc/d/a/d/a/a/d/w;->m:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lc/d/a/d/a/a/d/w;->g:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Initiate binding to the service."

    invoke-virtual {v2, v5, v4}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, v0, Lc/d/a/d/a/a/d/w;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc/d/a/d/a/a/d/v;

    invoke-direct {v1, v0}, Lc/d/a/d/a/a/d/v;-><init>(Lc/d/a/d/a/a/d/w;)V

    iput-object v1, v0, Lc/d/a/d/a/a/d/w;->l:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lc/d/a/d/a/a/d/w;->g:Z

    iget-object v4, v0, Lc/d/a/d/a/a/d/w;->a:Landroid/content/Context;

    iget-object v5, v0, Lc/d/a/d/a/a/d/w;->h:Landroid/content/Intent;

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Failed to bind to the service."

    invoke-virtual {v1, v4, v2}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iput-boolean v3, v0, Lc/d/a/d/a/a/d/w;->g:Z

    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/d/a/a/d/n;

    new-instance v3, Lc/d/a/d/a/a/d/x;

    invoke-direct {v3}, Lc/d/a/d/a/a/d/x;-><init>()V

    .line 2
    iget-object v2, v2, Lc/d/a/d/a/a/d/n;->c:Lc/d/a/b/p/m;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_2
    iget-boolean v2, v0, Lc/d/a/d/a/a/d/w;->g:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Waiting to bind to the service."

    invoke-virtual {v2, v4, v3}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lc/d/a/d/a/a/d/n;->run()V

    :cond_4
    :goto_1
    return-void
.end method
