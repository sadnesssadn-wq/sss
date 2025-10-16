.class public final Lc/d/a/d/a/a/n;
.super Lc/d/a/d/a/a/d/n;
.source ""


# instance fields
.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lc/d/a/b/p/m;

.field public final synthetic f:Lc/d/a/d/a/a/p;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/p;Lc/d/a/b/p/m;Ljava/lang/String;Lc/d/a/b/p/m;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/d/a/a/n;->f:Lc/d/a/d/a/a/p;

    iput-object p3, p0, Lc/d/a/d/a/a/n;->d:Ljava/lang/String;

    iput-object p4, p0, Lc/d/a/d/a/a/n;->e:Lc/d/a/b/p/m;

    invoke-direct {p0, p2}, Lc/d/a/d/a/a/d/n;-><init>(Lc/d/a/b/p/m;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lc/d/a/d/a/a/n;->f:Lc/d/a/d/a/a/p;

    iget-object v1, v0, Lc/d/a/d/a/a/p;->a:Lc/d/a/d/a/a/d/w;

    .line 1
    iget-object v1, v1, Lc/d/a/d/a/a/d/w;->m:Landroid/os/IInterface;

    .line 2
    iget-object v2, v0, Lc/d/a/d/a/a/p;->b:Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lc/d/a/d/a/a/n;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lc/d/a/d/a/a/p;->a(Lc/d/a/d/a/a/p;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Lc/d/a/d/a/a/o;

    iget-object v4, p0, Lc/d/a/d/a/a/n;->f:Lc/d/a/d/a/a/p;

    iget-object v5, p0, Lc/d/a/d/a/a/n;->e:Lc/d/a/b/p/m;

    iget-object v6, p0, Lc/d/a/d/a/a/n;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lc/d/a/d/a/a/o;-><init>(Lc/d/a/d/a/a/p;Lc/d/a/b/p/m;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0, v3}, Lc/d/a/d/a/a/d/h;->f0(Ljava/lang/String;Landroid/os/Bundle;Lc/d/a/d/a/a/d/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lc/d/a/d/a/a/p;->e:Lc/d/a/d/a/a/d/m;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    iget-object v4, p0, Lc/d/a/d/a/a/n;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "requestUpdateInfo(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lc/d/a/d/a/a/d/m;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lc/d/a/d/a/a/n;->e:Lc/d/a/b/p/m;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void
.end method
