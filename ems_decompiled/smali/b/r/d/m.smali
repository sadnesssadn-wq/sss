.class public abstract Lb/r/d/m;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$a0;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public final mDiffer:Lb/r/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/d/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListener:Lb/r/d/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/d/d$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/r/d/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/r/d/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    new-instance v0, Lb/r/d/m$a;

    invoke-direct {v0, p0}, Lb/r/d/m$a;-><init>(Lb/r/d/m;)V

    iput-object v0, p0, Lb/r/d/m;->mListener:Lb/r/d/d$b;

    new-instance v1, Lb/r/d/d;

    new-instance v2, Lb/r/d/b;

    invoke-direct {v2, p0}, Lb/r/d/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$e;)V

    invoke-direct {v1, v2, p1}, Lb/r/d/d;-><init>(Lb/r/d/n;Lb/r/d/c;)V

    iput-object v1, p0, Lb/r/d/m;->mDiffer:Lb/r/d/d;

    .line 1
    iget-object p1, v1, Lb/r/d/d;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lb/r/d/h$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/r/d/h$d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    new-instance v0, Lb/r/d/m$a;

    invoke-direct {v0, p0}, Lb/r/d/m$a;-><init>(Lb/r/d/m;)V

    iput-object v0, p0, Lb/r/d/m;->mListener:Lb/r/d/d$b;

    new-instance v1, Lb/r/d/d;

    new-instance v2, Lb/r/d/b;

    invoke-direct {v2, p0}, Lb/r/d/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$e;)V

    new-instance v3, Lb/r/d/c$a;

    invoke-direct {v3, p1}, Lb/r/d/c$a;-><init>(Lb/r/d/h$d;)V

    .line 2
    iget-object p1, v3, Lb/r/d/c$a;->a:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_1

    sget-object p1, Lb/r/d/c$a;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v4, Lb/r/d/c$a;->d:Ljava/util/concurrent/Executor;

    if-nez v4, :cond_0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    sput-object v4, Lb/r/d/c$a;->d:Ljava/util/concurrent/Executor;

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lb/r/d/c$a;->d:Ljava/util/concurrent/Executor;

    iput-object p1, v3, Lb/r/d/c$a;->a:Ljava/util/concurrent/Executor;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    new-instance p1, Lb/r/d/c;

    const/4 v4, 0x0

    iget-object v5, v3, Lb/r/d/c$a;->a:Ljava/util/concurrent/Executor;

    iget-object v3, v3, Lb/r/d/c$a;->b:Lb/r/d/h$d;

    invoke-direct {p1, v4, v5, v3}, Lb/r/d/c;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lb/r/d/h$d;)V

    .line 3
    invoke-direct {v1, v2, p1}, Lb/r/d/d;-><init>(Lb/r/d/n;Lb/r/d/c;)V

    iput-object v1, p0, Lb/r/d/m;->mDiffer:Lb/r/d/d;

    .line 4
    iget-object p1, v1, Lb/r/d/d;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/r/d/m;->mDiffer:Lb/r/d/d;

    .line 1
    iget-object v0, v0, Lb/r/d/d;->f:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lb/r/d/m;->mDiffer:Lb/r/d/d;

    .line 1
    iget-object v0, v0, Lb/r/d/d;->f:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lb/r/d/m;->mDiffer:Lb/r/d/d;

    .line 1
    iget-object v0, v0, Lb/r/d/d;->f:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/r/d/m;->mDiffer:Lb/r/d/d;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lb/r/d/d;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lb/r/d/m;->mDiffer:Lb/r/d/d;

    invoke-virtual {v0, p1, p2}, Lb/r/d/d;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
