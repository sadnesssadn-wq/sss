.class public Le/a/a/j/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public c:Lc/d/a/b/q/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/q/a<",
            "*>;"
        }
    .end annotation
.end field

.field public d:J

.field public final e:Ljava/lang/Object;

.field public f:Z

.field public g:J

.field public h:I

.field public i:Ljava/nio/ByteBuffer;

.field public final synthetic j:Le/a/a/j/a;


# direct methods
.method public constructor <init>(Le/a/a/j/a;Lc/d/a/b/q/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/q/a<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/a/j/a$c;->j:Le/a/a/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/a/j/a$c;->d:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/j/a$c;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/a/a/j/a$c;->f:Z

    const/4 p1, 0x0

    iput p1, p0, Le/a/a/j/a$c;->h:I

    iput-object p2, p0, Le/a/a/j/a$c;->c:Lc/d/a/b/q/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    iget-object v0, p0, Le/a/a/j/a$c;->c:Lc/d/a/b/q/a;

    check-cast v0, Lc/d/a/b/q/e/b;

    .line 1
    iget-object v1, v0, Lc/d/a/b/q/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lc/d/a/b/q/a;->b:Lc/d/a/b/q/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v2, Lc/d/a/b/q/c;

    :try_start_1
    invoke-virtual {v2}, Lc/d/a/b/q/c;->b()V

    iput-object v3, v0, Lc/d/a/b/q/a;->b:Lc/d/a/b/q/a$b;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2
    iget-object v0, v0, Lc/d/a/b/q/e/b;->c:Lc/d/a/b/i/n/k4;

    .line 3
    iget-object v2, v0, Lc/d/a/b/i/n/f5;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v1, v0, Lc/d/a/b/i/n/f5;->h:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lc/d/a/b/i/n/f5;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lc/d/a/b/i/n/f5;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/n/p3;

    const-string v4, "null reference"

    .line 5
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, Lc/d/a/b/i/n/p3;->zza()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_4
    iget-object v0, v0, Lc/d/a/b/i/n/f5;->c:Ljava/lang/String;

    const-string v4, "Could not finalize native handle"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8
    iput-object v3, p0, Le/a/a/j/a$c;->c:Lc/d/a/b/q/a;

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 10
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public run()V
    .locals 8

    :goto_0
    iget-object v0, p0, Le/a/a/j/a$c;->e:Ljava/lang/Object;

    monitor-enter v0

    :goto_1
    :try_start_0
    iget-boolean v1, p0, Le/a/a/j/a$c;->f:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Le/a/a/j/a$c;->i:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_0

    :try_start_1
    iget-object v1, p0, Le/a/a/j/a$c;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "OpenCameraSource"

    const-string v3, "Frame processing loop terminated."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-void

    :cond_0
    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 1
    :cond_1
    new-instance v1, Lc/d/a/b/q/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lc/d/a/b/q/b;-><init>(Lc/d/a/b/q/g;)V

    .line 2
    iget-object v3, p0, Le/a/a/j/a$c;->i:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Le/a/a/j/a$c;->j:Le/a/a/j/a;

    .line 3
    iget-object v4, v4, Le/a/a/j/a;->f:Lc/d/a/b/e/o/a;

    .line 4
    iget v5, v4, Lc/d/a/b/e/o/a;->a:I

    .line 5
    iget v4, v4, Lc/d/a/b/e/o/a;->b:I

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    mul-int v7, v5, v4

    if-lt v6, v7, :cond_3

    .line 7
    iput-object v3, v1, Lc/d/a/b/q/b;->b:Ljava/nio/ByteBuffer;

    .line 8
    iget-object v6, v1, Lc/d/a/b/q/b;->a:Lc/d/a/b/q/b$a;

    .line 9
    iput v5, v6, Lc/d/a/b/q/b$a;->a:I

    .line 10
    iput v4, v6, Lc/d/a/b/q/b$a;->b:I

    const/16 v4, 0x11

    .line 11
    iput v4, v6, Lc/d/a/b/q/b$a;->f:I

    .line 12
    iget v4, p0, Le/a/a/j/a$c;->h:I

    .line 13
    iput v4, v6, Lc/d/a/b/q/b$a;->c:I

    .line 14
    iget-wide v4, p0, Le/a/a/j/a$c;->g:J

    .line 15
    iput-wide v4, v6, Lc/d/a/b/q/b$a;->d:J

    .line 16
    iget-object v4, p0, Le/a/a/j/a$c;->j:Le/a/a/j/a;

    .line 17
    iget v4, v4, Le/a/a/j/a;->e:I

    .line 18
    iput v4, v6, Lc/d/a/b/q/b$a;->e:I

    if-eqz v3, :cond_2

    .line 19
    iget-object v3, p0, Le/a/a/j/a$c;->i:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Le/a/a/j/a$c;->i:Ljava/nio/ByteBuffer;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Le/a/a/j/a$c;->c:Lc/d/a/b/q/a;

    invoke-virtual {v0, v1}, Lc/d/a/b/q/a;->a(Lc/d/a/b/q/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Le/a/a/j/a$c;->j:Le/a/a/j/a;

    .line 20
    iget-object v0, v0, Le/a/a/j/a;->c:Landroid/hardware/Camera;

    .line 21
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    const-string v1, "OpenCameraSource"

    const-string v2, "Exception thrown from receiver."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Le/a/a/j/a$c;->j:Le/a/a/j/a;

    .line 22
    iget-object v0, v0, Le/a/a/j/a;->c:Landroid/hardware/Camera;

    .line 23
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Le/a/a/j/a$c;->j:Le/a/a/j/a;

    .line 24
    iget-object v1, v1, Le/a/a/j/a;->c:Landroid/hardware/Camera;

    .line 25
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    throw v0

    .line 26
    :cond_2
    :try_start_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing image data.  Call either setBitmap or setImageData to specify the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid image data size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null image data supplied."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
