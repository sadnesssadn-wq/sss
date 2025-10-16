.class public Le/a/a/j/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic c:Le/a/a/j/a;


# direct methods
.method public constructor <init>(Le/a/a/j/a;Le/a/a/j/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/j/a$b;->c:Le/a/a/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    iget-object v0, p0, Le/a/a/j/a$b;->c:Le/a/a/j/a;

    .line 1
    iget-object v0, v0, Le/a/a/j/a;->m:Le/a/a/j/a$c;

    .line 2
    iget-object v1, v0, Le/a/a/j/a$c;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Le/a/a/j/a$c;->i:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    const/4 p2, 0x0

    iput-object p2, v0, Le/a/a/j/a$c;->i:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object p2, v0, Le/a/a/j/a$c;->j:Le/a/a/j/a;

    .line 3
    iget-object p2, p2, Le/a/a/j/a;->n:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "OpenCameraSource"

    const-string p2, "Skipping frame.  Could not find ByteBuffer associated with the image data from the camera."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Le/a/a/j/a$c;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Le/a/a/j/a$c;->g:J

    iget p2, v0, Le/a/a/j/a$c;->h:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Le/a/a/j/a$c;->h:I

    iget-object p2, v0, Le/a/a/j/a$c;->j:Le/a/a/j/a;

    .line 5
    iget-object p2, p2, Le/a/a/j/a;->n:Ljava/util/Map;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, v0, Le/a/a/j/a$c;->i:Ljava/nio/ByteBuffer;

    iget-object p1, v0, Le/a/a/j/a$c;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
