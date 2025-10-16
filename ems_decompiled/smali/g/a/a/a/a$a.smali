.class public Lg/a/a/a/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/a/a/a/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/hardware/Camera;

.field public final synthetic d:Lg/a/a/a/a;


# direct methods
.method public constructor <init>(Lg/a/a/a/a;Landroid/hardware/Camera;)V
    .locals 0

    iput-object p1, p0, Lg/a/a/a/a$a;->d:Lg/a/a/a/a;

    iput-object p2, p0, Lg/a/a/a/a$a;->c:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lg/a/a/a/a$a;->d:Lg/a/a/a/a;

    iget-object v1, v0, Lg/a/a/a/a;->d:Lg/a/a/a/b;

    .line 1
    iget-object v1, v1, Lg/a/a/a/b;->c:Lme/dm7/barcodescanner/core/BarcodeScannerView;

    .line 2
    iget-object v2, p0, Lg/a/a/a/a$a;->c:Landroid/hardware/Camera;

    iget v0, v0, Lg/a/a/a/a;->c:I

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v3, Lg/a/a/a/d;

    invoke-direct {v3, v2, v0}, Lg/a/a/a/d;-><init>(Landroid/hardware/Camera;I)V

    move-object v0, v3

    .line 4
    :goto_0
    invoke-virtual {v1, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupCameraPreview(Lg/a/a/a/d;)V

    return-void
.end method
