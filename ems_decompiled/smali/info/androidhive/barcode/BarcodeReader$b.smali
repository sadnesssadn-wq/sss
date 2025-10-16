.class public Linfo/androidhive/barcode/BarcodeReader$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/androidhive/barcode/BarcodeReader;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Linfo/androidhive/barcode/BarcodeReader$b;->c:Linfo/androidhive/barcode/BarcodeReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Linfo/androidhive/barcode/BarcodeReader$b;->c:Linfo/androidhive/barcode/BarcodeReader;

    .line 1
    iget-object p1, p1, Linfo/androidhive/barcode/BarcodeReader;->j:Linfo/androidhive/barcode/BarcodeReader$g;

    .line 2
    invoke-interface {p1}, Linfo/androidhive/barcode/BarcodeReader$g;->e()V

    return-void
.end method
