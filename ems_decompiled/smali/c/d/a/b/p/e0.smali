.class public final Lc/d/a/b/p/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/e;
.implements Lc/d/a/b/p/g;
.implements Lc/d/a/b/p/h;
.implements Lc/d/a/b/p/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/d/a/b/p/e;",
        "Lc/d/a/b/p/g;",
        "Lc/d/a/b/p/h<",
        "TTContinuationResult;>;",
        "Lc/d/a/b/p/g0<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lc/d/a/b/p/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/k<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field public final c:Lc/d/a/b/p/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/j0<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/k;Lc/d/a/b/p/j0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lc/d/a/b/p/k<",
            "TTResult;TTContinuationResult;>;",
            "Lc/d/a/b/p/j0<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/p/e0;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lc/d/a/b/p/e0;->b:Lc/d/a/b/p/k;

    iput-object p3, p0, Lc/d/a/b/p/e0;->c:Lc/d/a/b/p/j0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/e0;->c:Lc/d/a/b/p/j0;

    invoke-virtual {v0, p1}, Lc/d/a/b/p/j0;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lc/d/a/b/p/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/l<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/e0;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/d/a/b/p/d0;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/p/d0;-><init>(Lc/d/a/b/p/e0;Lc/d/a/b/p/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/p/e0;->c:Lc/d/a/b/p/j0;

    invoke-virtual {v0, p1}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onCanceled()V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/p/e0;->c:Lc/d/a/b/p/j0;

    invoke-virtual {v0}, Lc/d/a/b/p/j0;->u()Z

    return-void
.end method
