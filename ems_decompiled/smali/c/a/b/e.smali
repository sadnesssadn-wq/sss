.class public Lc/a/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/e$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/b/e$a;

    invoke-direct {v0, p0, p1}, Lc/a/b/e$a;-><init>(Lc/a/b/e;Landroid/os/Handler;)V

    iput-object v0, p0, Lc/a/b/e;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lc/a/b/j;Lc/a/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/j<",
            "*>;",
            "Lc/a/b/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/a/b/j;->markDelivered()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/a/b/e$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lc/a/b/e$b;-><init>(Lc/a/b/j;Lc/a/b/l;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
