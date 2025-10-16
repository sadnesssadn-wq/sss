.class public Lg/a/a/a/b;
.super Landroid/os/HandlerThread;
.source ""


# instance fields
.field public c:Lme/dm7/barcodescanner/core/BarcodeScannerView;


# direct methods
.method public constructor <init>(Lme/dm7/barcodescanner/core/BarcodeScannerView;)V
    .locals 1

    const-string v0, "CameraHandlerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/a/a/a/b;->c:Lme/dm7/barcodescanner/core/BarcodeScannerView;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method
