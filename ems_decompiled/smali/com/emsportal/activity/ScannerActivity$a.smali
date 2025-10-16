.class public Lcom/emsportal/activity/ScannerActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/activity/ScannerActivity;->x(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/ScannerActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/ScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/activity/ScannerActivity$a;->c:Lcom/emsportal/activity/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/emsportal/activity/ScannerActivity$a;->c:Lcom/emsportal/activity/ScannerActivity;

    .line 1
    iget-object v0, p1, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 2
    iput-object p1, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->y:Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;

    .line 3
    iget-object p1, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/a/a/a/c;->e()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/emsportal/activity/ScannerActivity$a;->c:Lcom/emsportal/activity/ScannerActivity;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lcom/emsportal/activity/ScannerActivity;->m:Z

    return-void
.end method
