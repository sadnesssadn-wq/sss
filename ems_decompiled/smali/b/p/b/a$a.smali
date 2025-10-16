.class public final Lb/p/b/a$a;
.super Lb/p/b/c;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/p/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/p/b/c<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final l:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic m:Lb/p/b/a;


# direct methods
.method public constructor <init>(Lb/p/b/a;)V
    .locals 1

    iput-object p1, p0, Lb/p/b/a$a;->m:Lb/p/b/a;

    invoke-direct {p0}, Lb/p/b/c;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lb/p/b/a$a;->l:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    .line 1
    iget-object p1, p0, Lb/p/b/a$a;->m:Lb/p/b/a;

    invoke-virtual {p1}, Lb/p/b/a;->e()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lb/p/b/a$a;->m:Lb/p/b/a;

    .line 1
    iget-object v0, p1, Lb/p/b/a;->i:Lb/p/b/a$a;

    if-ne v0, p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lb/p/b/a;->j:J

    const/4 v0, 0x0

    iput-object v0, p1, Lb/p/b/a;->i:Lb/p/b/a$a;

    invoke-virtual {p1}, Lb/p/b/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :cond_0
    iget-object p1, p0, Lb/p/b/a$a;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lb/p/b/a$a;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lb/p/b/a$a;->m:Lb/p/b/a;

    invoke-virtual {v0, p0, p1}, Lb/p/b/a;->c(Lb/p/b/a$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb/p/b/a$a;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lb/p/b/a$a;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lb/p/b/a$a;->m:Lb/p/b/a;

    invoke-virtual {v0}, Lb/p/b/a;->d()V

    return-void
.end method
