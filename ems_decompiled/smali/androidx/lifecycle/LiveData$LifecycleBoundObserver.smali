.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$c;
.source ""

# interfaces
.implements Lb/o/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.c;",
        "Lb/o/h;"
    }
.end annotation


# instance fields
.field public final e:Lb/o/j;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lb/o/j;Lb/o/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/j;",
            "Lb/o/p<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$c;-><init>(Landroidx/lifecycle/LiveData;Lb/o/p;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/o/j;

    return-void
.end method


# virtual methods
.method public d(Lb/o/j;Lb/o/f$a;)V
    .locals 1

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/o/j;

    invoke-interface {p1}, Lb/o/j;->getLifecycle()Lb/o/f;

    move-result-object p1

    check-cast p1, Lb/o/k;

    .line 1
    iget-object p1, p1, Lb/o/k;->b:Lb/o/f$b;

    .line 2
    sget-object p2, Lb/o/f$b;->c:Lb/o/f$b;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$c;->a:Lb/o/p;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->h(Lb/o/p;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->k()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$c;->h(Z)V

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/o/j;

    invoke-interface {p2}, Lb/o/j;->getLifecycle()Lb/o/f;

    move-result-object p2

    check-cast p2, Lb/o/k;

    .line 3
    iget-object p2, p2, Lb/o/k;->b:Lb/o/f$b;

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/o/j;

    invoke-interface {v0}, Lb/o/j;->getLifecycle()Lb/o/f;

    move-result-object v0

    check-cast v0, Lb/o/k;

    const-string v1, "removeObserver"

    .line 1
    invoke-virtual {v0, v1}, Lb/o/k;->d(Ljava/lang/String;)V

    iget-object v0, v0, Lb/o/k;->a:Lb/c/a/b/a;

    invoke-virtual {v0, p0}, Lb/c/a/b/a;->n(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Lb/o/j;)Z
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/o/j;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/o/j;

    invoke-interface {v0}, Lb/o/j;->getLifecycle()Lb/o/f;

    move-result-object v0

    check-cast v0, Lb/o/k;

    .line 1
    iget-object v0, v0, Lb/o/k;->b:Lb/o/f$b;

    .line 2
    sget-object v1, Lb/o/f$b;->f:Lb/o/f$b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
