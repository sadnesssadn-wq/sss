.class public final synthetic Lc/d/a/d/a/a/d/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lc/d/a/d/a/a/d/w;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/d/a/a/d/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/d/a/a/d/p;->a:Lc/d/a/d/a/a/d/w;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    iget-object v0, p0, Lc/d/a/d/a/a/d/p;->a:Lc/d/a/d/a/a/d/w;

    .line 1
    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "reportBinderDeath"

    invoke-virtual {v1, v4, v3}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/d/a/a/d/s;

    if-eqz v1, :cond_0

    iget-object v3, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "calling onBinderDied"

    invoke-virtual {v3, v4, v2}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {v1}, Lc/d/a/d/a/a/d/s;->zza()V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lc/d/a/d/a/a/d/w;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "%s : Binder has died."

    invoke-virtual {v1, v2, v3}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/d/a/a/d/n;

    .line 2
    new-instance v3, Landroid/os/RemoteException;

    iget-object v4, v0, Lc/d/a/d/a/a/d/w;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " : Binder has died."

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v2, v2, Lc/d/a/d/a/a/d/n;->c:Lc/d/a/b/p/m;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 4
    :cond_2
    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1
    invoke-virtual {v0}, Lc/d/a/d/a/a/d/w;->c()V

    return-void
.end method
