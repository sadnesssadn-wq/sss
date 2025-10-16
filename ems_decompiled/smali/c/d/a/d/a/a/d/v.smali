.class public final Lc/d/a/d/a/a/d/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lc/d/a/d/a/a/d/w;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/d/a/a/d/w;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    .line 1
    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    .line 2
    invoke-virtual {v0, p1, v1}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    new-instance v0, Lc/d/a/d/a/a/d/t;

    invoke-direct {v0, p0, p2}, Lc/d/a/d/a/a/d/t;-><init>(Lc/d/a/d/a/a/d/v;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Lc/d/a/d/a/a/d/w;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    .line 1
    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    .line 2
    invoke-virtual {v0, p1, v1}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    new-instance v0, Lc/d/a/d/a/a/d/u;

    invoke-direct {v0, p0}, Lc/d/a/d/a/a/d/u;-><init>(Lc/d/a/d/a/a/d/v;)V

    invoke-virtual {p1}, Lc/d/a/d/a/a/d/w;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
