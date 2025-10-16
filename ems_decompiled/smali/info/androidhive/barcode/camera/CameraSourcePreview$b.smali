.class public Linfo/androidhive/barcode/camera/CameraSourcePreview$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/androidhive/barcode/camera/CameraSourcePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic c:Linfo/androidhive/barcode/camera/CameraSourcePreview;


# direct methods
.method public constructor <init>(Linfo/androidhive/barcode/camera/CameraSourcePreview;Linfo/androidhive/barcode/camera/CameraSourcePreview$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview$b;->c:Linfo/androidhive/barcode/camera/CameraSourcePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview$b;->c:Linfo/androidhive/barcode/camera/CameraSourcePreview;

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Linfo/androidhive/barcode/camera/CameraSourcePreview;->f:Z

    .line 2
    :try_start_0
    invoke-virtual {p1}, Linfo/androidhive/barcode/camera/CameraSourcePreview;->b()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Could not start camera source."

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "Do not have permission to start the camera"

    :goto_0
    const-string v1, "CameraSourcePreview"

    .line 3
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Linfo/androidhive/barcode/camera/CameraSourcePreview$b;->c:Linfo/androidhive/barcode/camera/CameraSourcePreview;

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p1, Linfo/androidhive/barcode/camera/CameraSourcePreview;->f:Z

    return-void
.end method
