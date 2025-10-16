.class public Lb/p/b/c$b;
.super Lb/p/b/c$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/p/b/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/p/b/c$g<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lb/p/b/c;


# direct methods
.method public constructor <init>(Lb/p/b/c;)V
    .locals 0

    iput-object p1, p0, Lb/p/b/c$b;->b:Lb/p/b/c;

    invoke-direct {p0}, Lb/p/b/c$g;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lb/p/b/c$b;->b:Lb/p/b/c;

    iget-object v0, v0, Lb/p/b/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lb/p/b/c$b;->b:Lb/p/b/c;

    iget-object v3, p0, Lb/p/b/c$g;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lb/p/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/p/b/c$b;->b:Lb/p/b/c;

    invoke-virtual {v0, v2}, Lb/p/b/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    iget-object v3, p0, Lb/p/b/c$b;->b:Lb/p/b/c;

    iget-object v3, v3, Lb/p/b/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lb/p/b/c$b;->b:Lb/p/b/c;

    invoke-virtual {v1, v2}, Lb/p/b/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
