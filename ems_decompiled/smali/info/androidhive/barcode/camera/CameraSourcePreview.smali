.class public Linfo/androidhive/barcode/camera/CameraSourcePreview;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/androidhive/barcode/camera/CameraSourcePreview$b;
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public d:Landroid/view/SurfaceView;

.field public e:Z

.field public f:Z

.field public g:Le/a/a/j/a;

.field public h:Linfo/androidhive/barcode/camera/GraphicOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->c:Landroid/content/Context;

    const/4 p2, 0x0

    iput-boolean p2, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->e:Z

    iput-boolean p2, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->f:Z

    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->d:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Linfo/androidhive/barcode/camera/CameraSourcePreview$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Linfo/androidhive/barcode/camera/CameraSourcePreview$b;-><init>(Linfo/androidhive/barcode/camera/CameraSourcePreview;Linfo/androidhive/barcode/camera/CameraSourcePreview$a;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->d:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const-string v0, "CameraSourcePreview"

    const-string v2, "isPortraitMode returning false by default"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final b()V
    .locals 5

    iget-boolean v0, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->g:Le/a/a/j/a;

    iget-object v1, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1
    iget-object v2, v0, Le/a/a/j/a;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Le/a/a/j/a;->c:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Le/a/a/j/a;->a()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, v0, Le/a/a/j/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v1, v0, Le/a/a/j/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    new-instance v1, Ljava/lang/Thread;

    iget-object v3, v0, Le/a/a/j/a;->m:Le/a/a/j/a$c;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Le/a/a/j/a;->l:Ljava/lang/Thread;

    iget-object v1, v0, Le/a/a/j/a;->m:Le/a/a/j/a$c;

    const/4 v3, 0x1

    .line 2
    iget-object v4, v1, Le/a/a/j/a$c;->e:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-boolean v3, v1, Le/a/a/j/a$c;->f:Z

    iget-object v1, v1, Le/a/a/j/a$c;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    iget-object v0, v0, Le/a/a/j/a;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4
    iget-object v0, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->h:Linfo/androidhive/barcode/camera/GraphicOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->g:Le/a/a/j/a;

    .line 5
    iget-object v0, v0, Le/a/a/j/a;->f:Lc/d/a/b/e/o/a;

    .line 6
    iget v1, v0, Lc/d/a/b/e/o/a;->a:I

    .line 7
    iget v2, v0, Lc/d/a/b/e/o/a;->b:I

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9
    iget v2, v0, Lc/d/a/b/e/o/a;->a:I

    .line 10
    iget v0, v0, Lc/d/a/b/e/o/a;->b:I

    .line 11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Linfo/androidhive/barcode/camera/CameraSourcePreview;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->h:Linfo/androidhive/barcode/camera/GraphicOverlay;

    iget-object v3, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->g:Le/a/a/j/a;

    .line 12
    iget v3, v3, Le/a/a/j/a;->d:I

    .line 13
    invoke-virtual {v2, v1, v0, v3}, Linfo/androidhive/barcode/camera/GraphicOverlay;->a(III)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->h:Linfo/androidhive/barcode/camera/GraphicOverlay;

    iget-object v3, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->g:Le/a/a/j/a;

    .line 14
    iget v3, v3, Le/a/a/j/a;->d:I

    .line 15
    invoke-virtual {v2, v0, v1, v3}, Linfo/androidhive/barcode/camera/GraphicOverlay;->a(III)V

    :goto_1
    iget-object v0, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->h:Linfo/androidhive/barcode/camera/GraphicOverlay;

    .line 16
    iget-object v1, v0, Linfo/androidhive/barcode/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, v0, Linfo/androidhive/barcode/camera/GraphicOverlay;->i:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->e:Z

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 18
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :catchall_2
    move-exception v0

    .line 19
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->g:Le/a/a/j/a;

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, v1, Le/a/a/j/a;->f:Lc/d/a/b/e/o/a;

    if-eqz v1, :cond_0

    .line 2
    iget p1, v1, Lc/d/a/b/e/o/a;->a:I

    .line 3
    iget v0, v1, Lc/d/a/b/e/o/a;->b:I

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 4
    invoke-virtual {p0}, Linfo/androidhive/barcode/camera/CameraSourcePreview;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    move v2, v0

    move v0, p1

    move p1, v2

    :cond_1
    int-to-float p2, p4

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p3, v0

    mul-float p2, p2, p3

    float-to-int p2, p2

    invoke-virtual {p0}, Linfo/androidhive/barcode/camera/CameraSourcePreview;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-float p2, p5

    div-float/2addr p2, p3

    mul-float p2, p2, p1

    float-to-int p4, p2

    goto :goto_0

    :cond_2
    move p5, p2

    :goto_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Linfo/androidhive/barcode/camera/CameraSourcePreview;->b()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "Could not start camera source."

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "Do not have permission to start the camera"

    :goto_2
    const-string p3, "CameraSourcePreview"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
