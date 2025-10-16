.class public abstract Lc/e/a/b/m/i/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/m/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public c:Lc/e/a/b/m/i/b$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/m/i/b$d<",
            "TE;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public e:Lc/e/a/b/m/i/b$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/m/i/b$d<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lc/e/a/b/m/i/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/m/i/b;)V
    .locals 1

    iput-object p1, p0, Lc/e/a/b/m/i/b$b;->f:Lc/e/a/b/m/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lc/e/a/b/m/i/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    move-object v0, p0

    check-cast v0, Lc/e/a/b/m/i/b$c;

    .line 1
    iget-object v0, v0, Lc/e/a/b/m/i/b$c;->g:Lc/e/a/b/m/i/b;

    iget-object v0, v0, Lc/e/a/b/m/i/b;->c:Lc/e/a/b/m/i/b$d;

    .line 2
    iput-object v0, p0, Lc/e/a/b/m/i/b$b;->c:Lc/e/a/b/m/i/b$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lc/e/a/b/m/i/b$d;->a:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lc/e/a/b/m/i/b$b;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lc/e/a/b/m/i/b$b;->c:Lc/e/a/b/m/i/b$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lc/e/a/b/m/i/b$b;->c:Lc/e/a/b/m/i/b$d;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lc/e/a/b/m/i/b$b;->e:Lc/e/a/b/m/i/b$d;

    iget-object v0, p0, Lc/e/a/b/m/i/b$b;->d:Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lc/e/a/b/m/i/b$b;->f:Lc/e/a/b/m/i/b;

    iget-object v1, v1, Lc/e/a/b/m/i/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lc/e/a/b/m/i/b$b;->c:Lc/e/a/b/m/i/b$d;

    .line 2
    :goto_0
    iget-object v3, v2, Lc/e/a/b/m/i/b$d;->c:Lc/e/a/b/m/i/b$d;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    .line 3
    :cond_0
    iget-object v5, v3, Lc/e/a/b/m/i/b$d;->a:Ljava/lang/Object;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_3

    move-object v2, p0

    check-cast v2, Lc/e/a/b/m/i/b$c;

    .line 4
    iget-object v2, v2, Lc/e/a/b/m/i/b$c;->g:Lc/e/a/b/m/i/b;

    iget-object v3, v2, Lc/e/a/b/m/i/b;->c:Lc/e/a/b/m/i/b$d;

    .line 5
    :goto_1
    iput-object v3, p0, Lc/e/a/b/m/i/b$b;->c:Lc/e/a/b/m/i/b$d;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v3, Lc/e/a/b/m/i/b$d;->a:Ljava/lang/Object;

    :goto_2
    iput-object v4, p0, Lc/e/a/b/m/i/b$b;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_3
    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 6
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lc/e/a/b/m/i/b$b;->e:Lc/e/a/b/m/i/b$d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lc/e/a/b/m/i/b$b;->e:Lc/e/a/b/m/i/b$d;

    iget-object v1, p0, Lc/e/a/b/m/i/b$b;->f:Lc/e/a/b/m/i/b;

    iget-object v1, v1, Lc/e/a/b/m/i/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, v0, Lc/e/a/b/m/i/b$d;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/e/a/b/m/i/b$b;->f:Lc/e/a/b/m/i/b;

    invoke-virtual {v2, v0}, Lc/e/a/b/m/i/b;->k(Lc/e/a/b/m/i/b$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
