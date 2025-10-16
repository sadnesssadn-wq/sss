.class public Lc/d/b/u/z0;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/b/u/z0$a;
    }
.end annotation


# instance fields
.field public final c:Lc/d/b/u/z0$a;


# direct methods
.method public constructor <init>(Lc/d/b/u/z0$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lc/d/b/u/z0;->c:Lc/d/b/u/z0$a;

    return-void
.end method


# virtual methods
.method public a(Lc/d/b/u/c1$a;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "service received new intent via bind strategy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lc/d/b/u/z0;->c:Lc/d/b/u/z0$a;

    iget-object v1, p1, Lc/d/b/u/c1$a;->a:Landroid/content/Intent;

    check-cast v0, Lc/d/b/u/g$a;

    .line 1
    iget-object v0, v0, Lc/d/b/u/g$a;->a:Lc/d/b/u/g;

    .line 2
    invoke-virtual {v0, v1}, Lc/d/b/u/g;->e(Landroid/content/Intent;)Lc/d/a/b/p/l;

    move-result-object v0

    .line 3
    sget-object v1, Lc/d/b/u/y0;->a:Lc/d/b/u/y0;

    new-instance v2, Lc/d/b/u/x0;

    invoke-direct {v2, p1}, Lc/d/b/u/x0;-><init>(Lc/d/b/u/c1$a;)V

    check-cast v0, Lc/d/a/b/p/j0;

    .line 4
    iget-object p1, v0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v3, Lc/d/a/b/p/x;

    .line 5
    sget v4, Lc/d/a/b/p/k0;->a:I

    .line 6
    invoke-direct {v3, v1, v2}, Lc/d/a/b/p/x;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)V

    invoke-virtual {p1, v3}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {v0}, Lc/d/a/b/p/j0;->x()V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
