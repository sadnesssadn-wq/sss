.class public Linfo/androidhive/barcode/BarcodeReader$c;
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

    iput-object p1, p0, Linfo/androidhive/barcode/BarcodeReader$c;->c:Linfo/androidhive/barcode/BarcodeReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Linfo/androidhive/barcode/BarcodeReader$c;->c:Linfo/androidhive/barcode/BarcodeReader;

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Linfo/androidhive/barcode/BarcodeReader;->l:Z

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Linfo/androidhive/barcode/BarcodeReader$c;->c:Linfo/androidhive/barcode/BarcodeReader;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "package"

    invoke-static {v1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Linfo/androidhive/barcode/BarcodeReader$c;->c:Linfo/androidhive/barcode/BarcodeReader;

    const/16 v0, 0x66

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
