.class public Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emsportal/grab/activity/PolicyServiceGrabActivity$a;
    }
.end annotation


# instance fields
.field public c:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0045

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 2

    new-instance v0, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity$a;

    invoke-direct {v0, p0}, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity$a;-><init>(Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;)V

    const-string v1, "https://bill.ems.com.vn/templates/%C4%90i%E1%BB%81u_kho%E1%BA%A3n_s%E1%BB%AD_d%E1%BB%A5ng_KH_Grab.pdf"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080510

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const v0, 0x7f0801e0

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/PDFView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    const v0, 0x7f1003a6

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    return-void
.end method
