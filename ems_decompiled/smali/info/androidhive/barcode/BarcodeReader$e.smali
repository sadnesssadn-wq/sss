.class public Linfo/androidhive/barcode/BarcodeReader$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/androidhive/barcode/BarcodeReader;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Linfo/androidhive/barcode/BarcodeReader;


# direct methods
.method public constructor <init>(Linfo/androidhive/barcode/BarcodeReader;)V
    .locals 0

    iput-object p1, p0, Linfo/androidhive/barcode/BarcodeReader$e;->c:Linfo/androidhive/barcode/BarcodeReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Linfo/androidhive/barcode/BarcodeReader$e;->c:Linfo/androidhive/barcode/BarcodeReader;

    const-string p2, "android.permission.CAMERA"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x65

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
