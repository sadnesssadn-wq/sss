.class public final Lc/d/a/d/a/a/d/t;
.super Lc/d/a/d/a/a/d/n;
.source ""


# instance fields
.field public final synthetic d:Landroid/os/IBinder;

.field public final synthetic e:Lc/d/a/d/a/a/d/v;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/d/v;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/d/a/a/d/t;->e:Lc/d/a/d/a/a/d/v;

    iput-object p2, p0, Lc/d/a/d/a/a/d/t;->d:Landroid/os/IBinder;

    invoke-direct {p0}, Lc/d/a/d/a/a/d/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lc/d/a/d/a/a/d/t;->e:Lc/d/a/d/a/a/d/v;

    iget-object v0, v0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    iget-object v1, p0, Lc/d/a/d/a/a/d/t;->d:Landroid/os/IBinder;

    .line 1
    sget v2, Lc/d/a/d/a/a/d/g;->c:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lc/d/a/d/a/a/d/h;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lc/d/a/d/a/a/d/h;

    goto :goto_0

    :cond_1
    new-instance v2, Lc/d/a/d/a/a/d/f;

    invoke-direct {v2, v1}, Lc/d/a/d/a/a/d/f;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    .line 2
    :goto_0
    iput-object v1, v0, Lc/d/a/d/a/a/d/w;->m:Landroid/os/IInterface;

    .line 3
    iget-object v0, p0, Lc/d/a/d/a/a/d/t;->e:Lc/d/a/d/a/a/d/v;

    iget-object v0, v0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    .line 4
    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath"

    invoke-virtual {v1, v4, v3}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->m:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lc/d/a/d/a/a/d/w;->j:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath failed"

    invoke-virtual {v0, v1, v4, v3}, Lc/d/a/d/a/a/d/m;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    :goto_1
    iget-object v0, p0, Lc/d/a/d/a/a/d/t;->e:Lc/d/a/d/a/a/d/v;

    iget-object v0, v0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    .line 6
    iput-boolean v2, v0, Lc/d/a/d/a/a/d/w;->g:Z

    .line 7
    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->d:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lc/d/a/d/a/a/d/t;->e:Lc/d/a/d/a/a/d/v;

    iget-object v0, v0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    .line 9
    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->d:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
