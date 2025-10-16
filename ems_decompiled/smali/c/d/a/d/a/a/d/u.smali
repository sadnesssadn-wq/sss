.class public final Lc/d/a/d/a/a/d/u;
.super Lc/d/a/d/a/a/d/n;
.source ""


# instance fields
.field public final synthetic d:Lc/d/a/d/a/a/d/v;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/d/v;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/d/a/a/d/u;->d:Lc/d/a/d/a/a/d/v;

    invoke-direct {p0}, Lc/d/a/d/a/a/d/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lc/d/a/d/a/a/d/u;->d:Lc/d/a/d/a/a/d/v;

    iget-object v0, v0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    .line 1
    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "unlinkToDeath"

    invoke-virtual {v1, v4, v3}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->m:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->j:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2
    iget-object v0, p0, Lc/d/a/d/a/a/d/u;->d:Lc/d/a/d/a/a/d/v;

    iget-object v0, v0, Lc/d/a/d/a/a/d/v;->a:Lc/d/a/d/a/a/d/w;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lc/d/a/d/a/a/d/w;->m:Landroid/os/IInterface;

    .line 4
    iput-boolean v2, v0, Lc/d/a/d/a/a/d/w;->g:Z

    return-void
.end method
