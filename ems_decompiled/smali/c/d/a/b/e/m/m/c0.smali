.class public final Lc/d/a/b/e/m/m/c0;
.super Lc/d/a/b/n/b/c;
.source ""


# instance fields
.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/d/a/b/e/m/m/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/x;)V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/n/b/c;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/d/a/b/e/m/m/c0;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final w(Lc/d/a/b/n/b/l;)V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/e/m/m/c0;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/x;

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v1, v0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    .line 2
    new-instance v2, Lc/d/a/b/e/m/m/f0;

    invoke-direct {v2, v0, v0, p1}, Lc/d/a/b/e/m/m/f0;-><init>(Lc/d/a/b/e/m/m/l0;Lc/d/a/b/e/m/m/x;Lc/d/a/b/n/b/l;)V

    .line 3
    iget-object p1, v1, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, v1, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
