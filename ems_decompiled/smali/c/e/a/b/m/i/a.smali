.class public Lc/e/a/b/m/i/a;
.super Lc/e/a/b/m/i/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/e/a/b/m/i/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/e/a/b/m/i/b;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/e/a/b/m/i/b$d;

    invoke-direct {v0, p1}, Lc/e/a/b/m/i/b$d;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/e/a/b/m/i/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget v1, p0, Lc/e/a/b/m/i/b;->e:I

    iget v2, p0, Lc/e/a/b/m/i/b;->f:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lc/e/a/b/m/i/b;->c:Lc/e/a/b/m/i/b$d;

    iput-object v2, v0, Lc/e/a/b/m/i/b$d;->c:Lc/e/a/b/m/i/b$d;

    iput-object v0, p0, Lc/e/a/b/m/i/b;->c:Lc/e/a/b/m/i/b$d;

    iget-object v3, p0, Lc/e/a/b/m/i/b;->d:Lc/e/a/b/m/i/b$d;

    if-nez v3, :cond_1

    iput-object v0, p0, Lc/e/a/b/m/i/b;->d:Lc/e/a/b/m/i/b$d;

    goto :goto_0

    :cond_1
    iput-object v0, v2, Lc/e/a/b/m/i/b$d;->b:Lc/e/a/b/m/i/b$d;

    :goto_0
    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lc/e/a/b/m/i/b;->e:I

    iget-object v1, p0, Lc/e/a/b/m/i/b;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/m/i/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lc/e/a/b/m/i/b;->l()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :catchall_0
    move-exception v1

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
