.class public final Lc/d/a/d/a/a/d/r;
.super Lc/d/a/d/a/a/d/n;
.source ""


# instance fields
.field public final synthetic d:Lc/d/a/d/a/a/d/w;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/d/w;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/d/a/a/d/r;->d:Lc/d/a/d/a/a/d/w;

    invoke-direct {p0}, Lc/d/a/d/a/a/d/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lc/d/a/d/a/a/d/r;->d:Lc/d/a/d/a/a/d/w;

    .line 1
    iget-object v1, v0, Lc/d/a/d/a/a/d/w;->m:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    .line 3
    invoke-virtual {v0, v3, v2}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lc/d/a/d/a/a/d/r;->d:Lc/d/a/d/a/a/d/w;

    .line 4
    iget-object v2, v0, Lc/d/a/d/a/a/d/w;->a:Landroid/content/Context;

    .line 5
    iget-object v0, v0, Lc/d/a/d/a/a/d/w;->l:Landroid/content/ServiceConnection;

    .line 6
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lc/d/a/d/a/a/d/r;->d:Lc/d/a/d/a/a/d/w;

    .line 7
    iput-boolean v1, v0, Lc/d/a/d/a/a/d/w;->g:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lc/d/a/d/a/a/d/w;->m:Landroid/os/IInterface;

    .line 9
    iput-object v1, v0, Lc/d/a/d/a/a/d/w;->l:Landroid/content/ServiceConnection;

    .line 10
    :cond_0
    iget-object v0, p0, Lc/d/a/d/a/a/d/r;->d:Lc/d/a/d/a/a/d/w;

    .line 11
    invoke-virtual {v0}, Lc/d/a/d/a/a/d/w;->c()V

    return-void
.end method
